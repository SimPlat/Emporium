package ihu.dypa.emporium.service;

import ihu.dypa.emporium.model.Category;
import ihu.dypa.emporium.repository.CategoryRepository;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

@Service
public class CategoryService {
    private final CategoryRepository categoryRepository;

    @Autowired
    public CategoryService(@Qualifier("categoryRepo") CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> getChildCategories(String parentName){
        return categoryRepository.findAllChildren(parentName);
    }

    public List<Category> getParentCategories(){
        return categoryRepository.findAllParents();
    }

}
