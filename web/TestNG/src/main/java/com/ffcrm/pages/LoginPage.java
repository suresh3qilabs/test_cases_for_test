package com.ffcrm.pages;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LoginPage{
	WebDriver driver;
	@FindBy(id="authentication_username")
	public WebElement userName;
	
	@FindBy(id="authentication_password")
	public WebElement password;
	
	@FindBy(xpath="//input[@value=\"Login\"]")
	public WebElement loginButton;

	public LoginPage(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}
}
