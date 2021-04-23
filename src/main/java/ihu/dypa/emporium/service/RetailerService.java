package ihu.dypa.emporium.service;

import ihu.dypa.emporium.model.Retailer;
import ihu.dypa.emporium.repository.RetailerRepository;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Autowired;

@Service
public class RetailerService {
    private final RetailerRepository retailerRepository;

    @Autowired
    public RetailerService(@Qualifier("retailerWrapper") RetailerRepository retailerRepository) {
        this.retailerRepository = retailerRepository;
    }

    public void addRetailers(List<Retailer> retailerList){
        retailerRepository.addRetailers(retailerList);
    }

    public List<Retailer> getRetailers(){
        return retailerRepository.getRetailers();
    }
}
