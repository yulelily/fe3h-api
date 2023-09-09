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
      LEFT JOIN boons_banes
      ON boons_banes.unit_id = default_classes.unit_id
      LEFT JOIN base_skill_levels
      ON base_skill_levels.unit_id = boons_banes.unit_id
      LEFT JOIN dependent_abilities
      ON dependent_abilities.unit_id = base_skill_levels.unit_id
      LEFT JOIN dependent_combat_arts
      ON dependent_combat_arts.unit_id = dependent_abilities.unit_id
      LEFT JOIN reason_spells
      ON reason_spells.unit_id = dependent_combat_arts.unit_id
      LEFT JOIN faith_spells
      ON faith_spells.unit_id = reason_spells.unit_id
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
      LEFT JOIN boons_banes
      ON boons_banes.unit_id = default_classes.unit_id
      LEFT JOIN base_skill_levels
      ON base_skill_levels.unit_id = boons_banes.unit_id
      LEFT JOIN dependent_abilities
      ON dependent_abilities.unit_id = base_skill_levels.unit_id
      LEFT JOIN dependent_combat_arts
      ON dependent_combat_arts.unit_id = dependent_abilities.unit_id
      LEFT JOIN reason_spells
      ON reason_spells.unit_id = dependent_combat_arts.unit_id
      LEFT JOIN faith_spells
      ON faith_spells.unit_id = reason_spells.unit_id
      WHERE unit.id = :unitId
      """
    )
    public String indexOneById(@Param("unitId") int unitId);

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
      LEFT JOIN boons_banes
      ON boons_banes.unit_id = default_classes.unit_id
      LEFT JOIN base_skill_levels
      ON base_skill_levels.unit_id = boons_banes.unit_id
      LEFT JOIN dependent_abilities
      ON dependent_abilities.unit_id = base_skill_levels.unit_id
      LEFT JOIN dependent_combat_arts
      ON dependent_combat_arts.unit_id = dependent_abilities.unit_id
      LEFT JOIN reason_spells
      ON reason_spells.unit_id = dependent_combat_arts.unit_id
      LEFT JOIN faith_spells
      ON faith_spells.unit_id = reason_spells.unit_id
      WHERE unit.Name = :unitName
      """
    )
    public String indexOneByName(@Param("unitName") String unitName);

    @Query(
      nativeQuery = true,
      value = """
        SELECT unit_id FROM dependent_abilities
        WHERE 
          dependent_abilities.ability_1 = :abilityName
          OR dependent_abilities.ability_2 = :abilityName
          OR dependent_abilities.ability_3 = :abilityName
          OR dependent_abilities.ability_4 = :abilityName
          OR dependent_abilities.ability_5 = :abilityName
        """
      )
      public String[] indexAllByAbility(@Param("abilityName") String abilityName);

    @Query(
      nativeQuery = true,
      value = """
        SELECT unit_id FROM dependent_combat_arts
        WHERE 
          dependent_combat_arts.art_1 = :combatArtName
          OR dependent_combat_arts.art_2 = :combatArtName
          OR dependent_combat_arts.art_3 = :combatArtName
          OR dependent_combat_arts.art_4 = :combatArtName
          OR dependent_combat_arts.art_5 = :combatArtName
        """
      )
      public String[] indexAllByCombatArt(@Param("combatArtName") String combatArtName);

    @Query(
      nativeQuery = true,
      value = """
        SELECT unit_id FROM reason_spells
        WHERE 
          reason_spells.spell_1 = :reasonSpellName
          OR reason_spells.spell_2 = :reasonSpellName
          OR reason_spells.spell_3 = :reasonSpellName
          OR reason_spells.spell_4 = :reasonSpellName
          OR reason_spells.spell_5 = :reasonSpellName
        """
      )
      public String[] indexAllByReasonSpell(@Param("reasonSpellName") String reasonSpellName);
}