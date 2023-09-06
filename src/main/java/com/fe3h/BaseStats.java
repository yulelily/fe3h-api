// package com.fe3h;

// import jakarta.persistence.*;
// import jakarta.persistence.GeneratedValue;
// import jakarta.persistence.GenerationType;
// import jakarta.persistence.Id;

// @Entity
// @Table(name = "base_stats")
// class BaseStats {
//   @Id @GeneratedValue(strategy=GenerationType.AUTO)
//   private int id;
  
//   @OneToOne
//   @PrimaryKeyJoinColumn(name = "unit_id")
//   private Unit unit;

//   private int health;
//   private int strength;
//   private int magic;
//   private int dexterity;
//   private int speed;
//   private int luck;
//   private int defense;
//   private int resistance;
//   private int charm;

//   BaseStats() {}

//   BaseStats(int health, int strength, int magic, int dexterity, int speed, int luck, int defense, int resistance, int charm) {
//     this.health = health;
//     this.strength = strength;
//     this.magic = magic;
//     this.dexterity = dexterity;
//     this.speed = speed;
//     this.luck = luck;
//     this.defense = defense;
//     this.resistance = resistance;
//     this.charm = charm;
//   }

  // public int getHealth() {
  //   return this.health;
  // }

  // public int getStrength() {
  //   return this.strength;
  // }

  // public int getMagic() {
  //   return this.magic;
  // }

  // public int getDexterity() {
  //   return this.dexterity;
  // }

  // public int getSpeed() {
  //   return this.speed;
  // }

  // public int getLuck() {
  //   return this.luck;
  // }

  // public int getDefense() {
  //   return this.defense;
  // }

  // public int getResistance() {
  //   return this.resistance;
  // }

  // public int getCharm() {
  //   return this.charm;
  // }
// }