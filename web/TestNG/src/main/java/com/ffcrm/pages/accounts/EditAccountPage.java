package com.ffcrm.pages.accounts;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

public class EditAccountPage {
    WebDriver driver;
    @FindBy(xpath="//div[@id=\"menu\"]/a[text()=\"Delete?\"]")
    public WebElement deleteAccount;

    @FindBy(xpath="//div[@id=\"menu\"]/a[@data-method=\"delete\"]")
    public WebElement confirmDelete;

    @FindBy(xpath = "//div[@id=\"menu\"]//a[text()=\"Edit\"]")
    public WebElement editAccount;

    @FindBy(xpath="//input[@name=\"commit\" and @value=\"Save Account\"]")
    public WebElement saveAccount;

    @FindBy(id="account_name")
    public WebElement accountName;

    @FindBy(id="account_rating")
    public WebElement accountRating;

    @FindBy(xpath="//a[text()=\" Contact Information\"]")
    public WebElement contactInfoLink;

    @FindBy(id="account_phone")
    public WebElement accountPhone;

    @FindBy(id="account_email")
    public WebElement accountEmail;

    public EditAccountPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

}
