package com.fe3h;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class UnitNameNotFoundAdvice {
  @ResponseBody
  @ExceptionHandler(UnitNameNotFoundException.class)
  @ResponseStatus(HttpStatus.NOT_FOUND)
  String unitNameNotFoundHandler(UnitNameNotFoundException ex) {
    return ex.getMessage();
  }
}