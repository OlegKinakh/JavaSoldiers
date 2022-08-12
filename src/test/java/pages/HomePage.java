package pages;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.CommonMethods;

import java.util.List;

public class HomePage extends OpenWebsite{
    public HomePage() {
        PageFactory.initElements(driver, this);
    }
    @FindBy(xpath ="//img[@class='user-avatar rounded-circle']")
    WebElement icon;
    @FindBy(xpath ="//div[@class='user-menu dropdown-menu show']//a")
    WebElement logoutButton;
 @FindBy(xpath ="//*[@class='sufee-alert alert with-close alert-success alert-dismissible fade show']\n")
    WebElement logoutMessage;



    public void clickOnIcon() throws InterruptedException {
        Thread.sleep(2000);
        icon.click();

    }

    public void clickLogoutButton(String name) throws InterruptedException {
        Thread.sleep(2000);
        List<WebElement> list = logoutButton.findElements(By.xpath("//div[@class='user-menu dropdown-menu show']//a"));
        CommonMethods.waitForElementVisible(logoutButton);
        for(WebElement iterate : list){
            if(iterate.getText().equals(name)){
                iterate.click();
            }
        }
    }

    public void checkLogoutMessage(String text) throws InterruptedException {

        Thread.sleep(2000);
        String actualText = logoutMessage.getText();
        CommonMethods.waitForElementVisible(logoutMessage);
        Assert.assertTrue(actualText.contains(text));
    }





}
