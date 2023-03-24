package com.marin.zavrsniecommerce.service;

import com.marin.zavrsniecommerce.dao.ProductRepository;
import com.marin.zavrsniecommerce.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

@Service
@CrossOrigin("http://localhost:4200")
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public Product createNewProduct(Product p) {
        Product saveProduct = productRepository.save(p);
        return saveProduct;
    }
}
