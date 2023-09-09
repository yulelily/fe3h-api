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
  public @ResponseBody Map<String, Object> indexOneById(@PathVariable String id) {
    int unitId = Integer.parseInt(id);
    String sqlQuery = unitRepository.indexOneById(unitId);
    return fe3hApiService.stringToMap(sqlQuery);
  }

  @GetMapping(path="/find/name/{name}")
  public @ResponseBody Map<String, Object> indexOneByName (@PathVariable String name) {
    name = name.substring(0, 1).toUpperCase() + name.substring(1).toLowerCase();
    String sqlQuery = unitRepository.indexOneByName(name);
    return fe3hApiService.stringToMap(sqlQuery);
  }

  @GetMapping(path="/find/ability/{abilityName}")
  public @ResponseBody List<Map<String, Object>> indexAllByAbility (@PathVariable String abilityName) {
    String[] sqlQueries = unitRepository.indexAllByAbility(abilityName);

    List<Map<String, Object>> response = new ArrayList<>();
    for (String unitId: sqlQueries) {
      response.add(indexOneById(unitId));
    }
    return response;
  }
  
  @GetMapping(path="/find/combatart/{reasonSpellName}")
  public @ResponseBody List<Map<String, Object>>
  indexAllByCombatArt (@PathVariable String combatArtName) {
    String[] sqlQueries = unitRepository.indexAllByCombatArt(combatArtName);

    List<Map<String, Object>> response = new ArrayList<>();
    for (String unitId: sqlQueries) {
      response.add(indexOneById(unitId));
    }
    return response;
  }

  @GetMapping(path="/find/reasonspell/{reasonSpellName}")
  public @ResponseBody List<Map<String, Object>>
  indexAllByReasonSpell (@PathVariable String reasonSpellName) {
    String[] sqlQueries = unitRepository.indexAllByReasonSpell(reasonSpellName);

    List<Map<String, Object>> response = new ArrayList<>();
    for (String unitId: sqlQueries) {
      response.add(indexOneById(unitId));
    }
    return response;
  }

  @GetMapping(path="/find/faithSpell/{faithSpellName}")
  public @ResponseBody List<Map<String, Object>>
  indexAllByFaithSpell (@PathVariable String faithSpellName) {
    String[] sqlQueries = unitRepository.indexAllByFaithSpell(faithSpellName);

    List<Map<String, Object>> response = new ArrayList<>();
    for (String unitId: sqlQueries) {
      response.add(indexOneById(unitId));
    }
    return response;
  }
}