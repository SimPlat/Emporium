package ihu.dypa.emporium.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import org.springframework.boot.context.properties.bind.Name;

import javax.persistence.*;

@Entity
@Table(name="category", schema="emporium_test")
@AllArgsConstructor
@NoArgsConstructor
public class Category {
    @Id
    @Column(name="id")
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="parent", referencedColumnName = "id", nullable = true)
    private @JsonProperty("parent") Category parent;

    @Column(name="name")
    private String name;
}
