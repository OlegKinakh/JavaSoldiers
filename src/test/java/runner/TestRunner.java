package runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src//test//resources//features",
    glue="src.test.java.stepdef"
)
public class TestRunner {

}


// Waits that are built in Selenium
// We create our own custom methods
// Programming is all about optimizing code