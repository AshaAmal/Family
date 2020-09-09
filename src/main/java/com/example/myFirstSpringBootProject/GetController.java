package com.example.myFirstSpringBootProject;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GetController {
	
@GetMapping(value ="/user")
public String getUserName(@RequestParam String name) {
	return name;
}

}
