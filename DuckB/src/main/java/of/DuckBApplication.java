package of;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.PropertySource;


@SpringBootApplication
@ServletComponentScan
@PropertySource(value = {"classpath:jdbc.properties"}, ignoreResourceNotFound = true)
public class DuckBApplication {

	public static void main(String[] args) {
		SpringApplication.run(DuckBApplication.class, args);
	}

}
