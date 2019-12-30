package com.ffcrm.pages.leads;


import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class SearchLeadsPage extends WebDriverBaseTestPage<LoginPage> {


    @FindBy(locator="//input[@placeholder=\"Search leads\"]")
    private QAFWebElement searchTextBox;

    @FindBy(locator="//div[@id=\"leads\"]/li/div[2]/a")
    private QAFWebElement firstResult;

    @FindBy(locator="//div[@id=\"leads\"]/div")
    private QAFWebElement leadNotFoundError;

    public  QAFWebElement getSearchTextBox() {
        return  searchTextBox;
    }
    public  QAFWebElement getFirstResult() {
        return  firstResult;
    }
    public  QAFWebElement getLeadNotFoundError() {
        return leadNotFoundError;
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
        return searchTextBox.isPresent();
    }
}


