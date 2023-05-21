package com.marin.zavrsniecommerce.service;

import com.marin.zavrsniecommerce.dao.ProductRepository;
import com.marin.zavrsniecommerce.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@Service
@CrossOrigin("http://localhost:4200")
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public Product createNewProduct(Product p) {
        Product saveProduct = productRepository.save(p);
        return saveProduct;
    }


    public Product editProduct(Product p, Long id) {
        Product product = productRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Product not found with id: " + id));
        product.setSku(p.getSku());
        product.setName(p.getName());
        product.setDescription(p.getDescription());
        product.setUnitPrice(p.getUnitPrice());
        product.setImageUrl(p.getImageUrl());
        product.setActive(p.isActive());
        product.setUnitsInStock(p.getUnitsInStock());
        product.setLastUpdated(Date.from(Instant.now()));
        product.setCategory(p.getCategory());

        productRepository.save(product);
        return product;
    }
}
