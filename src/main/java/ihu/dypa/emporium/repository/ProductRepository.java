package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Category;
import ihu.dypa.emporium.model.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("productRepo")
public interface ProductRepository extends CrudRepository<Category, Integer> {
    @Query("SELECT product FROM Product product JOIN Category category ON product.category.id=category.id WHERE category.name=?1")
    List<Product> findAllProductsByCategoryName(String categoryName);

}
