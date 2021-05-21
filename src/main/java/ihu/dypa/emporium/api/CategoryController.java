package ihu.dypa.emporium.api;

import ihu.dypa.emporium.model.Category;
import ihu.dypa.emporium.service.CategoryService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

@RestController @RequestMapping("/api/categories")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class CategoryController {
    private final CategoryService categoryService;

    @GetMapping(path="{parentName}")
    public ResponseEntity<List<Category>> getChildCategories(@PathVariable String parentName){
        return new ResponseEntity<>(categoryService.getChildCategories(parentName), HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<List<Category>> getParentCategories(){
        return new ResponseEntity<>(categoryService.getParentCategories(),HttpStatus.OK);
    }
}
