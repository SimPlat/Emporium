package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Category;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

@Repository("categoryRepo")
public interface CategoryRepository extends CrudRepository<Category, Integer> {
    @Query("SELECT child FROM Category child JOIN Category parent ON parent.id=child.parent.id WHERE parent.name=?1")
    List<Category> findAllChildren(String parentName);

    @Query("SELECT category FROM Category category WHERE category.parent IS NULL")
    List<Category> findAllParents();
}
