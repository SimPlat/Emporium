package ihu.dypa.emporium.api;


import ihu.dypa.emporium.model.Category;
import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.service.CategoryService;
import ihu.dypa.emporium.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController @RequestMapping("/api/products")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class ProductController {
    private final ProductService productService;

    @GetMapping(path="{categoryName}")
    public List<Product> getAllProducts(@PathVariable String categoryName){
        return productService.getProductsOfCategory(categoryName);
    }

}
