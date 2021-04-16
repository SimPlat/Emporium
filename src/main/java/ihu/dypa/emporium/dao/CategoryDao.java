package ihu.dypa.emporium.dao;

import ihu.dypa.emporium.model.Category;

public interface CategoryDao {
    Category getCategory(String parent);

}
