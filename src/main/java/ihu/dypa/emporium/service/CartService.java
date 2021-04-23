package ihu.dypa.emporium.service;

import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.repository.CartRepository;
import ihu.dypa.emporium.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
public class CartService {
    private final CartRepository cartRepository;
    private final ProductRepository productRepository;

    @Autowired
    public CartService(@Qualifier("productWrapper") CartRepository cartRepository,
                       @Qualifier("productRepo") ProductRepository productRepository){
        this.cartRepository = cartRepository;
        this.productRepository = productRepository;
    }
/*
    public void addProducts(Map<String, Integer> clientCart){
        List<Product> productsList = new ArrayList<>();
        clientCart.forEach((k,v) -> { productsList.add(new Product())});
        cartRepository.addProducts();
    }
*/
    public void  removeProduct(Product product){
        cartRepository.removeProduct(product);
    }

    public Set<Map.Entry<Product, Integer>> getProducts(){
        return cartRepository.getProducts();
    }

}
