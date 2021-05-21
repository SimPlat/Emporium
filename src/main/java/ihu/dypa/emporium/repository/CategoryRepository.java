package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Category;
import java.util.List;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

@Repository("categoryRepo")
public interface CategoryRepository extends CrudRepository<Category, Integer> {
    List<Category> findCategoryByParent_Name(@Param("parent_name") String parentName);

    List<Category> findCategoryByParentNull();
}
