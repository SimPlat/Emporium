package ihu.dypa.emporium.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;


import java.util.UUID;


public @Data class Category {
    private final UUID id;
    private final String name;
    private final @JsonProperty("parent") Category parent;
}
