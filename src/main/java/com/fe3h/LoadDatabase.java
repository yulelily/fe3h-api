// package com.fe3h;

// import org.slf4j.Logger;
// import org.slf4j.LoggerFactory;
// import org.springframework.boot.CommandLineRunner;
// import org.springframework.context.annotation.Bean;
// import org.springframework.context.annotation.Configuration;

// @Configuration
// class LoadDatabase {
//   private static final Logger log = LoggerFactory.getLogger(LoadDatabase.class);

//   @Bean
//   CommandLineRunner initDatabase(UnitRepository unitRepository) {
//     return args -> {
//       unitRepository.save(new Unit("Claude", "Golden Deer"));
//       unitRepository.save(new Unit("Hilda", "Golden Deer"));

//       log.info("\u250C preloading data");
//       unitRepository.findAll().forEach(unit -> log.info("\u251C " + unit + ""));
//       log.info("\u2514 preloading done");
//     };
//   }
// }