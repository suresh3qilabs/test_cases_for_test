package com.ffcrm.pages.campaigns;


import com.ffcrm.pages.accounts.CreateAccountsPage;
import com.qmetry.qaf.automation.ui.DefaultPageLocator;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class EditCampaignPage extends WebDriverBaseTestPage<CreateCampaignPage> {


    @FindBy(locator="//div[@id=\"menu\"]/a[text()=\"Delete?\"]")
    private QAFWebElement deleteCampaign;


    @FindBy(locator="//div[@id=\"menu\"]/a[@data-method=\"delete\"]")
    private QAFWebElement confirmDelete;

    @FindBy(locator = "//div[@id=\"menu\"]//a[text()=\"Edit\"]")
    private QAFWebElement editCampaign;

    @FindBy(locator="//input[@name=\"commit\" and @value=\"Save Campaign\"]")
    private QAFWebElement saveCampaign;

    @FindBy(locator="campaign_name")
    private QAFWebElement campaignName;

    @FindBy(locator="campaign_rating")
    private QAFWebElement campaignRating;

    @FindBy(locator="//a[text()=\" Contact Information\"]")
    private QAFWebElement contactInfoLink;

    @FindBy(locator="campaign_phone")
    private QAFWebElement campaignPhone;

    @FindBy(locator="campaign_email")
    private QAFWebElement campaignEmail;


    public QAFWebElement  getDeleteCampaign() {
        return  deleteCampaign;
    }
    public QAFWebElement getConfirmDelete () {
        return confirmDelete;
    }

    public QAFWebElement getEditCampaign() {
        return editCampaign;
    }
    public QAFWebElement getSaveCampaign() {
        return saveCampaign;
    }

    public QAFWebElement getCampaignName () {
        return campaignName;
    }
    public QAFWebElement getCampaignRating () {
        return campaignRating;
    }
    public QAFWebElement getContactInfoLink() {
        return contactInfoLink;
    }

    public QAFWebElement getCampaignPhone () {
        return campaignPhone;
    }
    public QAFWebElement getCampaignEmail () {
        return campaignEmail;
    }

    @Override
    protected void initParent() {
        parent = new CreateCampaignPage();
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
        return saveCampaign.isPresent();
    }

}

