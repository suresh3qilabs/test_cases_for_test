package com.ffcrm.pages.campaigns;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;


public class CreateCampaignPage {
	WebDriver driver;

	@FindBy(xpath="//div[@class=\"tabs\"]//a[contains(text(),\"Campaigns\")]")
	public WebElement tabCampaigns;

	@FindBy(xpath="//a[text()=\"Create Campaign\"]")
	public WebElement createCampaign;

	@FindBy(id="campaign_name")
	public WebElement campaignName;

	@FindBy(id="campaign_starts_on")
	public WebElement startDate;

	@FindBy(id="campaign_ends_on")
	public WebElement endDate;

	@FindBy(id="campaign_status")
	public WebElement status;

	@FindBy(xpath="//input[@value=\"Create Campaign\"]")
	public WebElement createCampaignButton;


	public CreateCampaignPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

}
