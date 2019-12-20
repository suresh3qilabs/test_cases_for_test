package com.ffcrm.pages.leads;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class EditLeadsPage {
    WebDriver driver;
    @FindBy(xpath="//div[@id=\"menu\"]/a[text()=\"Delete?\"]")
    public WebElement deleteLead;

    @FindBy(xpath="//div[@id=\"menu\"]/a[@data-method=\"delete\"]")
    public WebElement confirmDelete;

    @FindBy(xpath = "//div[@id=\"menu\"]//a[text()=\"Edit\"]")
    public WebElement editLead;

    @FindBy(xpath="//input[@name=\"commit\" and @value=\"Save Lead\"]")
    public WebElement saveLead;

    @FindBy(id="lead_first_name")
    public WebElement leadFirstName;

    @FindBy(id="lead_last_name")
    public WebElement leadLastName;

    @FindBy(id="lead_email")
    public WebElement leadEmail;

    @FindBy(id="lead_phone")
    public WebElement leadPhone;

    @FindBy(xpath="//a[text()=\" Contact Information\"]")
    public WebElement contactInfoLink;

    public EditLeadsPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

}
