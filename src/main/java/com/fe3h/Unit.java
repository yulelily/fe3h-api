package com.fe3h;

import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
class Unit {
  private @Id @GeneratedValue(strategy=GenerationType.AUTO) Integer id;
  private String name;
  private String house;

  Unit() {}

  Unit(String name, String house) {
    this.name = name;
    this.house = house;
  }

  public Integer getId() {
    return this.id;
  }

  public String getName() {
    return this.name;
  }

  public String getHouse() {
    return this.house;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public void setName(String name) {
    this.name = name;
  }

  public void setHouse(String house) {
    this.house = house;
  }

  @Override
  public boolean equals(Object o)  {
    if (this == o) {
      return true;
    }
    if (!(o instanceof Unit)) {
      return false;
    }
    Unit unit = (Unit) o;
    return Objects.equals(this.id, unit.id) && Objects.equals(this.name, unit.name) && Objects.equals(this.house, unit.house);
  }

  @Override
  public int hashCode() {
    return Objects.hash(this.id, this.name, this.house);
  }

  @Override
  public String toString() {
    return "Unit{" + "id=" + this.id + ", name='" + this.name + "', house='" + this.house + "'}";
  }
}