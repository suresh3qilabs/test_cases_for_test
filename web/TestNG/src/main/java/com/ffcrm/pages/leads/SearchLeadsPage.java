package com.ffcrm.pages.leads;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SearchLeadsPage {
    WebDriver driver;

    @FindBy(xpath="//input[@placeholder=\"Search leads\"]")
    public WebElement searchTextBox;

    @FindBy(xpath="//div[@id=\"leads\"]/li/div[2]/a")
    public WebElement firstResult;

    @FindBy(xpath="//div[@id=\"leads\"]/div")
    public WebElement leadNotFoundError;

    public SearchLeadsPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

}
