using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Pet_shop_AshurovISP411.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
       
        public AuthorizationPage()
        {
            InitializeComponent();
            
        }

        private void VxodButoon_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder error = new StringBuilder();

            if (LoginBox.Text == "")
            {
                error.AppendLine("Введите логин");
            }
            if (ParolBox.Password == "")
            {
                error.AppendLine("Введите пароль");
            }
            if (error.Length > 0)
            {
                MessageBox.Show(error.ToString(), "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            
            if (Data.Pet_ShopEntities.GetContext().User.Any(d => d.UserLogin == LoginBox.Text && d.UserPassword == ParolBox.Password))
            {
                var searchRole = Data.Pet_ShopEntities.GetContext().User.
                    Where(d => d.UserLogin == LoginBox.Text && d.UserPassword == ParolBox.Password).FirstOrDefault();
                switch (searchRole.Role.RoleName){
                    case "Администратор":
                        MessageBox.Show("Вы вошли как Администратор", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                        Classes.Manager.MainFrame.Navigate(new Pages.AdminPage(searchRole.UserID));
                        break;
                    case "Клиент":
                        MessageBox.Show("Вы вошли как Клиент", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                        Classes.Manager.MainFrame.Navigate(new Pages.ProductView(searchRole.UserID));
                        break;
                    case "Менеджер":
                        MessageBox.Show( "Вы вошли как Менеджер", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                        Classes.Manager.MainFrame.Navigate(new Pages.ProductView(searchRole.UserID));
                        break;
                }
                
            }
            else
            {
                MessageBox.Show("Пользователя не существует", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                
            }

        }
    }
}
