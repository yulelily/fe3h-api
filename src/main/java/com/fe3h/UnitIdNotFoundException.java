package com.fe3h;

public class UnitIdNotFoundException extends RuntimeException{
  UnitIdNotFoundException(String unitId) {
    super("Could not find unit with id: " + unitId);
  }
}