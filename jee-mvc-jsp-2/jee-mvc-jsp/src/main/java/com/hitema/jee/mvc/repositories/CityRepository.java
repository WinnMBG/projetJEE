package com.hitema.jee.mvc.repositories;

import com.hitema.jee.mvc.entities.City;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CityRepository extends JpaRepository<City, Long> {
    List<City> findAllByCityContainingIgnoreCase(String str);
    List<City> readCitiesByCityContainingIgnoreCase(String str);

    List<City> readCitiesByCapitalIsTrue();
}
