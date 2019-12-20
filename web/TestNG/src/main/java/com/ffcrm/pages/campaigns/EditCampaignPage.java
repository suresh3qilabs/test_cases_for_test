package com.ffcrm.pages.campaigns;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EditCampaignPage {
    WebDriver driver;
    @FindBy(xpath="//div[@id=\"menu\"]/a[text()=\"Delete?\"]")
    public WebElement deleteCampaign;

    @FindBy(xpath="//div[@id=\"menu\"]/a[@data-method=\"delete\"]")
    public WebElement confirmDelete;

    @FindBy(xpath = "//div[@id=\"menu\"]//a[text()=\"Edit\"]")
    public WebElement editCampaign;

    @FindBy(xpath="//input[@name=\"commit\" and @value=\"Save Campaign\"]")
    public WebElement saveCampaign;

    @FindBy(id="campaign_name")
    public WebElement campaignName;

    @FindBy(id="campaign_rating")
    public WebElement campaignRating;

    @FindBy(xpath="//a[text()=\" Contact Information\"]")
    public WebElement contactInfoLink;

    @FindBy(id="campaign_phone")
    public WebElement campaignPhone;

    @FindBy(id="campaign_email")
    public WebElement campaignEmail;

    public EditCampaignPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

}
