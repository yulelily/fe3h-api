package com.fe3h;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class UnitIdNotFoundAdvice {
  @ResponseBody
  @ExceptionHandler(UnitIdNotFoundException.class)
  @ResponseStatus(HttpStatus.NOT_FOUND)
  String unitIdNotFoundHandler(UnitIdNotFoundException ex) {
    return ex.getMessage();
  }
}