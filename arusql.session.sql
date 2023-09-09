-- @block
CREATE TABLE default_classes(
  id INT AUTO_INCREMENT,
  unit_id INT NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(unit_id) REFERENCES unit(id),
  starting_class VARCHAR(20),
  beginner_class VARCHAR(20),
  intermediate_class VARCHAR(20)
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
SELECT * FROM boons_banes;
SELECT * FROM base_skill_levels;
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
INSERT INTO faith_spells (unit_id, spell_1, req_1, spell_2, req_2, spell_3, req_3, spell_4, req_4, spell_5, req_5)
VALUES
  (1,  "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Silence", "A", "NA", "NA"),
  (2,  "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (3,  "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Ward", "B", "NA", "NA"),
  (4,  "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (5,  "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Ward", "B", "NA", "NA"),
  (6,  "Heal", "D", "Nosferatu", "D+", "Seraphim", "C", "Warp", "B", "Abraxas", "A"),
  (7,  "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Silence", "B", "Aura", "A"),
  (8,  "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Restore", "B", "NA", "NA"),
  (9,  "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Aura", "A", "NA", "NA"),
  (10, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (11, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Restore", "B", "NA", "NA"),
  (12, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "NA", "NA", "NA", "NA"),
  (13, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Seraphim", "B", "NA", "NA"),
  (14, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Restore", "B", "Fortify", "A"),
  (15, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Abraxas", "A", "NA", "NA"),
  (16, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Seraphim", "B", "NA", "NA"),
  (17, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Seraphim", "B", "NA", "NA"),
  (18, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (19, "Heal", "D", "Nosferatu", "D+", "Ward", "C", "Restore", "B", "NA", "NA"),
  (20, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Restore", "B", "Warp", "A"),
  (21, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (22, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Rescue", "A", "NA", "NA"),
  (23, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "NA", "NA", "NA", "NA"),
  (24, "Heal", "D", "Nosferatu", "D+", "Restore", "C", "NA", "NA", "NA", "NA"),
  (25, "Heal", "D", "Nosferatu", "D+", "Restore", "C", "NA", "NA", "NA", "NA"),
  (26, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Aura", "A", "NA", "NA"),
  (27, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (28, "Heal", "D", "Nosferatu", "D+", "Restore", "C", "Rescue", "B", "Fortify", "A"),
  (29, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Ward", "B", "NA", "NA"),
  (30, "Heal", "D", "Nosferatu", "D+", "Ward", "C", "Silence", "B", "Warp", "A"),
  (31, "Heal", "D", "Nosferatu", "D+", "Ward", "C", "NA", "NA", "NA", "NA"),
  (32, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (33, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (34, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "NA", "NA", "NA", "NA"),
  (35, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "NA", "NA", "NA", "NA"),
  (36, "Heal", "D", "Nosferatu", "D+", "Ward", "C", "Rescue", "B", "NA", "NA"),
  (37, "Heal", "D", "Nosferatu", "D+", "Recover", "C", "Silence", "B", "Aura", "A"),
  (38, "Heal", "D", "Nosferatu", "D+", "Seraphim", "B", "Restore", "A", "NA", "NA"),
  (39, "Heal", "D", "Nosferatu", "D+", "Ward", "C", "Rescue", "B", "Abraxas", "A"),
  (40, "Heal", "D", "Nosferatu", "D+", "Physic", "C", "Seraphim", "B", "Warp", "A");

-- @block
INSERT INTO default_classes(unit_id, starting_class, beginner_class, intermediate_class)
VALUES
  (1, "Noble", "Noble", "Noble"),
  (2, "Noble", "Fighter", "Brigand"),
  (3, "Noble", "Soldier", "Cavalier"),
  (4, "Commoner", "Fighter", "Brawler"),
  (5, "Commoner", "Fighter", "Archer"),
  (6, "Noble", "Monk", "Mage"),
  (7, "Noble", "Monk", "Priest"),
  (8, "Commoner", "Soldier", "Cavalier"),
  (9, "Noble", "Noble", "Noble"),
  (10, "Commoner", "Fighter", "Armored Knight"),
  (11, "Noble", "Myrmidon", "Mercenary"),
  (12, "Commoner", "Fighter", "Archer"),
  (13, "Noble", "Soldier", "Cavalier"),
  (14, "Commoner", "Monk", "Priest"),
  (15, "Noble", "Monk", "Mage"),
  (16, "Noble", "Soldier", "Pegasus Knight"),
  (17, "Noble", "Noble", "Noble"),
  (18, "Noble", "Monk", "Mage"),
  (19, "Noble", "Soldier", "Cavalier"),
  (20, "Noble", "Monk", "Priest"),
  (21, "Noble", "Fighter", "Brigand"),
  (22, "Noble", "Fighter", "Archer"),
  (23, "Commoner", "Monk", "Mage"),
  (24, "Commoner", "Myrmidon", "Thief"),
  (25, "Death Knight", "Death Knight", "Death Knight"),
  (26, "Commoner", "Commoner", "Commoner"),
  (27, "Wyvern Rider", "Wyvern Rider", "Wyvern Rider"),
  (28, "Priest", "Priest", "Priest"),
  (29, "Mage", "Mage", "Mage"),
  (30, "Priest", "Priest", "Priest"),
  (31, "Fortress Knight", "Fortress Knight", "Fortress Knight"),
  (32, "Warrior", "Warrior", "Warrior"),
  (33, "Swordmaster", "Swordmaster", "Swordmaster"),
  (34, "Sniper", "Sniper", "Sniper"),
  (35, "Commoner", "Commoner", "Commoner"),
  (36, "Commoner", "Myrmidon", "Thief"),
  (37, "Commoner", "Myrmidon", "Thief"),
  (38, "Noble", "Fighter", "Brawler"),
  (39, "Noble", "Monk", "Mage"),
  (40, "Commoner", "Monk", "Mage");

-- @block
UPDATE boons_banes
SET
  budding_talent = 'None'
WHERE
  budding = 'None';

-- @block
CREATE INDEX spell_1_index ON reason_spells(spell_1);
CREATE INDEX spell_2_index ON reason_spells(spell_2);
CREATE INDEX spell_3_index ON reason_spells(spell_3);
CREATE INDEX spell_4_index ON reason_spells(spell_4);
CREATE INDEX spell_5_index ON reason_spells(spell_5);

-- @block
SHOW INDEX FROM reason_spells;