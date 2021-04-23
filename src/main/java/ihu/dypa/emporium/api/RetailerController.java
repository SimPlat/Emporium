package ihu.dypa.emporium.api;

import ihu.dypa.emporium.model.Retailer;
import ihu.dypa.emporium.service.RetailerService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.session.jdbc.config.annotation.web.http.EnableJdbcHttpSession;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@RestController @RequestMapping("/api/retailers")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class RetailerController {

    @PostMapping(consumes="application/Json")
    public ResponseEntity<List<Retailer>> addRetailers(@RequestBody List<Retailer> retailersList, HttpServletRequest request){
        List<Retailer> activeRetailers = (List<Retailer>) request.getSession().getAttribute("ACTIVE_RETAILERS");
        if(activeRetailers == null){
            activeRetailers = new ArrayList<>();
            request.setAttribute("ACTIVE_RETAILERS", activeRetailers);
        }
        activeRetailers.addAll(retailersList);
        request.setAttribute("ACTIVE_RETAILERS", activeRetailers);
        return new ResponseEntity<List<Retailer>>(activeRetailers, HttpStatus.OK);
    }

    @GetMapping(produces="application/Json")
    public ResponseEntity<List<Retailer>> getRetailers(HttpServletRequest request){
        List<Retailer> activeRetailers = (List<Retailer>) request.getSession().getAttribute("ACTIVE_RETAILERS");

        return new ResponseEntity<List<Retailer>>(activeRetailers, HttpStatus.OK);
    }
}

