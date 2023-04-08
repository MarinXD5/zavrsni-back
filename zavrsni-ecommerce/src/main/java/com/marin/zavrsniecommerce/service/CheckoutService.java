package com.marin.zavrsniecommerce.service;

import com.marin.zavrsniecommerce.dao.CustomerRepository;
import com.marin.zavrsniecommerce.dto.Purchase;
import com.marin.zavrsniecommerce.dto.PurchaseResponse;
import com.marin.zavrsniecommerce.entity.Customer;
import com.marin.zavrsniecommerce.entity.Order;
import com.marin.zavrsniecommerce.entity.OrderItem;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Set;
import java.util.UUID;

@Service
public class CheckoutService {

    @Autowired
    private CustomerRepository customerRepository;

    @Transactional
    public PurchaseResponse placeOrder(@NotNull Purchase purchase){

        Order order = purchase.getOrder();

        String orderTrackingNumber = generateOrderTrackingNumber();
        order.setOrderTrackingNumber(orderTrackingNumber);

        Set<OrderItem> orderItems = purchase.getOrderItems();

        orderItems.forEach(item -> order.add(item));

        order.setBillingAddress(purchase.getBillingAddress());
        order.setShippingAddress(purchase.getShippingAddress());

        Customer customer = purchase.getCustomer();
        customer.add(order);

        customerRepository.save(customer);

        return new PurchaseResponse(orderTrackingNumber);
    }

    private String generateOrderTrackingNumber() {
        return UUID.randomUUID().toString();
    }
}
