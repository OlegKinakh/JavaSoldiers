package stepdef;

import io.cucumber.java.en.Then;
import pages.HomePage;

public class LogoutSteps {
    HomePage homePage = new HomePage();

    @Then("user clicks on profile icon")
    public void user_clicks_on_profile_icon()throws Exception {

        homePage.clickOnIcon();

    }

    @Then("user click on {string}")
    public void user_click_on(String string) throws InterruptedException {
        Thread.sleep(2000);
        homePage.clickLogoutButton(string);
    }

    @Then("check if user is on login page with the {string}")
    public void check_if_user_is_on_login_page_with_the(String string) throws InterruptedException {
        homePage.checkLogoutMessage(string);
    }

}
