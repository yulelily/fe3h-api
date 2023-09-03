package com.fe3h;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class Fe3hApiController {
  @Autowired
  private UnitRepository unitRepository;

  @PostMapping(path="/add")
  public @ResponseBody String addNewUnit (@RequestParam String name
      , @RequestParam String house) {

    Unit unit = new Unit();
    unit.setName(name);
    unit.setHouse(house);
    unitRepository.save(unit);
    return "Saved";
  }

  @GetMapping(path="/")
  public @ResponseBody Iterable<Unit> indexAll() {
    return unitRepository.findAll();
  }

  @GetMapping(path="/unit/{id}")
  public Optional<Unit> index(@PathVariable String id) {
    int unitId = Integer.parseInt(id);
    return unitRepository.findById(unitId);
  }
}