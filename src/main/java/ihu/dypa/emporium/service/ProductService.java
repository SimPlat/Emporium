package ihu.dypa.emporium.service;

import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.model.Retailer;
import ihu.dypa.emporium.repository.ProductRepository;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import javax.servlet.http.HttpServletRequest;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    @Autowired
    public ProductService(@Qualifier("productRepo") ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getProductsOfCategory(String categoryName, HttpServletRequest request){
        // Get session's active Retailers and transform the Retailer list to Retailer Name String list.
        List<String> activeRetailerNames = ((List<Retailer>) request.getSession().getAttribute("ACTIVE_RETAILERS")).stream().map(Retailer::getName).collect(Collectors.toList());
        return productRepository.findAllProductsByCategoryName(categoryName, activeRetailerNames);
    }

}
