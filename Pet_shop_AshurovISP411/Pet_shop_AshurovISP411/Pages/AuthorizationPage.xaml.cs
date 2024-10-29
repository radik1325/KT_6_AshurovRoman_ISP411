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
            LoginBox.Text = "pixil59@gmail.com";
            ParolBox.Password = "2L6KZG";
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
                        MessageBox.Show("Админ", "Админ", MessageBoxButton.OK, MessageBoxImage.Error);
                        Classes.Manager.MainFrame.Navigate(new Pages.AdminPage());
                        break;
                    case "Клиент":
                        MessageBox.Show("Клиент", "Клиент", MessageBoxButton.OK, MessageBoxImage.Error);
                        break;
                    case "Менеджер":
                        MessageBox.Show("Мен", "Мен", MessageBoxButton.OK, MessageBoxImage.Error);
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
