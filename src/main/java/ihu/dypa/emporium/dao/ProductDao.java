package ihu.dypa.emporium.dao;

import ihu.dypa.emporium.model.Product;

public interface ProductDao {
    Product getProduct(String name, String retailer);
}
