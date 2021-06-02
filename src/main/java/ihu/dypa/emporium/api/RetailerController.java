package ihu.dypa.emporium.api;

import ihu.dypa.emporium.model.Retailer;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import javax.lang.model.util.Elements;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@SuppressWarnings("unchecked")
@RestController @RequestMapping("/api/retailers")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class RetailerController {

    //@CrossOrigin(allowCredentials="true", origins="http://57632d1796e8.ngrok.io")
    @PostMapping(consumes="application/Json")
    public ResponseEntity<List<Retailer>> addRetailers(@RequestBody List<Retailer> newRetailersList, HttpServletRequest request){
        List<Retailer> activeRetailers = (List<Retailer>) request.getSession().getAttribute("ACTIVE_RETAILERS");
        List<Retailer> duplicateRetailers = new ArrayList<>();

        if(activeRetailers == null) activeRetailers = new ArrayList<>();

        for(Retailer newRetailer : newRetailersList){
            for(Retailer activeRetailer : activeRetailers){
                if (newRetailer.getName().equals(activeRetailer.getName())) duplicateRetailers.add(newRetailer);
            }
        }

        newRetailersList.removeAll(duplicateRetailers);
        activeRetailers.addAll(newRetailersList);

        request.getSession().setAttribute("ACTIVE_RETAILERS", activeRetailers);

        return new ResponseEntity<>(activeRetailers, HttpStatus.CREATED);
    }

    //@CrossOrigin(allowCredentials="true", origins="https://6440062f4929.ngrok.io/")
    @GetMapping
    public ResponseEntity<List<Retailer>> getRetailers(HttpServletRequest request){
        List<Retailer> activeRetailers = (List<Retailer>) request.getSession().getAttribute("ACTIVE_RETAILERS");

        return new ResponseEntity<>(activeRetailers, HttpStatus.OK);
    }
}

