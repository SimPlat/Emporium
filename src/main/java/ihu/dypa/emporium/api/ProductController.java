package ihu.dypa.emporium.api;

import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.service.ProductService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController @RequestMapping("/api/products")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class ProductController {
    private final ProductService productService;

    @GetMapping(path="{categoryName}")
    public List<Product> getProductsOfCategory(@PathVariable String categoryName){
        return productService.getProductsOfCategory(categoryName);
    }
}
