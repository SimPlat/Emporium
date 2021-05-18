package ihu.dypa.emporium.api;

import ihu.dypa.emporium.model.Category;
import ihu.dypa.emporium.service.CategoryService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

@CrossOrigin
@RestController @RequestMapping("/api/categories")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class CategoryController {
    private final CategoryService categoryService;

    @GetMapping(path="{parentName}")
    public List<Category> getChildCategories(@PathVariable String parentName){
        return categoryService.getChildCategories(parentName);
    }

    @GetMapping
    public List<Category> getParentCategories(){
        return categoryService.getParentCategories();
    }
}
