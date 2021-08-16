package com.alexv.dclinic

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@SpringBootApplication
class DclinicApplication

fun main(args: Array<String>) {
	runApplication<DclinicApplication>(*args)
}

@RestController
class MainController {

	@GetMapping(path = ["/"])
	fun helloWorld(): String {
		return """{"message":"Hello Amazon ECS!"}"""
	}
}