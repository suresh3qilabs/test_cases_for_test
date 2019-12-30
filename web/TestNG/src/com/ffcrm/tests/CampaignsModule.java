package com.ffcrm.tests;

import com.ffcrm.pages.campaigns.CreateCampaignPage;
import com.ffcrm.pages.campaigns.EditCampaignPage;
import com.ffcrm.pages.campaigns.SearchCampaignPage;
import com.qmetry.qaf.automation.testng.dataprovider.QAFDataProvider;
import com.qmetry.qaf.automation.ui.DefaultPageLocator;
import com.qmetry.qaf.automation.ui.WebDriverTestCase;
import org.openqa.selenium.Keys;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

import java.util.Map;

public class CampaignsModule extends WebDriverTestCase {

    //Created name and add generate random number method from Utility class
    String campaignName = "demo" + Utility.getRandomNumber();
    String oldCampaingName = "";
    //Created object of class locators


    //Reading data from excel: provided excel path, sheet name and key
    @QAFDataProvider(dataFile = "resources/data/test_data.xls", sheetName = "Campaigns", key = "createCampaign")
    @Test(groups = {"Smoke Test"})
    //@Test(groups = {"Smoke Test"})
        public void createCampaign(Map<String, String> tcData) throws InterruptedException {
        CreateCampaignPage objCreateCampaignPage = new CreateCampaignPage();
        EditCampaignPage objEditCampaignPage = new EditCampaignPage();
        SearchCampaignPage objSearchCampaignPage = new SearchCampaignPage();
        objCreateCampaignPage.launchPage(new DefaultPageLocator());
        String startDate = String.valueOf(tcData.get("startDate"));
        String endDate = String.valueOf(tcData.get("endDate"));
        String status = tcData.get("status");
        objCreateCampaignPage.getTabCampaigns().click();
        objCreateCampaignPage.getCreateCampaign().click();
        Thread.sleep(2000);
        objCreateCampaignPage.getCampaignName().sendKeys(campaignName);
        objCreateCampaignPage.getStartDate().sendKeys(startDate);
        objCreateCampaignPage.getEndDate().sendKeys(endDate);
        Utility.selctFromDD(objCreateCampaignPage.getStatus(), status);
        objCreateCampaignPage.getCreateCampaignButton().click();

        Thread.sleep(2000);

        //Searching for created campaign.

        objSearchCampaignPage.getSearchTextBox().sendKeys(campaignName);

        Thread.sleep(2000);
        System.out.println(campaignName);
        objSearchCampaignPage.getFirstResult().assertText(campaignName);

        System.out.println("Pass: Campaign " + campaignName + " is found in the search results!");
        Thread.sleep(3000);
        oldCampaingName = campaignName;
        //getDriver().close();

    }


    @QAFDataProvider(dataFile = "resources/data/test_data.xls", sheetName = "Campaigns", key = "editCampaign")
   @Test(groups = {"Smoke Test"})
    //@Test(groups = {"Smoke Test"})
    public void editCampaign(Map <String, String> data) throws InterruptedException {
        CreateCampaignPage objCreateCampaignPage = new CreateCampaignPage();
        EditCampaignPage objEditCampaignPage = new EditCampaignPage();
        SearchCampaignPage objSearchCampaignPage = new SearchCampaignPage();
        objCreateCampaignPage.launchPage(new DefaultPageLocator());
        String status = data.get("status");
        String massage = "********** Updating Campaign status to "+status+" *******************";
        System.out.println(oldCampaingName);

        objCreateCampaignPage.getTabCampaigns().click();
        objSearchCampaignPage.getSearchTextBox().clear();
        objSearchCampaignPage.getSearchTextBox().sendKeys(oldCampaingName);

        Thread.sleep(2000);

        objSearchCampaignPage.getFirstResult().click();

        Thread.sleep(2000);

       objEditCampaignPage.getEditCampaign().click();
       Utility.selctFromDD( objCreateCampaignPage.getStatus(), status);
        Thread.sleep(2000);
       objEditCampaignPage.getSaveCampaign().click();
        Thread.sleep(2000);
       System.out.println(massage);


    }

    @Test(groups = {"Smoke Test"})
   // @Test(groups = {"Smoke Test"})
    public void deleteCampaign() throws InterruptedException {
         ///Todo  make  scripts close the browser after each test
        CreateCampaignPage objCreateCampaignPage = new CreateCampaignPage();
        EditCampaignPage objEditCampaignPage = new EditCampaignPage();
        SearchCampaignPage objSearchCampaignPage = new SearchCampaignPage();
        objCreateCampaignPage.launchPage(new DefaultPageLocator());
        String message = ("**************** Deleting Campaing account " + oldCampaingName +" ***************");
        String errorMessage = "Couldn't find any campaigns matching " + oldCampaingName + "; please try another query.";
         objCreateCampaignPage.getTabCampaigns().click();

        objSearchCampaignPage.getSearchTextBox().clear();
        objSearchCampaignPage.getSearchTextBox().sendKeys(oldCampaingName);
        Thread.sleep(2000);
        objSearchCampaignPage.getFirstResult().click();
        objEditCampaignPage.getDeleteCampaign().click();
        Thread.sleep(1000);
        objEditCampaignPage.getConfirmDelete().click();
        System.out.println(message);
        objSearchCampaignPage.getSearchTextBox().sendKeys(oldCampaingName);
        Thread.sleep(1000);
        objSearchCampaignPage.getCampaignNotFoundError().assertText(errorMessage);
        Thread.sleep(3000);


    }


}
