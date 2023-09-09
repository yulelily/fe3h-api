package com.fe3h;

public class UnitNameNotFoundException extends RuntimeException {
  UnitNameNotFoundException(String name) {
    super("Could not find unit with name: " + name);
  }
}