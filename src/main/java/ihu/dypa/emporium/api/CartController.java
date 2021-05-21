package ihu.dypa.emporium.api;

import java.util.*;

import ihu.dypa.emporium.model.Product;
import ihu.dypa.emporium.service.CartService;
import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.apache.commons.lang3.tuple.Pair;

@SuppressWarnings("unchecked")
@RestController @RequestMapping("/api/cart")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class CartController {
    private final CartService cartService;

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

    @GetMapping(path="/result")
    public ResponseEntity<Map<List<String>,Integer>> getResults(){
        Map<List<String>,Integer> result = new HashMap<>();

        cartService.getResult().forEach((product,quantity) -> {
            List<String> list = new ArrayList<>();
            list.add(product.getName());
            list.add(product.getDisplayName());
            list.add(product.getRetailer());
            list.add(product.getPrice().toString());
            result.put(list,quantity);
        });

        return new ResponseEntity<>(result,HttpStatus.OK);
    }

}
