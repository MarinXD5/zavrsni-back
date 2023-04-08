package com.marin.zavrsniecommerce.dto;

import com.marin.zavrsniecommerce.entity.Address;
import com.marin.zavrsniecommerce.entity.Customer;
import com.marin.zavrsniecommerce.entity.Order;
import com.marin.zavrsniecommerce.entity.OrderItem;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
