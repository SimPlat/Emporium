package ihu.dypa.emporium.service;

import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("unchecked")
@Service
public class CartService {
    private final ProductRepository productRepository;
    private final HttpServletRequest request;

    @Autowired
    public CartService(@Qualifier("productRepo") ProductRepository productRepository, HttpServletRequest request) {
        this.productRepository = productRepository;
        this.request = request;
    }

    public Map<Product,Integer> getResult(){
        Map<Product,Integer> cartProducts = new HashMap<>();
        Map<String,Integer> productNames = (Map<String,Integer>) request.getSession().getAttribute("CART");

        for(Map.Entry<String,Integer> entry : productNames.entrySet()) {
            cartProducts.put(productRepository.findFirstProductByNameOrderByPrice(entry.getKey()),entry.getValue());
        }

        return cartProducts;
    }

}