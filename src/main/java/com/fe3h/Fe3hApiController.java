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

  // @PostMapping(path="/add")
  // public @ResponseBody String addNewUnit (@RequestParam String name
  //     , @RequestParam String house) {

  //   Unit unit = new Unit();
  //   unit.setName(name);
  //   unit.setHouse(house);
  //   unitRepository.save(unit);
  //   return "Saved";
  // }

  // @GetMapping(path="/")
  // public @ResponseBody Iterable<Unit> indexAll() {
  //   return unitRepository.findAll();
  // }

  // @GetMapping(path="/")
  // public @ResponseBody Object[] all() {
  //   return unitRepository.indexAll();
  // }

  @GetMapping(path="/")
  public @ResponseBody List<Map<String, Object>> all() {
    String[] sqlQueries = unitRepository.indexAll();
    return fe3hApiService.stringToMapAll(sqlQueries);
  }

  // @GetMapping(path="/unit/{id}")
  // public @ResponseBody Object[] index(@PathVariable String id) {
  //   int unitId = Integer.parseInt(id);
  //   return (unitRepository.indexOne(unitId));
  // }

  @GetMapping(path="/unit/{id}")
  public @ResponseBody Map<String, Object> indexOne(@PathVariable String id) {
    int unitId = Integer.parseInt(id);
    String sqlQuery = unitRepository.indexOne(unitId);
    return fe3hApiService.stringToMap(sqlQuery);
  }
}