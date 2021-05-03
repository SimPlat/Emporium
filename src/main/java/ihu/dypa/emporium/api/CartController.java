package ihu.dypa.emporium.api;

import ihu.dypa.emporium.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController @RequestMapping("/api/cart")
@RequiredArgsConstructor(onConstructor=@__({@Autowired}))
public class CartController {
    private final CartService cartService;

    /*
    @PostMapping
    public void addProducts(@RequestBody Map<String, Integer> clientCart){
        cartService.addProducts(clientCart);
    }
*/
}
