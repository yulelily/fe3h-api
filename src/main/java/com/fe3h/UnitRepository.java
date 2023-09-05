package com.fe3h;

import java.util.*;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

interface UnitRepository extends JpaRepository<Unit, Integer> {
  @Query(
    nativeQuery = true,
    value = "SELECT name, house, base_stats.* FROM unit LEFT JOIN base_stats ON base_stats.unit_id = unit.id")
    public List<Object[]> indexAll();
}