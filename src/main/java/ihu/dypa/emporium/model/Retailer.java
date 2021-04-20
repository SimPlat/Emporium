package ihu.dypa.emporium.model;

import lombok.*;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.context.annotation.Configuration;

@Configuration
@NoArgsConstructor(force=true)
@RequiredArgsConstructor
public class Retailer {
    @JsonProperty("retailerName")
    private final @Getter @NonNull String name;
}
