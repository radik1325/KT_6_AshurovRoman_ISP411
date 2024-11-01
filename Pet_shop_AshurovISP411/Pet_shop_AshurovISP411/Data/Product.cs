//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Pet_shop_AshurovISP411.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.OrderProduct = new HashSet<OrderProduct>();
        }
    
        public int ProductId { get; set; }
        public string ProductArticleNumber { get; set; }
        public int ProductNameId { get; set; }
        public int ProductEdIzm { get; set; }
        public Nullable<decimal> ProductCost { get; set; }
        public Nullable<int> ProductDiscountMax { get; set; }
        public Nullable<int> ProductManufacturerId { get; set; }
        public int ProductSupplierId { get; set; }
        public int PoductCategoryId { get; set; }
        public Nullable<int> ProductDiscountNow { get; set; }
        public int ProductQuantityInStock { get; set; }
        public string ProductOpis { get; set; }
        public string ProductPhotoName { get; set; }
        public byte[] ProductPhoto { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual EdIzm EdIzm { get; set; }
        public virtual Manufacture Manufacture { get; set; }
        public virtual Name Name { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderProduct> OrderProduct { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}
