package pages;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.DriverUtils;


public class LoginPage extends OpenWebsite{


    public LoginPage() {
        PageFactory.initElements(driver, this);
    }

    @FindBy(id = "username")
    WebElement usernameInput;

    @FindBy(id = "password")
    WebElement passwordInput;

    @FindBy(id = "submit")
    WebElement signInButton;

    @FindBy(xpath = "//*[@id=\"remember-me\"]")
    WebElement rememberMeCheckBox;

    @FindBy(xpath = "//li[contains(text(),'Welcome')]")
    WebElement welcomeLogoText;



    public void doLogin(String username, String password) {
        usernameInput.sendKeys(username);
        passwordInput.sendKeys(password);
        signInButton.click();

    }
    public void verifyLogo(){
        Assert.assertEquals("Welcome Bob", welcomeLogoText.getText());
    }
}
