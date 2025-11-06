package co.simplon.totobuisness;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@RestController
public class TotoBuisnessApplication {

	public static void main(String[] args) {
		SpringApplication.run(TotoBuisnessApplication.class, args);
	}

	@GetMapping("/ping")
	String ping(){
		return "pong";
	}
}
