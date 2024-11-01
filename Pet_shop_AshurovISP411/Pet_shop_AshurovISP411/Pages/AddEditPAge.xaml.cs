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
        public static string flag;
        public Data.Product _CurrentProduct = new Data.Product();
        public static int IdUser1;
        public AddEditPAge(Data.Product _UpdateProduct,int IdUser)
        {
            IdUser1 = IdUser;
            InitializeComponent();
            if(_UpdateProduct != null)
            {
                flag = "Edit";
                _CurrentProduct = _UpdateProduct;
            }
            else
            {
                flag = "add";

            }
            DataContext = _CurrentProduct;
            Init();
        }
        private void Init()
        {
            CategoryBox.ItemsSource = Data.Pet_ShopEntities.GetContext().Category.ToList();
            if (flag == "add")
            {
                IdBox.Text = Data.Pet_ShopEntities.GetContext().Product.Max(d => d.ProductId + 1).ToString();
            }
            if (flag == "Edit")
            {
                var searcID = Data.Pet_ShopEntities.GetContext().Product.Where(d => d.ProductId == _CurrentProduct.ProductId).FirstOrDefault();
                IdBox.Text = searcID.ProductId.ToString();
                NameBox.Text = _CurrentProduct.Name.NameName;
                
                CategoryBox.SelectedIndex = _CurrentProduct.Category.CategoryId-1;
                QuintityBox.Text = _CurrentProduct.ProductQuantityInStock.ToString();
                EdizmBox.Text = _CurrentProduct.EdIzm.EdIzmName;
                SupplierBox.Text = _CurrentProduct.Supplier.SupplierName;
                CostBox.Text = _CurrentProduct.ProductCost.ToString();
                OpisBox.Text = _CurrentProduct.ProductOpis;
            }

        }

        private void BackButtot_Click(object sender, RoutedEventArgs e)
        {
            
            Classes.Manager.MainFrame.Navigate(new Pages.AdminPage(IdUser1));
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Не доделал :(", "Erorr", MessageBoxButton.OK, MessageBoxImage.Information);
            return;
            bool searchName = Data.Pet_ShopEntities.GetContext().Name.Any(d => d.NameName == NameBox.Text);
            if (searchName == false)
            {
                _CurrentProduct.Name.NameName = NameBox.Text;
            }
            _CurrentProduct.ProductNameId = Data.Pet_ShopEntities.GetContext().Name.Max(d => d.NameId + 1);
            int dg = CategoryBox.SelectedIndex + 1;
            _CurrentProduct.PoductCategoryId = CategoryBox.SelectedIndex + 1;
            
            if (flag == "Edit")
            {
                Data.Pet_ShopEntities.GetContext().SaveChanges();
                MessageBox.Show("Успех", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
    }
}
