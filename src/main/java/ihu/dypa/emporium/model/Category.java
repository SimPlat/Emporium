package ihu.dypa.emporium.model;

import lombok.*;
import javax.persistence.*;

@AllArgsConstructor @NoArgsConstructor
@Entity @Table(name="category", schema="emporium_test")
public class Category {
    @Id @Column(name="id")
    private @Getter Integer id;

    @Column(name="name")
    private @Getter String name;

    @ManyToOne(fetch = FetchType.EAGER, cascade={CascadeType.ALL} )
    @JoinColumn(name="parent_id", referencedColumnName="id")
    private Category parent;
}
