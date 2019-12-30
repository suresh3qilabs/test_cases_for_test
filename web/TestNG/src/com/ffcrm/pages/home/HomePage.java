package com.ffcrm.pages.home;

import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.WebDriverTestCase;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class HomePage extends WebDriverBaseTestPage<LoginPage> {

    @FindBy(locator = "//div[@class=\"tabs\"]//a[contains(text(),\"Accounts\")]")
    private QAFWebElement tabAccounts;

    @FindBy(locator="//div[@class=\"tabs\"]//a[contains(text(),\"Campaigns\")]")
    private QAFWebElement tabCampaigns;

    @FindBy(locator="//div[@class=\"tabs\"]//a[contains(text(),\"Leads\")]")
    private QAFWebElement tabLeads;

   @FindBy(locator = "(//div[@class='tabs'])[1])")
   private QAFWebElement tabs;

    @FindBy(locator="//input[@id='query']")
    private QAFWebElement searchTextBox;

    public QAFWebElement getTabAccounts() {
        return tabAccounts;
    }

    public QAFWebElement getTabCampaigns() {
        return tabCampaigns;
    }

    public QAFWebElement getTabLeads() {
        return tabLeads;
    }

    public QAFWebElement getTabs() {
        return tabs;
    }

    public QAFWebElement getSearchTextBox() {
        return searchTextBox;
    }

    @Override
    protected void initParent() {
        parent = new LoginPage();
    }

    @Override
    protected void openPage(PageLocator arg0, Object... arg1) {
        parent.login();
    }

    @Override
    public boolean isPageActive(PageLocator loc, Object... args) {
        return tabs.isPresent();
    }


}


