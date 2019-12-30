package com.ffcrm.pages.accounts;

import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class CreateAccountsPage extends WebDriverBaseTestPage<LoginPage> {
    @FindBy(locator = "//div[@class=\"tabs\"]//a[contains(text(),\"Accounts\")]")
    private QAFWebElement tabAccounts;

    @FindBy(locator = "//a[text()=\"Create Account\"]")
    private QAFWebElement createAccount;

    @FindBy(locator="account_category")
    private QAFWebElement category;

    @FindBy(locator="account_name")
    private QAFWebElement accountName;

    @FindBy(locator="account_rating")
    private QAFWebElement accountRating;

    @FindBy(locator="//a[text()=\" Contact Information\"]")
    private QAFWebElement contactInfoLink;

    @FindBy(locator="account_phone")
    private QAFWebElement accountPhone;

    @FindBy(locator="account_email")
    private QAFWebElement accountEmail;

    @FindBy(locator="account_billing_address_attributes_street1")
    private QAFWebElement billingAddressStreet1;

    @FindBy(locator="//input[@value=\"Create Account\"]")
    private QAFWebElement createAccountButton;

    @FindBy(locator="//input[@placeholder=\"Search accounts\"]")
    private QAFWebElement searchTextBox;

    @FindBy(locator="//div[@id=\"accounts\"]/li/div[2]/a")
    private QAFWebElement firstResult;

    public QAFWebElement getTabAccounts() {
        return tabAccounts;
    }

    public QAFWebElement getCreateAccount() {
        return createAccount;
    }

    public QAFWebElement getCategory() {
        return category;
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

    public QAFWebElement getBillingAddressStreet1() {
        return billingAddressStreet1;
    }

    public QAFWebElement getCreateAccountButton() {
        return createAccountButton;
    }

    public QAFWebElement getSearchTextBox() {
        return searchTextBox;
    }

    public QAFWebElement getFirstResult() {
        return firstResult;
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
        return createAccount.isPresent();
    }

   /* @Override
    public void launchPage(PageLocator locator, Object... args) {
        super.launchPage(locator, args);
    }*/
}