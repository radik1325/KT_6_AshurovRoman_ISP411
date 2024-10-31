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
    /// Логика взаимодействия для AdminPage.xaml
    /// </summary>
    public partial class AdminPage : Page
    {
        public AdminPage()
        {
            InitializeComponent();
            ViewProduct.ItemsSource = Data.Pet_ShopEntities.GetContext().Product.ToList();
            

            var ManufactList = Data.Pet_ShopEntities.GetContext().Manufacture.ToList();

            ManufactList.Insert(0, new Data.Manufacture { ManufactureName = "Все производители" });
            ManufactureBox.ItemsSource = ManufactList;

        }

        private List<Data.Product> _UpdateProduct = Data.Pet_ShopEntities.GetContext().Product.ToList();
        
        private void Update()
        {
            _UpdateProduct = Data.Pet_ShopEntities.GetContext().Product.ToList();

            _UpdateProduct = (from item in Data.Pet_ShopEntities.GetContext().Product
               where item.ProductOpis.ToLower().Contains(SearchText.Text)||
               item.Name.NameName.ToLower().Contains(SearchText.Text) ||
               item.EdIzm.EdIzmName.ToLower().Contains(SearchText.Text)||
               item.ProductCost.ToString().Contains(SearchText.Text)||
               item.Manufacture.ManufactureName.ToLower().Contains(SearchText.Text)||
               item.Supplier.SupplierName.ToLower().Contains(SearchText.Text) ||
               item.Category.CategoryName.ToLower().Contains(SearchText.Text) ||
               item.ProductQuantityInStock.ToString().Contains(SearchText.Text) 
                              select item).ToList();

            if (ManufactureBox.SelectedIndex != -1 && ManufactureBox.SelectedIndex != 0)
            {
                _UpdateProduct = _UpdateProduct.Where(d => d.Manufacture.ManufactureId == ManufactureBox.SelectedIndex ).ToList();
            }
           

            if (OrderByButton.IsChecked == true)
            {
                _UpdateProduct = _UpdateProduct.OrderBy(d => d.ProductCost).ToList();
            }

            if(OrderBydescButton.IsChecked == true)
            {
                _UpdateProduct = _UpdateProduct.OrderByDescending(d => d.ProductCost).ToList();
            }

            

            ViewProduct.ItemsSource = _UpdateProduct;
        }

        private void OrderBydescButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void OrderByButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AuthorizationPage());
        }

        private void AddProdButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPAge());
        }

        private void ManufactureBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void SearchText_SelectionChanged(object sender, RoutedEventArgs e)
        {
            Update();
        }
    }
}
