package com.fe3h;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

interface UnitRepository extends JpaRepository<Unit, Integer> {
  @Query(
    nativeQuery = true,
    value = """
        SELECT * FROM unit 
        LEFT JOIN base_stats 
        ON base_stats.unit_id = unit.id 
          LEFT JOIN unit_growth_rates 
          ON unit_growth_rates.unit_id = base_stats.unit_id
            LEFT JOIN default_classes
            ON default_classes.unit_id = unit_growth_rates.unit_id
        """
    )
    public String[] indexAll();

  @Query(
    nativeQuery = true,
    value = """
      SELECT * FROM unit 
      LEFT JOIN base_stats 
      ON base_stats.unit_id = unit.id 
        LEFT JOIN unit_growth_rates 
        ON unit_growth_rates.unit_id = base_stats.unit_id 
            LEFT JOIN default_classes
            ON default_classes.unit_id = unit_growth_rates.unit_id
        WHERE unit.id = :unitId
      """
    )
    public String indexOne(@Param("unitId") int unitId);
}