package com.ffcrm.pages.accounts;

import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import org.openqa.selenium.support.PageFactory;

public class SearchAccountPage extends WebDriverBaseTestPage<LoginPage> {
    WebDriver driver;

    public WebDriver getDriver() {
        return driver;
    }

    public QAFWebElement getSearchTextBox() {
        return searchTextBox;
    }

    public QAFWebElement getFirstResult() {
        return firstResult;
    }

    public QAFWebElement getAccountNotFoundError() {
        return accountNotFoundError;
    }

    @FindBy(locator="//input[@name=\"query\" and @id=\"query\"]")
    private QAFWebElement searchTextBox;

    @FindBy(locator="//div[@id=\"accounts\"]/li/div[2]/a")
    private QAFWebElement firstResult;

    @FindBy(locator="//div[@id=\"accounts\"]/div")
    private QAFWebElement accountNotFoundError;

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
