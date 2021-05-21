package ihu.dypa.emporium.api;

import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.service.ProductService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController @RequestMapping("/api/products")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class ProductController {
    private final ProductService productService;

    @GetMapping(path="{categoryName}")
    public ResponseEntity<List<Product>> getProductsOfCategory(@PathVariable String categoryName){
        return new ResponseEntity<>(productService.getProductsOfCategory(categoryName),HttpStatus.OK);
    }
}
