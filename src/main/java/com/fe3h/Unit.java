package com.fe3h;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Unit {
  @Id @GeneratedValue(strategy=GenerationType.AUTO)
  private int id;
  private String name;
  private String house;

  Unit() {}

  Unit(String name, String house) {
    this.name = name;
    this.house = house;
  }

  public String getName() {
    return this.name;
  }

  public String getHouse() {
    return this.house;
  }
}