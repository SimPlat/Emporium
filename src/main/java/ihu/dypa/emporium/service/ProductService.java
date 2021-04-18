package ihu.dypa.emporium.service;

import java.util.List;

import ihu.dypa.emporium.model.Product;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import ihu.dypa.emporium.model.Category;
import ihu.dypa.emporium.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    @Autowired
    public ProductService(@Qualifier("productRepo") ProductRepository productRepository) {
        this.productRepository = productRepository;
    }
    public List<Product> getProductsOfCategory(String categoryName){
        return productRepository.findAllProductsByCategoryName(categoryName);
    }

}
