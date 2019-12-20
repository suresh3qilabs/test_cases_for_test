package com.ffcrm.pages.accounts;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;


public class CreateAccountPage {
	WebDriver driver;

	@FindBy(xpath="//div[@class=\"tabs\"]//a[contains(text(),\"Accounts\")]")
	public WebElement tabAccounts;

	@FindBy(xpath="//a[text()=\"Create Account\"]")
	public WebElement createAccount;
	
	@FindBy(id="account_category")
	public WebElement category;

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

	@FindBy(id="account_billing_address_attributes_street1")
	public WebElement billingAddressStreet1;

	@FindBy(xpath="//input[@value=\"Create Account\"]")
	public WebElement createAccountButton;

	@FindBy(xpath="//input[@placeholder=\"Search accounts\"]")
	public WebElement searchTextBox;

	@FindBy(xpath="//div[@id=\"accounts\"]/li/div[2]/a")
	public WebElement firstResult;


	public CreateAccountPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

}
