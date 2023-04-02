package com.marin.zavrsniecommerce.dao;

import com.marin.zavrsniecommerce.entity.State;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

import java.util.List;

@Repository
@CrossOrigin("http://localhost:4200")
public interface StateRepository extends JpaRepository<State, Long> {

    List<State> findByCountryCode(@Param("iso2") String code);
}
