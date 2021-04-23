package ihu.dypa.emporium.model;

import lombok.*;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.context.annotation.Configuration;

@Configuration
@NoArgsConstructor(force=true) @AllArgsConstructor
public class Retailer implements Serializable {
    @JsonProperty("retailerName")
    private final @Getter @NonNull String name;
}