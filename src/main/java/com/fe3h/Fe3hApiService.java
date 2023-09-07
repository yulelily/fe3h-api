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
    
    return response;
  }
}
