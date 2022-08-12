package stepdef;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import pages.LoginPage;

public class LoginSteps {
    LoginPage loginPage = new LoginPage();

    @When("user login with valid credentials {string} and password {string}")
    public void user_login_with_valid_credentials_and_password(String string, String string2) {
        loginPage.doLogin(string, string2);


    }

    @Then("verify if user is on home page")
    public void verify_if_user_is_on_home_page() {
        loginPage.verifyLogo();


    }

}
