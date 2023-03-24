package com.marin.zavrsniecommerce.controller;

import com.marin.zavrsniecommerce.entity.Product;
import com.marin.zavrsniecommerce.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
@CrossOrigin("http://localhost:4200")
public class ProductController {


    @Autowired
    private ProductService productService;

    @PostMapping("/add-product")
    public Product createNewProduct(@RequestBody Product p){
        return productService.createNewProduct(p);
    }
}
