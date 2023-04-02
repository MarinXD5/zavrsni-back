package com.marin.zavrsniecommerce.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "states")
public class State {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @Column(name="name")
    private String name;

    @ManyToOne
    @JoinColumn(name="country_id", nullable = false)
    private Country country;

    @Column(name="country_code")
    private String countryCode;

    @Column(name="fips_code")
    private Integer fipsCode;

    @Column(name="iso2")
    private String iso2;
}
