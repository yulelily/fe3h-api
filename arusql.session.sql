-- @block
CREATE TABLE boons_banes(
  id INT AUTO_INCREMENT,
  unit_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(unit_id) REFERENCES unit(id),
  sword VARCHAR(4),
  lance VARCHAR(4),
  axe VARCHAR(4),
  bow VARCHAR(4),
  brawl VARCHAR(4),
  reason VARCHAR(4),
  faith VARCHAR(4),
  authority VARCHAR(4),
  heavyArmor VARCHAR(4),
  riding VARCHAR(4),
  flying VARCHAR(4),
  budding VARCHAR(10)
);

-- @block
INSERT INTO boons_banes (id, unit_id, budding_talent)
VALUES
(1, 1, "Diamond Axe"),
(2, 2, "Seal Speed"),
(5, 5, "Seal Strength"),
(6, 6, "Soulblade"),
(7, 7, "Frozen Lance"),
(9, 9, "Seal Movement"),
(11, 11, "Black Magic Crit +10"),
(12, 12, "Shatter Smash"),
(13, 13, "Black Magic Avoid +20"),
(14, 14, "Waning Shot"),
(17, 17, "Black Magic Crit +10"),
(18, 18, "Frozen Lance"),
(19, 19, "Seal Speed"),
(22, 22, "Pass"),
(23, 23, "White Magic Avoid +20"),
(25, 25, "Darting Blow"),
(26, 26, "White Magic Avoid +20"),
(28, 28, "Seal Magic"),
(36, 36, "Pass"),
(37, 37, "Deadeye"),
(38, 38, "Black Magic Crit +10"),
(39, 39, "Mystic Blow"),
(40, 40, "Exhaustive Strike")
ON DUPLICATE KEY UPDATE id=VALUES(id), unit_id=VALUES(unit_id),
budding_talent=VALUES(budding_talent);

-- @block
SELECT * FROM dependent_abilities;
SELECT * FROM dependent_combat_arts;
SELECT * FROM reason_spells;
SELECT * FROM faith_spells;

-- @block
SELECT * FROM unit
  LEFT JOIN base_stats
  ON base_stats.unit_id = unit.id
  LEFT JOIN unit_growth_rates
  ON unit_growth_rates.unit_id = base_stats.unit_id
WHERE unit.id = 1;

-- @block
ALTER TABLE boons_banes
ADD COLUMN budding_talent VARCHAR(21) AFTER budding;

-- @block
DELETE FROM boons_banes WHERE id > 40

-- @block
CREATE TABLE dependent_abilities(
  id INT AUTO_INCREMENT,
  unit_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(unit_id) REFERENCES unit(id),
  ability_1 VARCHAR(25),
  req_1 VARCHAR(2),
  ability_2 VARCHAR(25),
  req_2 VARCHAR(2),
  ability_3 VARCHAR(25),
  req_3 VARCHAR(2),
  ability_4 VARCHAR(25),
  req_4 VARCHAR(2),
  ability_5 VARCHAR(25),
  req_5 VARCHAR(2)
);

CREATE TABLE dependent_combat_arts(
  id INT AUTO_INCREMENT,
  unit_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(unit_id) REFERENCES unit(id),
  art_1 VARCHAR(25),
  req_1 VARCHAR(2),
  art_2 VARCHAR(25),
  req_2 VARCHAR(2),
  art_3 VARCHAR(25),
  req_3 VARCHAR(2),
  art_4 VARCHAR(25),
  req_4 VARCHAR(2),
  art_5 VARCHAR(25),
  req_5 VARCHAR(2)
);

CREATE TABLE reason_spells(
  id INT AUTO_INCREMENT,
  unit_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(unit_id) REFERENCES unit(id),
  spell_1 VARCHAR(20),
  req_1 VARCHAR(2),
  spell_2 VARCHAR(20),
  req_2 VARCHAR(2),
  spell_3 VARCHAR(20),
  req_3 VARCHAR(2),
  spell_4 VARCHAR(20),
  req_4 VARCHAR(2),
  spell_5 VARCHAR(20),
  req_5 VARCHAR(2)
);

CREATE TABLE faith_spells(
  id INT AUTO_INCREMENT,
  unit_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(unit_id) REFERENCES unit(id),
  spell_1 VARCHAR(20),
  req_1 VARCHAR(2),
  spell_2 VARCHAR(20),
  req_2 VARCHAR(2),
  spell_3 VARCHAR(20),
  req_3 VARCHAR(2),
  spell_4 VARCHAR(20),
  req_4 VARCHAR(2),
  spell_5 VARCHAR(20),
  req_5 VARCHAR(2)
);

-- @block
INSERT INTO reason_spells (unit_id, spell_1, req_1, spell_2, req_2, spell_3, req_3, spell_4, req_4, spell_5, req_5)
VALUES
  (1, "Wind", "D", "Sagittae", "C", "Cutting Gale", "B", "Excalibur", "A", "NA", "NA"),
  (2, "Thunder", "D", "Thoron", "C", "Bolting", "A", "NA", "NA", "NA", "NA"),
  (3, "Fire", "D", "Sagittae", "C", "Ragnarok", "B", "Agnea's Arrow", "A", "NA", "NA"),
  (4, "Fire", "D", "Bolganone", "C", "NA", "NA", "NA", "NA", "NA", "NA"),
  (5, )
  ;