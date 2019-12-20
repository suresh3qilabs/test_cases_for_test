package com.ffcrm.pages.accounts;

import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;

public class SearchAccountPage {
    WebDriver driver;

    @FindBy(xpath="//input[@placeholder=\"Search accounts\"]")
    public WebElement searchTextBox;

    @FindBy(xpath="//div[@id=\"accounts\"]/li/div[2]/a")
    public WebElement firstResult;

    @FindBy(xpath="//div[@id=\"accounts\"]/div")
    public WebElement accountNotFoundError;

    public SearchAccountPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

}
