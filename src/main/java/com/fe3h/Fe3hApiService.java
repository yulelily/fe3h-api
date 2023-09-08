package com.fe3h;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

import org.springframework.stereotype.Service;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.*;

@Service
public class Fe3hApiService {

  public Fe3hApiService() {}

  public List<Map<String, Object>> stringToMapAll(String[] sqlQueries) {
    List<Map<String, Object>> response = new ArrayList<>();
    for (String sqlQuery: sqlQueries) {
      response.add(stringToMap(sqlQuery));
    }
    return response;
  }

  public Map<String, Object> stringToMap(String sqlQuery) {
    Map<String, Object> response = new HashMap<>();
    String[] parsedQuery = sqlQuery.split(",");

    response.put("name", parsedQuery[1]);
    response.put("fullName", parsedQuery[2]);
    response.put("house", parsedQuery[3]);
    response.put("birthday", parsedQuery[4]);
    response.put("firstCrest", parsedQuery[5]);
    response.put("secondCrest", parsedQuery[6]);

    Map<String, Object> _links = new HashMap<>();
    _links.put("self", linkTo(methodOn(Fe3hApiController.class).indexOneById(parsedQuery[0])).withSelfRel());
    _links.put("all", linkTo(methodOn(Fe3hApiController.class).indexAll()).withRel("unit"));
    response.put("_links", _links);

    Map<String, Object> baseStatsArr = new HashMap<>();
    baseStatsArr.put("baseHp", parsedQuery[9]);
    baseStatsArr.put("baseStr", parsedQuery[10]);
    baseStatsArr.put("baseMag", parsedQuery[11]);
    baseStatsArr.put("baseDex", parsedQuery[12]);
    baseStatsArr.put("baseSpd", parsedQuery[13]);
    baseStatsArr.put("baseLck", parsedQuery[14]);
    baseStatsArr.put("baseDef", parsedQuery[15]);
    baseStatsArr.put("baseRes", parsedQuery[16]);
    baseStatsArr.put("baseCha", parsedQuery[17]);
    response.put("baseStats", baseStatsArr);

    Map<String, Object> growthRatesArr = new HashMap<>();
    growthRatesArr.put("growthRateHp", parsedQuery[20]);
    growthRatesArr.put("growthRateStr", parsedQuery[21]);
    growthRatesArr.put("growthRateMag", parsedQuery[22]);
    growthRatesArr.put("growthRateDex", parsedQuery[23]);
    growthRatesArr.put("growthRateSpd", parsedQuery[24]);
    growthRatesArr.put("growthRateLck", parsedQuery[25]);
    growthRatesArr.put("growthRateDef", parsedQuery[26]);
    growthRatesArr.put("growthRateRes", parsedQuery[27]);
    growthRatesArr.put("growthRateCha", parsedQuery[28]);
    response.put("growthRates", growthRatesArr);

    Map<String, Object> defaultClassesArr = new HashMap<>();
    defaultClassesArr.put("startingClass", parsedQuery[31]);
    defaultClassesArr.put("beginnerClass", parsedQuery[32]);
    defaultClassesArr.put("intermediateClass", parsedQuery[33]);
    response.put("defaultClasses", defaultClassesArr);
    
    Map<String, Object> boonsBanesBuddingArr = new HashMap<>();
    boonsBanesBuddingArr.put("sword", parsedQuery[36]);
    boonsBanesBuddingArr.put("lance", parsedQuery[37]);
    boonsBanesBuddingArr.put("axe", parsedQuery[38]);
    boonsBanesBuddingArr.put("bow", parsedQuery[39]);
    boonsBanesBuddingArr.put("brawl", parsedQuery[40]);
    boonsBanesBuddingArr.put("reason", parsedQuery[41]);
    boonsBanesBuddingArr.put("faith", parsedQuery[42]);
    boonsBanesBuddingArr.put("authority", parsedQuery[43]);
    boonsBanesBuddingArr.put("heavyArmor", parsedQuery[44]);
    boonsBanesBuddingArr.put("riding", parsedQuery[45]);
    boonsBanesBuddingArr.put("flying", parsedQuery[46]);
    boonsBanesBuddingArr.put("budding", parsedQuery[47]);
    boonsBanesBuddingArr.put("buddingTalent", parsedQuery[48]);
    response.put("boonsBanesBudding", boonsBanesBuddingArr);

    Map<String, Object> baseSkillLevelsArr = new HashMap<>();
    baseSkillLevelsArr.put("sword", parsedQuery[51]);
    baseSkillLevelsArr.put("lance", parsedQuery[52]);
    baseSkillLevelsArr.put("axe", parsedQuery[53]);
    baseSkillLevelsArr.put("bow", parsedQuery[54]);
    baseSkillLevelsArr.put("brawl", parsedQuery[55]);
    baseSkillLevelsArr.put("reason", parsedQuery[56]);
    baseSkillLevelsArr.put("faith", parsedQuery[57]);
    baseSkillLevelsArr.put("authority", parsedQuery[58]);
    baseSkillLevelsArr.put("heavyArmor", parsedQuery[59]);
    baseSkillLevelsArr.put("riding", parsedQuery[60]);
    baseSkillLevelsArr.put("flying", parsedQuery[61]);
    response.put("baseSkillLevels", baseSkillLevelsArr);

    return response;
  }
}
