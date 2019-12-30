package com.ffcrm.pages.login;

import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.api.WebDriverTestPage;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

import java.util.concurrent.TimeUnit;

public class LoginPage extends WebDriverBaseTestPage<WebDriverTestPage> {

    @FindBy(locator = "authentication_username")
    private QAFWebElement userName;

    public QAFWebElement getUserName() {
        return userName;
    }

    public QAFWebElement getPassword() {
        return password;
    }

    public QAFWebElement getLoginButton() {
        return loginButton;
    }

    @FindBy(locator = "authentication_password")
    private QAFWebElement password;

    @FindBy(locator = "//input[@value=\"Login\"]")
    private QAFWebElement loginButton;

    @Override
    public boolean isPageActive(PageLocator loc, Object... args) {
        return loginButton.isPresent();
    }

    @Override
    public void openPage(PageLocator arg0, Object... arg1) {
//        parent.launchPage(new DefaultPageLocator());
          driver.get("/");
          driver.manage().window().maximize();
    }

    public void login() {
        driver.get("/");
        driver.manage().window().maximize();
        this.userName.sendKeys(pageProps.getString("user_name"));
        this.password.sendKeys(pageProps.getString("password"));
        this.loginButton.click();
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    }
}
