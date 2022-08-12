package tests;

import io.cucumber.java.After;
import org.junit.Before;
import utils.DriverUtils;

public class BaseTest{

   @Before
    public void setUp(){
        DriverUtils.createDriver();

    }

    @After
    public void quit(){
        DriverUtils.getDriver().quit();
    }

}
