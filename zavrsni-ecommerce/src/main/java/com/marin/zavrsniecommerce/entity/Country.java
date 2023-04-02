package com.marin.zavrsniecommerce.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;
import java.util.Set;

@Entity
@Table(name="countries")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name="name")
    private String name;

    @Column(name = "iso3")
    private String iso3;

    @Column(name="numeric_code")
    private Integer numericCode;

    @Column(name = "iso2")
    private String iso2;

    @Column(name = "phonecode")
    private String phoneCode;

    @Column(name = "capital")
    private String capital;

    @Column(name = "currency")
    private String currency;

    @Column(name = "currency_name")
    private String currencyName;

    @Column(name = "region")
    private String region;

    @Column(name = "subregion")
    private String subregion;

    @OneToMany(mappedBy = "country")
    private List<State> states;
}
