package com.ffcrm.pages.accounts;

import com.qmetry.qaf.automation.testng.dataprovider.QAFDataProvider;
import com.qmetry.qaf.automation.ui.DefaultPageLocator;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class EditAccountPage extends WebDriverBaseTestPage<CreateAccountsPage> {

    @FindBy(locator = "//div[@id=\"menu\"]/a[text()=\"Delete?\"]")
    private QAFWebElement deleteAccount;

    @FindBy(locator="//div[@id=\"menu\"]/a[@data-method=\"delete\"]")
    private QAFWebElement confirmDelete;

    @FindBy(locator = "//div[@id=\"menu\"]//a[text()=\"Edit\"]")
    private QAFWebElement editAccount;

    @FindBy(locator="//input[@name=\"commit\" and @value=\"Save Account\"]")
    private QAFWebElement saveAccount;

    @FindBy(locator="account_name")
    private QAFWebElement accountName;


    public QAFWebElement getDeleteAccount() {
        return deleteAccount;
    }

    public QAFWebElement getConfirmDelete() {
        return confirmDelete;
    }

    public QAFWebElement getEditAccount() {
        return editAccount;
    }

    public QAFWebElement getSaveAccount() {
        return saveAccount;
    }

    public QAFWebElement getAccountName() {
        return accountName;
    }

    public QAFWebElement getAccountRating() {
        return accountRating;
    }

    public QAFWebElement getContactInfoLink() {
        return contactInfoLink;
    }

    public QAFWebElement getAccountPhone() {
        return accountPhone;
    }

    public QAFWebElement getAccountEmail() {
        return accountEmail;
    }


    @FindBy(locator="account_rating")
    private QAFWebElement accountRating;

    @FindBy(locator="//a[text()=\" Contact Information\"]")
    private QAFWebElement contactInfoLink;

    @FindBy(locator="account_phone")
    private QAFWebElement accountPhone;

    @FindBy(locator="account_email")
    private QAFWebElement accountEmail;



    @Override
    protected void initParent() {
        parent = new CreateAccountsPage();
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
        return saveAccount.isPresent();
    }

}
