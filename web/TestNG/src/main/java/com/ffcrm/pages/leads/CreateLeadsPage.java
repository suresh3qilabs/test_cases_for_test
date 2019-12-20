package com.ffcrm.pages.leads;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;

public class CreateLeadsPage {
    WebDriver driver;

    @FindBy(xpath="//div[@class=\"tabs\"]//a[contains(text(),\"Leads\")]")
    public WebElement tabLeads;

    @FindBy(xpath="//a[text()=\"Create Lead\"]")
    public WebElement createLead;

    @FindBy(id="lead_first_name")
    public WebElement leadFirstName;

    @FindBy(id="lead_last_name")
    public WebElement leadLastName;

    @FindBy(id="lead_email")
    public WebElement leadEmail;

    @FindBy(id="lead_phone")
    public WebElement leadPhone;

    @FindBy(xpath="//input[@value=\"Create Lead\"]")
    public WebElement createLeadButton;

    @FindBy(xpath="//a[text()=\" Contact Information\"]")
    public WebElement contactInfoLink;

    public CreateLeadsPage(WebDriver driver){
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }
}
