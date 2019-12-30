package com.ffcrm.pages.campaigns;


import com.ffcrm.pages.login.LoginPage;
import com.qmetry.qaf.automation.ui.WebDriverBaseTestPage;
import com.qmetry.qaf.automation.ui.annotations.FindBy;
import com.qmetry.qaf.automation.ui.api.PageLocator;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebElement;

public class CreateCampaignPage extends WebDriverBaseTestPage<LoginPage> {


	@FindBy(locator="//div[@class=\"tabs\"]//a[contains(text(),\"Campaigns\")]")
	private QAFWebElement tabCampaigns;

	@FindBy(locator="//a[text()=\"Create Campaign\"]")
	private QAFWebElement createCampaign;

	@FindBy(locator="campaign_name")
	private QAFWebElement campaignName;

	@FindBy(locator="campaign_starts_on")
	private QAFWebElement startDate;

	@FindBy(locator="campaign_ends_on")
	private QAFWebElement endDate;

	@FindBy(locator="campaign_status")
	private QAFWebElement status;

	@FindBy(locator="//input[@value=\"Create Campaign\"]")
	private QAFWebElement createCampaignButton;


	public QAFWebElement getTabCampaigns() {
		return tabCampaigns;
	}

	public QAFWebElement getCreateCampaign() {
		return createCampaign;
	}

	public  QAFWebElement getCampaignName() {
		return  campaignName;
	}

	public QAFWebElement getStartDate() {
		return startDate;
	}
	public QAFWebElement getEndDate() {
		return  endDate;
	}
	public QAFWebElement getStatus() {
		return status;
	}
    public QAFWebElement getCreateCampaignButton() {
		return createCampaignButton;
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
		return createCampaign.isPresent();
	}

   /* @Override
    public void launchPage(PageLocator locator, Object... args) {
        super.launchPage(locator, args);
    }*/
}


