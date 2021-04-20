package ihu.dypa.emporium.repository;

import ihu.dypa.emporium.model.Retailer;
import lombok.Getter;
import java.util.List;
import java.util.ArrayList;
import org.springframework.stereotype.Repository;

@Repository("retailerWrapper")
public class RetailerWrapper implements RetailerRepository{
    private final @Getter List<Retailer> retailersList = new ArrayList<>();

    @Override
    public void addRetailers(List<Retailer> newRetailersList){
        List<Retailer> duplicateRetailers = new ArrayList<>();
        for(Retailer newRetailer : newRetailersList){
            for(Retailer retailer : retailersList ){
                if (newRetailer.getName().equals(retailer.getName())) duplicateRetailers.add(newRetailer);
            }
        }
        newRetailersList.removeAll(duplicateRetailers);
        retailersList.addAll(newRetailersList);
    }

    @Override
    public List<Retailer> getRetailers() {
        return retailersList;
    }
}
