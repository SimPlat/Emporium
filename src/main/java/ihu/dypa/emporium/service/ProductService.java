package ihu.dypa.emporium.service;

import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.model.Retailer;
import ihu.dypa.emporium.repository.ProductRepository;
import ihu.dypa.emporium.repository.RetailerRepository;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final RetailerRepository retailerRepository;

    @Autowired
    public ProductService(@Qualifier("productRepo") ProductRepository productRepository,
                          @Qualifier("retailerWrapper") RetailerRepository retailerRepository) {
        this.productRepository = productRepository;
        this.retailerRepository = retailerRepository;
    }

    public List<Product> getProductsOfCategory(String categoryName){
        List<String> retailerNames = retailerRepository.getRetailers().stream().map(Retailer::getName).collect(Collectors.toList());
        return productRepository.findAllProductsByCategoryName(categoryName, retailerNames);
    }

}
