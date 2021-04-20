package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Retailer;
import java.util.List;

public interface RetailerRepository {
    void addRetailers(List<Retailer> retailerList);
    List<Retailer> getRetailers();
}
