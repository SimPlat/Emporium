package ihu.dypa.emporium.service;

import ihu.dypa.emporium.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class CartService {
    private final ProductRepository productRepository;
    private final HttpServletRequest request;

    @Autowired
    public CartService(@Qualifier("productRepo") ProductRepository productRepository, HttpServletRequest request) {
        this.productRepository = productRepository;
        this.request = request;
    }



}
