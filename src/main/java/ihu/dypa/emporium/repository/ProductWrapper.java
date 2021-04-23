package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Product;
import org.springframework.stereotype.Repository;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

@Repository("productWrapper")
public class ProductWrapper implements CartRepository{
    private final Map<Product, Integer> cart = new HashMap<>();

    @Override
    public void addProducts(Map<Product, Integer> clientCart) {
        cart.putAll(clientCart);
    }

    @Override
    public void removeProduct(Product product) {
        cart.remove(product);
    }

    @Override
    public Set<Map.Entry<Product, Integer>> getProducts() {
        return cart.entrySet();
    }
}
