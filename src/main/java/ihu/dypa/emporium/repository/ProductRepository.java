package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Category;
import ihu.dypa.emporium.model.Product;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

@Repository("productRepo")
public interface ProductRepository extends CrudRepository<Category, Integer> {
    @Query("SELECT product FROM Product product JOIN Category category ON product.category.id=category.id " +
           "WHERE category.name=?1 AND product.retailer IN(?2)")
    List<Product> findAllProductsByCategoryName(String categoryName, List<String> retailers);

    @Query("SELECT product FROM Product product WHERE product.name=?1")
    List<Product> findAllProductsByName(String name);
}
