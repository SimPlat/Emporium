package ihu.dypa.emporium.service;

import ihu.dypa.emporium.dao.CategoryDao;
import ihu.dypa.emporium.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
    private final CategoryDao categoryDao;

    @Autowired
    public CategoryService(@Qualifier("categoryDao") CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    public Category getCategory(String parent){
        return categoryDao.getCategory(parent);
    }

}
