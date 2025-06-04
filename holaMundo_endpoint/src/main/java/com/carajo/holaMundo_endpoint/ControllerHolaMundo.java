package com.carajo.holaMundo_endpoint;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/helloWorld")
public class ControllerHolaMundo {
    @Autowired
    private ServiceHolaMundo serviceHolaMundo;

    @GetMapping
    public String sayHelloWorld(){
        return this.serviceHolaMundo.sayHelloWorld();
    }
}
