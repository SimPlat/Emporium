package ihu.dypa.emporium.api;

import java.util.Map;
import java.util.HashMap;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

@SuppressWarnings("unchecked")
@CrossOrigin
@RestController @RequestMapping("/api/cart")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class CartController {

    @PostMapping(consumes="application/Json")
    public ResponseEntity<Map<String,Integer>> addProducts(@RequestBody Map<String,Integer> newProducts, HttpServletRequest request){
        Map<String,Integer> cart = (Map<String,Integer>) request.getSession().getAttribute("CART");

        if(cart == null) cart = new HashMap<>();
        cart.putAll(newProducts);
        request.getSession().setAttribute("CART", cart);

        return new ResponseEntity<>(cart, HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<Map<String,Integer>> getProducts(HttpServletRequest request){
        Map<String,Integer> cart = (Map<String,Integer>) request.getSession().getAttribute("CART");

        return new ResponseEntity<>(cart, HttpStatus.OK);
    }

}
