package ihu.dypa.emporium.api;

import ihu.dypa.emporium.model.Retailer;
import ihu.dypa.emporium.service.RetailerService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

@RestController @RequestMapping("/api/retailers")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class RetailerController {
    private final RetailerService retailerService;

    @PostMapping(consumes="application/Json")
    public void addRetailers(@RequestBody List<Retailer> retailersList){
        retailerService.addRetailers(retailersList);
    }

    @GetMapping(path="")
    public List<Retailer> getRetailers(){
        return retailerService.getRetailers();
    }
}

