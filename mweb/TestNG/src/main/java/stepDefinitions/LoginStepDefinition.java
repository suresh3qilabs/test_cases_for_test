package stepDefinitions;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import java.util.Map;

public class LoginStepDefinition{

	 WebDriver driver;
//      @Parameters({"CHROMEDRIVER_PATH"})
	 @Given("^user is already on Login Page$")
	 public void user_already_on_login_page(){
	 String webDri =System.getProperty("webDri");

	 if(webDri.contains("geckodriver")){
	        System.setProperty("webdriver.gecko.driver",webDri);
	       driver = new FirefoxDriver();

	 }else{
	        System.setProperty("webdriver.chrome.driver",webDri);
	       driver = new ChromeDriver();

	 }
	 driver.get("https://glacial-savannah-53106.herokuapp.com/login");
	 }


	
	 @When("^title of login page is CRM$")
	 public void title_of_login_page_is_CRM(){
	 String title = driver.getTitle();
	 System.out.println(title);
	 Assert.assertEquals("Fat Free CRM", title);
	 }
	
	 //Reg Exp:
	 //1. \"([^\"]*)\"
	 //2. \"(.*)\"
	
	 @Then("^user enters \"(.*)\" and \"(.*)\"$")
	 public void user_enters_username_and_password(String username, String password){
	 driver.findElement(By.name("authentication[username]")).sendKeys(username);
	 driver.findElement(By.name("authentication[password]")).sendKeys(password);
	 }
	
	 @Then("^user clicks on login button$")
	 public void user_clicks_on_login_button() {
	 WebElement loginBtn = driver.findElement(By.name("commit")); //driver.findElement(By.xpath("//div[@class='ui fluid large blue submit button']"));
	 JavascriptExecutor js = (JavascriptExecutor)driver;
	 js.executeScript("arguments[0].click();", loginBtn);
	 }
	
	
	 @Then("^user is on home page$")
	 public void user_is_on_hopme_page(){
// 	 String title = driver.getTitle();
// 	 System.out.println("Home Page title ::"+ title);
// 	 Assert.assertEquals("CRM", title);
       String text = driver.findElement(By.id("welcome_username")).getText();
       Assert.assertEquals("admin", text);
	 }
	 
// 	 @Then("^user moves to new contact page$")
// 	 public void user_moves_to_new_contact_page() {
// 		driver.switchTo().frame("mainpanel");
// 		Actions action = new Actions(driver);
// 		action.moveToElement(driver.findElement(By.xpath("//a[contains(text(),'Contacts')]"))).build().perform();
// 		driver.findElement(By.xpath("//a[contains(text(),'New Contact')]")).click();
//
// 		}
//
//
// 	 @Then("^user enters contact details \"(.*)\" and \"(.*)\" and \"(.*)\"$")
// 	 public void user_enters_contacts_details(String firstname, String lastname, String position){
// 		 driver.findElement(By.id("first_name")).sendKeys(firstname);
// 		 driver.findElement(By.id("surname")).sendKeys(lastname);
// 		 driver.findElement(By.id("company_position")).sendKeys(position);
// 		 driver.findElement(By.xpath("//input[@type='submit' and @value='Save']")).click();
// 	 }
	 @Then("^user logout$")
     public void user_logout(){
 // 	 String title = driver.getTitle();
 // 	 System.out.println("Home Page title ::"+ title);
 // 	 Assert.assertEquals("CRM", title);
       WebElement logoutBtn = driver.findElement(By.linkText("Logout")); //driver.findElement(By.xpath("//div[@class='ui fluid large blue submit button']"));
       JavascriptExecutor js = (JavascriptExecutor)driver;
       js.executeScript("arguments[0].click();", logoutBtn);
     }

	 @Then("^Close the browser$")
	 public void close_the_browser(){
		 driver.quit();
	 }
	
	
	

}
