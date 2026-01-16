using djp.developer as db from '../db/schema';

service Service {

    @readonly
    entity Products          as projection on db.Product;

    @readonly
    entity ProductCategories as projection on db.ProductCategory;

    @readonly
    entity FeaturedProducts  as projection on db.FeaturedProduct;
}
