package ihu.dypa.emporium.model;

import lombok.*;
import javax.persistence.*;
import java.io.Serializable;

@NoArgsConstructor(force=true)
@Entity @Table(name="category", schema="emporium")
public class Category implements Serializable {
    @Id @Column(name="id")
    private final @NonNull Integer id;

    @Column(name="name")
    private final @Getter @NonNull String name;

    @Column(name="display_name")
    private final @Getter @NonNull String displayName;

    @ManyToOne(fetch = FetchType.EAGER, cascade={CascadeType.ALL} )
    @JoinColumn(name="parent_name", referencedColumnName="name")
    private final @Getter Category parent;
}
