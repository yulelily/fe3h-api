package com.fe3h;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class UnitQueryNotFoundAdvice {
  @ResponseBody
  @ExceptionHandler(UnitQueryNotFoundException.class)
  @ResponseStatus(HttpStatus.NOT_FOUND)
  String unitQueryNotFoundHandler(UnitQueryNotFoundException ex) {
    return ex.getMessage();
  }
}