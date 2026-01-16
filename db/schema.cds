namespace djp.developer;

using {Currency} from '@sap/cds/common';

entity Product {
    key ProductId        : String(10);
        Category         : String(40);
        Name             : String(255);
        ShortDescription : String(255);
        SupplierName     : String(80);
        Weight           : Decimal(13, 3);
        WeightUnit       : String(3);
        Price            : Decimal(23, 4);
        Status           : String;
        CurrencyCode     : String(5);
        DimensionWidth   : Decimal(13, 3);
        DimensionDepth   : Decimal(13, 3);
        DimensionHeight  : Decimal(13, 3);
        DimensionUnit    : String(3);
        PictureUrl       : String(255);

        ProductCategory  : Association to ProductCategory
                               on ProductCategory.Category = Category;

        FeaturedProduct  : Association to FeaturedProduct
                               on FeaturedProduct.Product = $self;
}

entity ProductCategory {
    key Category         : String(40);
        CategoryName     : String;
        NumberOfProducts : Integer;

        Products         : Association to many Product
                               on Products.Category = Category;
}

entity FeaturedProduct {
    key Product : Association to Product;
        Type    : String(255);
}
