package com.marin.zavrsniecommerce.service;

import com.marin.zavrsniecommerce.dao.CustomerRepository;
import com.marin.zavrsniecommerce.dto.PaymentInfo;
import com.marin.zavrsniecommerce.dto.Purchase;
import com.marin.zavrsniecommerce.dto.PurchaseResponse;
import com.marin.zavrsniecommerce.entity.Customer;
import com.marin.zavrsniecommerce.entity.Order;
import com.marin.zavrsniecommerce.entity.OrderItem;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
public class CheckoutService {

    @Autowired
    private CustomerRepository customerRepository;

    public CheckoutService(@Value("${stripe.key.secret}")String secretKey){
        Stripe.apiKey = secretKey;
    }

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

    public PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException{
        List<String> paymentMethodTypes = new ArrayList<>();
        paymentMethodTypes.add("card");

        Map<String, Object> params = new HashMap<>();
        params.put("amount", paymentInfo.getAmount());
        params.put("currency", paymentInfo.getCurrency());
        params.put("payment_method_types", paymentMethodTypes);
        params.put("receipt_email", paymentInfo.getReceiptEmail());

        return PaymentIntent.create(params);
    }
}
