package ihu.dypa.emporium.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;


import javax.persistence.*;

@Entity
@Table(name="category", schema="emporium")
@RequiredArgsConstructor
@NoArgsConstructor
public class Category {
    @Id
    @Column(name="id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name="id", nullable = true)
    private @JsonProperty("parent") Category parent;

    private String name;
}
