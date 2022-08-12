package stepdef;


import io.cucumber.java.After;
import io.cucumber.java.Before;
import utils.ConfigReader;
import utils.DriverUtils;

public class Hooks {

    @Before
    public void setUp(){
        ConfigReader.initProperties();
        DriverUtils.createDriver();
    }

    @After
    public void quit(){
        DriverUtils.getDriver().quit();
    }
}
