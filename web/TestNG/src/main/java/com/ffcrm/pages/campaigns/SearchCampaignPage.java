package com.ffcrm.pages.campaigns;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SearchCampaignPage {
    WebDriver driver;

    @FindBy(xpath="//input[@placeholder=\"Search campaigns\"]")
    public WebElement searchTextBox;

    @FindBy(xpath="//div[@id=\"campaigns\"]/li/div[2]/a")
    public WebElement firstResult;

    @FindBy(xpath="//div[@id=\"campaigns\"]/div")
    public WebElement campaignNotFoundError;

    public SearchCampaignPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

}
