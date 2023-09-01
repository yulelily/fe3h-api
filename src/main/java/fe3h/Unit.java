package fe3h;

import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
class Unit {
  private @Id @GeneratedValue long id;
  private String firstName;
  private String house;

  Unit() {}

  Unit(String firstName, String house) {
    this.firstName = firstName;
    this.house = house;
  }

  public Long getId() {
    return this.id;
  }

  public String getName() {
    return this.firstName;
  }

  public String getHouse() {
    return this.house;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public void setName(String firstName) {
    this.firstName = firstName;
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
    return Objects.equals(this.id, unit.id) && Objects.equals(this.firstName, unit.firstName) && Objects.equals(this.house, unit.house);
  }

  @Override
  public int hashCode() {
    return Objects.hash(this.id, this.firstName, this.house);
  }

  @Override
  public String toString() {
    return "Unit{" + "id=" + this.id + ", firstName='" + this.firstName + "', house='" + this.house + "'}";
  }
}