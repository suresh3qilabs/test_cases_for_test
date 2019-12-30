package com.ffcrm.pages.leads;


import com.ffcrm.pages.accounts.CreateAccountsPage;
import com.qmetry.qaf.automation.ui.DefaultPageLocator;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class EditLeadsPage extends WebDriverBaseTestPage<CreateLeadsPage> {


    @FindBy(locator="//div[@id=\"menu\"]/a[text()=\"Delete?\"]")
    private QAFWebElement deleteLead;

    @FindBy(locator="//div[@id=\"menu\"]/a[@data-method=\"delete\"]")
    private QAFWebElement confirmDelete;

    @FindBy(locator = "//div[@id=\"menu\"]//a[text()=\"Edit\"]")
    private QAFWebElement editLead;

    @FindBy(locator="//input[@name=\"commit\" and @value=\"Save Lead\"]")
    private QAFWebElement saveLead;

    @FindBy(locator="lead_first_name")
    private QAFWebElement leadFirstName;

    @FindBy(locator="lead_last_name")
    private QAFWebElement leadLastName;

    @FindBy(locator="lead_email")
    private QAFWebElement leadEmail;

    @FindBy(locator="lead_phone")
    private QAFWebElement leadPhone;

    @FindBy(locator="//a[text()=\" Contact Information\"]")
    private QAFWebElement contactInfoLink;



    public QAFWebElement getDeleteLead() {
        return  deleteLead;
    }

    public QAFWebElement getConfirmDelete() {
        return  confirmDelete;
    }
    public QAFWebElement getEditLead() {
        return  editLead;
    }
    public QAFWebElement getSaveLead() {
        return  saveLead;
    }
    public QAFWebElement getLeadFirstName() {
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
    public QAFWebElement getContactInfoLink() {
        return  contactInfoLink;
    }


    @Override
    protected void initParent() {
        parent = new CreateLeadsPage();
    }

    @Override
    protected void openPage(PageLocator arg0, Object... arg1) {
        parent.openPage(new DefaultPageLocator());
//        parent.openPage(arg0);
//        parent.launchPage(new DefaultPageLocator());
//        parent.isPageActive(new DefaultPageLocator());
//        parent.login();
    }

    @Override
    public boolean isPageActive(PageLocator loc, Object... args) {
        return saveLead.isPresent();
    }

}



