package ihu.dypa.emporium.model;

import lombok.Data;
import java.util.UUID;

public @Data class Product {
    private final UUID id;
    private final String name;
    private final String brand;
    private final Category category;
    private final String retailer;
    private final double price;
}
