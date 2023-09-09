package com.fe3h;

import java.util.Map;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Fe3hApiController {
  @Autowired
  private UnitRepository unitRepository;

  private Fe3hApiService fe3hApiService = new Fe3hApiService();

  @GetMapping(path="/unit")
  public @ResponseBody List<Map<String, Object>> indexAll() {
    String[] sqlQueries = unitRepository.indexAll();
    return fe3hApiService.stringToMapAll(sqlQueries);
  }

  @GetMapping(path="/unit/{id}")
  public @ResponseBody Map<String, Object> indexOneById(@PathVariable("id") String id) {
    int unitId = Integer.parseInt(id);
    try {
      String sqlQuery = unitRepository.indexOneById(unitId);
      return fe3hApiService.stringToMap(sqlQuery);
    } catch (Exception ex) {
      throw new UnitIdNotFoundException(id);
    }
  }

  @GetMapping(path="/find/name/{name}")
  public @ResponseBody Map<String, Object> indexOneByName (@PathVariable("name") String name) {
    name = name.substring(0, 1).toUpperCase() + name.substring(1).toLowerCase();
    try {
      String sqlQuery = unitRepository.indexOneByName(name);
      return fe3hApiService.stringToMap(sqlQuery);
    } catch (Exception ex) {
      throw new UnitNameNotFoundException(name);
    }
  }

  @GetMapping(path="/find/ability/{abilityName}")
  public @ResponseBody List<Map<String, Object>> indexAllByAbility (@PathVariable("abilityName") String abilityName) {
    List<Map<String, Object>> response = new ArrayList<>();

    try {
      String[] sqlQueries = unitRepository.indexAllByAbility(abilityName);
      if (sqlQueries.length <= 0) {
        throw new UnitQueryNotFoundException(abilityName);
      }
      for (String unitId: sqlQueries) {
        response.add(indexOneById(unitId));
      }
      return response;
    } catch (Exception ex) {
      throw new UnitQueryNotFoundException(abilityName);
    }
  }
  
  @GetMapping(path="/find/combatart/{combatArtName}")
  public @ResponseBody List<Map<String, Object>> indexAllByCombatArt (@PathVariable("combatArtName") String combatArtName) {
    List<Map<String, Object>> response = new ArrayList<>();
    
    try {
      String[] sqlQueries = unitRepository.indexAllByCombatArt(combatArtName);
      if (sqlQueries.length <= 0) {
        throw new UnitQueryNotFoundException(combatArtName);
      }
      for (String unitId: sqlQueries) {
        response.add(indexOneById(unitId));
      }
      return response;
    } catch (Exception ex) {
      throw new UnitQueryNotFoundException(combatArtName);
    }
  }

  @GetMapping(path="/find/reasonspell/{reasonSpellName}")
  public @ResponseBody List<Map<String, Object>> indexAllByReasonSpell (@PathVariable("reasonSpellName") String reasonSpellName) {
    List<Map<String, Object>> response = new ArrayList<>();

    try {
      String[] sqlQueries = unitRepository.indexAllByReasonSpell(reasonSpellName);
      if (sqlQueries.length <= 0) {
        throw new UnitQueryNotFoundException(reasonSpellName);
      }
      for (String unitId: sqlQueries) {
        response.add(indexOneById(unitId));
      }
      return response;
    } catch (Exception ex) {
      throw new UnitQueryNotFoundException(reasonSpellName);
    }
  }

  @GetMapping(path="/find/faithspell/{faithSpellName}")
  public @ResponseBody List<Map<String, Object>> indexAllByFaithSpell (@PathVariable("faithSpellName") String faithSpellName) {
    List<Map<String, Object>> response = new ArrayList<>();

    try {
      String[] sqlQueries = unitRepository.indexAllByFaithSpell(faithSpellName);
      if (sqlQueries.length <= 0) {
        throw new UnitQueryNotFoundException(faithSpellName);
      }
      for (String unitId: sqlQueries) {
        response.add(indexOneById(unitId));
      }
      return response;
    } catch (Exception ex) {
      throw new UnitQueryNotFoundException(faithSpellName);
    }
  }
}