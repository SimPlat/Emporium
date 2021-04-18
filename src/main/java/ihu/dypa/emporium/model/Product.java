package ihu.dypa.emporium.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import javax.persistence.*;

@AllArgsConstructor @NoArgsConstructor
@Entity @Table(name="product", schema="emporium_test")
public class Product {
    @Id @Column(name="id")
    private @Getter Integer id;

    @Column(name="name")
    private @Getter String name;

    @Column(name="brand")
    private @Getter String brand;

    @ManyToOne(fetch = FetchType.EAGER, cascade={CascadeType.ALL} )
    @JoinColumn(name="category", referencedColumnName="id")
    private Category category;

    @Column(name="retailer")
    private @Getter String retailer;

    @Column(name="price")
    private @Getter Double price;

}
