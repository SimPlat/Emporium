package ihu.dypa.emporium;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.session.jdbc.config.annotation.web.http.EnableJdbcHttpSession;

@SpringBootApplication @EnableJdbcHttpSession
public class EmporiumApplication {

	public static void main(String[] args) {
		SpringApplication.run(EmporiumApplication.class, args);
	}

}
