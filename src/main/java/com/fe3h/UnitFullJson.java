// package com.fe3h;

// // import jakarta.persistence.Entity;
// // import jakarta.persistence.GeneratedValue;
// // import jakarta.persistence.GenerationType;
// // import jakarta.persistence.Id;

// import jakarta.persistence.ColumnResult;
// import jakarta.persistence.ConstructorResult;
// import jakarta.persistence.NamedNativeQuery;
// import jakarta.persistence.SqlResultSetMapping;

// @NamedNativeQuery(
//   name = "findUnitObject",
//   query = """
//     SELECT unit.name, unit.full_name, unit.house, unit.birthday, unit.first_crest, unit.second_crest, base_stats.health, base_stats.strength, base_stats.magic, base_stats.dexterity, base_stats.speed, base_stats.luck, base_stats.defense, base_stats.resistance, base_stats.charm, unit_growth_rates.health, unit_growth_rates.strength, unit_growth_rates.magic, unit_growth_rates.dexterity, unit_growth_rates.speed, unit_growth_rates.luck, unit_growth_rates.defense, unit_growth_rates.resistance, unit_growth_rates.charm
//       FROM unit LEFT JOIN base_stats 
//       ON base_stats.unit_id = unit.id 
//       LEFT JOIN unit_growth_rates 
//       ON unit_growth_rates.unit_id = base_stats.unit_id
//       WHERE unit.id = :unitId""",
//   resultSetMapping = "unitObject")
// @SqlResultSetMapping(name = "unitObject",
//   classes = {
//     @ConstructorResult(targetClass = UnitFullJson.class, columns = {
//       @ColumnResult(name = "name", type = String.class),
//       @ColumnResult(name = "fullName", type = String.class),
//       @ColumnResult(name = "house", type = String.class),
//       @ColumnResult(name = "birthday", type = String.class),
//       @ColumnResult(name = "firstCrest", type = String.class),
//       @ColumnResult(name = "secondCrest", type = String.class),
//       @ColumnResult(name = "baseHp", type = Integer.class),
//       @ColumnResult(name = "baseStr", type = Integer.class),
//       @ColumnResult(name = "baseMag", type = Integer.class),
//       @ColumnResult(name = "baseDex", type = Integer.class),
//       @ColumnResult(name = "baseSpd", type = Integer.class),
//       @ColumnResult(name = "baseLck", type = Integer.class),
//       @ColumnResult(name = "baseDef", type = Integer.class),
//       @ColumnResult(name = "baseRes", type = Integer.class),
//       @ColumnResult(name = "baseCha", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateHp", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateStr", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateMag", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateDex", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateSpd", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateLck", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateDef", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateRes", type = Integer.class),
//       @ColumnResult(name = "unitGrowthRateCha", type = Integer.class),
//     })
//   })
// // @Entity
// public class UnitFullJson {
//   // @Id @GeneratedValue(strategy=GenerationType.AUTO)
//   // private int id;
//   private String name;
//   private String fullName;
//   private String house;
//   private String birthday;
//   private String firstCrest;
//   private String secondCrest;
//   private int baseHp;
//   private int baseStr;
//   private int baseMag;
//   private int baseDex;
//   private int baseSpd;
//   private int baseLck;
//   private int baseDef;
//   private int baseRes;
//   private int baseCha;
//   private int unitGrowthRateHp;
//   private int unitGrowthRateStr;
//   private int unitGrowthRateMag;
//   private int unitGrowthRateDex;
//   private int unitGrowthRateSpd;
//   private int unitGrowthRateLck;
//   private int unitGrowthRateDef;
//   private int unitGrowthRateRes;
//   private int unitGrowthRateCha;

//   // UnitFullJson() {}

//   // UnitFullJson(String name, String fullName, String house, String birthday, String firstCrest, String secondCrest, int baseHp, int baseStr, int baseMag, int baseDex, int baseSpd, int baseLck, int baseDef, int baseRes, int baseCha, int unitGrowthRateHp, int unitGrowthRateStr, int unitGrowthRateMag, int unitGrowthRateDex, int unitGrowthRateSpd, int unitGrowthRateLck, int unitGrowthRateDef, int unitGrowthRateRes, int unitGrowthRateCha) {
//   //   this.name = name;
//   //   this.fullName = fullName;
//   //   this.house = house;
//   //   this.birthday = birthday;
//   //   this.firstCrest = firstCrest;
//   //   this.secondCrest = secondCrest;
//   //   this.baseHp = baseHp;
//   //   this.baseStr = baseStr;
//   //   this.baseMag = baseMag;
//   //   this.baseDex = baseDex;
//   //   this.baseSpd = baseSpd;
//   //   this.baseLck = baseLck;
//   //   this.baseDef = baseDef;
//   //   this.baseRes = baseRes;
//   //   this.baseCha = baseCha;
//   //   this.unitGrowthRateHp = unitGrowthRateHp;
//   //   this.unitGrowthRateStr = unitGrowthRateStr;
//   //   this.unitGrowthRateMag = unitGrowthRateMag;
//   //   this.unitGrowthRateDex = unitGrowthRateDex;
//   //   this.unitGrowthRateSpd = unitGrowthRateSpd;
//   //   this.unitGrowthRateLck = unitGrowthRateLck;
//   //   this.unitGrowthRateDef = unitGrowthRateDef;
//   //   this.unitGrowthRateRes = unitGrowthRateRes;
//   //   this.unitGrowthRateCha = unitGrowthRateCha;
//   // }

//   public String getName() {
//     return this.name;
//   }

//   public String getFullName() {
//     return this.fullName;
//   }

//   public String getHouse() {
//     return this.house;
//   }

//   public String getBirthday() {
//     return this.birthday;
//   }

//   public String getFirstCrest() {
//     return this.firstCrest;
//   }

//   public String getSecondCrest() {
//     return this.secondCrest;
//   }

//   public int getBaseHp() {
//     return this.baseHp;
//   }

//   public int getBaseStr() {
//     return this.baseStr;
//   }

//   public int getBaseMag() {
//     return this.baseMag;
//   }

//   public int getBaseDex() {
//     return this.baseDex;
//   }

//   public int getBaseSpd() {
//     return this.baseSpd;
//   }

//   public int getBaseLck() {
//     return this.baseLck;
//   }

//   public int getBaseDef() {
//     return this.baseDef;
//   }

//   public int getBaseRes() {
//     return this.baseRes;
//   }

//   public int getBaseCha() {
//     return this.baseCha;
//   }

//   public int getUnitGrowthRateHp() {
//     return this.unitGrowthRateHp;
//   }

//   public int getUnitGrowthRateStr() {
//     return this.unitGrowthRateStr;
//   }

//   public int getUnitGrowthRateMag() {
//     return this.unitGrowthRateMag;
//   }

//   public int getUnitGrowthRateDex() {
//     return this.unitGrowthRateDex;
//   }

//   public int getUnitGrowthRateSpd() {
//     return this.unitGrowthRateSpd;
//   }

//   public int getUnitGrowthRateLck() {
//     return this.unitGrowthRateLck;
//   }

//   public int getUnitGrowthRateDef() {
//     return this.unitGrowthRateDef;
//   }

//   public int getUnitGrowthRateRes() {
//     return this.unitGrowthRateRes;
//   }

//   public int getUnitGrowthRateCha() {
//     return this.unitGrowthRateCha;
//   }
// }