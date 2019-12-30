package com.ffcrm.pages.leads;


import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class CreateLeadsPage extends WebDriverBaseTestPage<LoginPage> {


    @FindBy(locator="//div[@class=\"tabs\"]//a[contains(text(),\"Leads\")]")
    private QAFWebElement tabLeads;

    @FindBy(locator="//a[text()=\"Create Lead\"]")
    private QAFWebElement createLead;

    @FindBy(locator="lead_first_name")
    private QAFWebElement leadFirstName;

    @FindBy(locator="lead_last_name")
    private QAFWebElement leadLastName;

    @FindBy(locator="lead_email")
    private QAFWebElement leadEmail;

    @FindBy(locator="lead_phone")
    private QAFWebElement leadPhone;

    @FindBy(locator="//input[@value=\"Create Lead\"]")
    private QAFWebElement createLeadButton;

    @FindBy(locator="//a[text()=\" Contact Information\"]")
    private QAFWebElement contactInfoLink;


    public QAFWebElement getTabLeads() {
        return  tabLeads;
    }
    public QAFWebElement getCreateLead() {
        return  createLead;
    }
    public  QAFWebElement getLeadFirstName() {
        return  leadFirstName;
    }

    public QAFWebElement getLeadLastName() {
        return  leadLastName;
    }

    public QAFWebElement getLeadEmail() {
        return  leadEmail;
    }

    public QAFWebElement getLeadPhone() {
        return  leadPhone;
    }

    public QAFWebElement getCreateLeadButton() {
        return createLeadButton;
    }
    public QAFWebElement getContactInfoLink() {
        return contactInfoLink;
    }

    @Override
    protected void initParent() {
        parent = new LoginPage();
    }

    @Override
    protected void openPage(PageLocator arg0, Object... arg1) {
//        parent.openPage(arg0);
//        parent.launchPage(new DefaultPageLocator());
//        parent.isPageActive(new DefaultPageLocator());
        parent.login();
    }

    @Override
    public boolean isPageActive(PageLocator loc, Object... args) {
        return createLead.isPresent();
    }

   /* @Override
    public void launchPage(PageLocator locator, Object... args) {
        super.launchPage(locator, args);
    }*/


}
