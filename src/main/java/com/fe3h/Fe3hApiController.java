package com.fe3h;

import java.util.Map;
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
    String sqlQuery = unitRepository.indexOne(unitId);
    return fe3hApiService.stringToMap(sqlQuery);
  }
}