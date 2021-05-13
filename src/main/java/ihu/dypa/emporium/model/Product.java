package ihu.dypa.emporium.model;

import lombok.Getter;
import lombok.NonNull;
import lombok.NoArgsConstructor;
import javax.persistence.*;

@NoArgsConstructor(force=true)
@Entity @Table(name="product", schema="emporium")
public class Product {
    @Id @Column(name="id")
    private final @Getter @NonNull Integer id;

    @Column(name="name")
    private final @Getter @NonNull String name;

    @Column(name="brand")
    private final @Getter @NonNull String brand;

    @ManyToOne(fetch = FetchType.EAGER, cascade={CascadeType.ALL} )
    @JoinColumn(name="category", referencedColumnName="name")
    private final Category category;

    @Column(name="retailer")
    private final @Getter @NonNull String retailer;

    @Column(name="price")
    private final @Getter @NonNull Double price;

}
