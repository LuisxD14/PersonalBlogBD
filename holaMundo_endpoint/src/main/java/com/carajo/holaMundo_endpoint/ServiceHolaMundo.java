package com.carajo.holaMundo_endpoint;

import org.springframework.stereotype.Service;

@Service
public class ServiceHolaMundo {
    public String sayHelloWorld(){
        return "Hello World!";
    }
}
