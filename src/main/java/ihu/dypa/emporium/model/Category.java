package ihu.dypa.emporium.model;

import lombok.*;
import javax.persistence.*;

@AllArgsConstructor @NoArgsConstructor(force=true)
@Entity @Table(name="category", schema="emporium")
public class Category {
    @Id @Column(name="id")
    private final @Getter @NonNull Integer id;

    @Column(name="name")
    private final @Getter @NonNull String name;

    @ManyToOne(fetch = FetchType.EAGER, cascade={CascadeType.ALL} )
    @JoinColumn(name="parent_name", referencedColumnName="name")
    private final @Getter Category parent;
}
