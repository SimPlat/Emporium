package ihu.dypa.emporium.dao;

import ihu.dypa.emporium.model.Category;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository("categoryDao")
public class CategoryDataAccessService implements CategoryDao{

    @Override
    public Category getCategory(String name) {
        return new Category(2, "test", null);
    }
}
