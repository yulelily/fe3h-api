package com.fe3h;

public class UnitQueryNotFoundException extends RuntimeException {
  UnitQueryNotFoundException(String query) {
    super("Could not find units using search query: " + query + "\nPlease check if you are searching correctly with /find/ability, /find/combartart, /find/reasonspell, or /find/faithspell");
  }
}