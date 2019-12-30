package com.ffcrm.pages.campaigns;


import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class SearchCampaignPage extends WebDriverBaseTestPage<LoginPage> {


    @FindBy(locator="//input[@placeholder=\"Search campaigns\"]")
    private QAFWebElement searchTextBox;

    @FindBy(locator="//div[@id=\"campaigns\"]/li/div[2]/a")
    private QAFWebElement firstResult;

    @FindBy(locator="//div[@id=\"campaigns\"]/div")
    private QAFWebElement campaignNotFoundError;




    public QAFWebElement getSearchTextBox() {
        return searchTextBox;
    }
    public  QAFWebElement getFirstResult() {
        return firstResult;
    }
    public  QAFWebElement getCampaignNotFoundError() {
        return  campaignNotFoundError;
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