package com.fe3h;

import java.util.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

interface UnitRepository extends JpaRepository<Unit, Integer> {
  @Query(
    nativeQuery = true,
    value = "SELECT * FROM unit LEFT JOIN base_stats ON base_stats.unit_id = unit.id LEFT JOIN unit_growth_rates ON unit_growth_rates.unit_id = base_stats.unit_id")
    public List<Object[]> indexAll();

  // @Query(
  //   nativeQuery = true,
  //   value = "SELECT * FROM unit LEFT JOIN base_stats ON base_stats.unit_id = unit.id LEFT JOIN unit_growth_rates ON unit_growth_rates.unit_id = base_stats.unit_id WHERE unit.id = :unitId")
  //   public List<Object[]> indexOne(@Param("unitId") int unitId);

  /*
   * Just use hashmap middleware converter lol
   */

    @Query(name = "findUnitObject", nativeQuery = true)
    public Object[] indexOne(@Param("unitId") int unitId);
}