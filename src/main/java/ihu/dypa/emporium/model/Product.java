package ihu.dypa.emporium.model;

import lombok.Getter;
import lombok.NonNull;
import lombok.NoArgsConstructor;
import javax.persistence.*;

@NoArgsConstructor(force=true)
@Entity @Table(name="product", schema="emporium")
public class Product {
    @Id @Column(name="id")
    private final @NonNull Integer id;

    @Column(name="name")
    private final @Getter @NonNull String name;

    @Column(name="display_name")
    private final @Getter @NonNull String displayName;

    @Column(name="brand")
    private final String brand;

    @ManyToOne(fetch = FetchType.EAGER, cascade={CascadeType.ALL} )
    @JoinColumn(name="category", referencedColumnName="name")
    private final @Getter Category category;

    @Column(name="retailer")
    private final @Getter @NonNull String retailer;

    @Column(name="price")
    private final @Getter @NonNull Double price;
}
