package com.marin.zavrsniecommerce.controller;

import com.marin.zavrsniecommerce.dto.Purchase;
import com.marin.zavrsniecommerce.dto.PurchaseResponse;
import com.marin.zavrsniecommerce.service.CheckoutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin("http://localhost:4200")
@RestController
@RequestMapping("/api/checkout")
public class CheckoutController {

    @Autowired
    private CheckoutService checkoutService;

    @PostMapping("/purchase")
    private PurchaseResponse placeOrder(@RequestBody Purchase purchase){
        return checkoutService.placeOrder(purchase);
    }
}
