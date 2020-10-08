package com.ffcrm.tests;

import com.ffcrm.pages.campaigns.CreateCampaignPage;
import com.ffcrm.pages.campaigns.EditCampaignPage;
import com.ffcrm.pages.campaigns.SearchCampaignPage;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.util.HashMap;
public class CampaignsModule extends BaseClass{
	String name = "test" + Utility.getRandomNumber();

	@Test(dataProvider = "excelData", groups = {"Smoke Test"})
	public void createCampaign(HashMap<String, String> tcData) throws InterruptedException {
		// {"create_account" => {"testcase"=> "create_account", "category": "Vendor"}}
//		HashMap<String, String> tcData= excelData.get("createCampaign");
		String status = tcData.get("Status");
		String startDate = tcData.get("Start Date");
		String endDate = tcData.get("End Date");

		CreateCampaignPage objCreateCampaignPage = new CreateCampaignPage(driver);
		SearchCampaignPage objSearchCampaignPage = new SearchCampaignPage(driver);

		objCreateCampaignPage.tabCampaigns.click();
		Thread.sleep(3000);
		objCreateCampaignPage.createCampaign.click();
		Thread.sleep(3000);

		objCreateCampaignPage.campaignName.sendKeys(name);
		objCreateCampaignPage.startDate.sendKeys(startDate);
		objCreateCampaignPage.endDate.sendKeys(endDate);
		Utility.selctFromDD(objCreateCampaignPage.status, status);
		objCreateCampaignPage.createCampaignButton.click();
		Thread.sleep(3000);

		// Search for created account
		objSearchCampaignPage.searchTextBox.sendKeys(name);

		Thread.sleep(5000);

		// objCreateCampaignPage.searchTextBox.sendKeys(Keys.ENTER);
		Assert.assertEquals(name, objSearchCampaignPage.firstResult.getText(), "\nFail: Campaign " + name + " is not found in the search results!");

		System.out.println("Pass: Campaign " + name + " is found in the search results!");
		Thread.sleep(3000);
	}

	@Test(dataProvider = "excelData", groups = {"Smoke Test"})
	public void editCampaign(HashMap<String, String> tcData) throws InterruptedException{
		System.out.println("\n********************** Editing Account: " + name + " **********************\n");
//		HashMap<String, String> tcData = excelData.get("editCampaign");
		String phone = tcData.get("phone");
		String email = tcData.get("email");

		CreateCampaignPage objCreateCampaignPage = new CreateCampaignPage(driver);
		EditCampaignPage objEditCampaignPage = new EditCampaignPage(driver);
		SearchCampaignPage objSearchCampaignPage = new SearchCampaignPage(driver);

		objCreateCampaignPage.tabCampaigns.click();
		objSearchCampaignPage.searchTextBox.clear();
		objSearchCampaignPage.searchTextBox.sendKeys(name);
		Thread.sleep(3000);
		objSearchCampaignPage.firstResult.click();
		Thread.sleep(3000);

		objEditCampaignPage.editCampaign.click();
		Thread.sleep(5000);
		name = "test" + Utility.getRandomNumber();
		objEditCampaignPage.campaignName.clear();
		objEditCampaignPage.campaignName.sendKeys(name);
//		objEditCampaignPage.contactInfoLink.click();
		Thread.sleep(2000);
		objEditCampaignPage.saveCampaign.click();
		Thread.sleep(3000);

		objCreateCampaignPage.tabCampaigns.click();
		objSearchCampaignPage.searchTextBox.sendKeys(name);
		Assert.assertEquals(name, objSearchCampaignPage.firstResult.getText(), "\nFail: Account" + name + "is not found in the search results!");

		System.out.println("Pass: Account " + name + " is found in the search results!");
		Thread.sleep(3000);
	}

	@Test(groups = {"Smoke Test"})
	public void deleteCampaign() throws InterruptedException{
		System.out.println("\n********************** Deleting the account: " + name + " **********************\n");

		CreateCampaignPage objCreateCampaignPage = new CreateCampaignPage(driver);
		EditCampaignPage objEditCampaignPage = new EditCampaignPage(driver);
		SearchCampaignPage objSearchCampaignPage = new SearchCampaignPage(driver);
		String errorMessage = "Couldn't find any campaigns matching";

		// Todo: Move tab locators to HomePage
		objCreateCampaignPage.tabCampaigns.click();
		Thread.sleep(3000);
		objSearchCampaignPage.searchTextBox.clear();
		objSearchCampaignPage.searchTextBox.sendKeys(name);
		Thread.sleep(3000);
		objSearchCampaignPage.firstResult.click();
		objEditCampaignPage.deleteCampaign.click();
		objEditCampaignPage.confirmDelete.click();
		Thread.sleep(2000);
		objSearchCampaignPage.searchTextBox.sendKeys(name);
		Thread.sleep(2000);
		if (objSearchCampaignPage.campaignNotFoundError.getText().contains(errorMessage)) {
			System.out.println("Pass: Account " + name + " has been successfully deleted!");
		}
		else{
			Assert.fail("Fail:- Failed to find the error message: Couldn't find any campaigns matching  " + name +" in the search results.\nAccount " + name + " is not deleted!");
		}
	}
}
