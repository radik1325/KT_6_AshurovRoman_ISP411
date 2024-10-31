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
    /// Логика взаимодействия для AddEditPAge.xaml
    /// </summary>
    public partial class AddEditPAge : Page
    {
        public AddEditPAge()
        {
            InitializeComponent();
        }

        private void BackButtot_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AdminPage());
        }
    }
}
