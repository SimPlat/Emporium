package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Product;

import java.util.Map;
import java.util.Set;

public interface CartRepository {
    void addProducts(Map<Product,Integer> clientCart);
    void removeProduct(Product product);
    Set<Map.Entry<Product, Integer>> getProducts();
}
