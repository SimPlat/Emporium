package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Product;
import java.util.List;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

@Repository("productRepo")
public interface ProductRepository extends CrudRepository<Product, Integer> {
    @Query("SELECT product FROM Product product JOIN Category category ON product.category.name=category.name " +
           "WHERE category.name=?1 AND product.retailer IN(?2)")
    List<Product> findProductsByCategoryName(String categoryName, List<String> retailers);

    Product findFirstProductByNameOrderByPrice(@Param("name") String name);
}
