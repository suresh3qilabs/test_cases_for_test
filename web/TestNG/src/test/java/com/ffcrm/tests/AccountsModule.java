package com.ffcrm.tests;

import com.ffcrm.pages.accounts.CreateAccountPage;
import com.ffcrm.pages.accounts.EditAccountPage;
import com.ffcrm.pages.accounts.SearchAccountPage;
import com.ffcrm.tests.runner.RunCukesTest;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.util.HashMap;

public class AccountsModule extends BaseClass {
	String name = "test" + Utility.getRandomNumber();

//	@Given("I am logged in to Fat Free CRM Application")
    @Test(dataProvider = "excelData")
	public void createAccount(HashMap<String,String> tcData) throws InterruptedException {
		// {"create_account" => {"testcase"=> "create_account", "category": "Vendor"}}
//		HashMap<String, String> tcData= excelData.get("createCampaign");

		/*HashMap<String, String> tcData = new HashMap<String,String>(){{
			put("category", "Vendor");
			put("phone", "1234567890");
			put("email", "test@3qi.com");
			put("address", "test address");
		}};*/


		String category = tcData.get("category");
		String phone = tcData.get("phone");
		String email = tcData.get("email");
		String address = tcData.get("address");

		CreateAccountPage objCreateAccountPage = new CreateAccountPage(driver);
		SearchAccountPage objSearchAccountPage = new SearchAccountPage(driver);

		objCreateAccountPage.tabAccounts.click();
		Thread.sleep(3000);
		objCreateAccountPage.createAccount.click();
		Thread.sleep(3000);

		objCreateAccountPage.accountName.sendKeys(name);

		Utility.selctFromDD(objCreateAccountPage.category, category);

		objCreateAccountPage.contactInfoLink.click();

		objCreateAccountPage.accountPhone.sendKeys(phone);

		objCreateAccountPage.accountEmail.sendKeys(email);

		objCreateAccountPage.billingAddressStreet1.sendKeys(address);

		objCreateAccountPage.createAccountButton.click();

		Thread.sleep(3000);

		// Search for created account
		objSearchAccountPage.searchTextBox.sendKeys(name);

		Thread.sleep(5000);

		// objCreateAccountPage.searchTextBox.sendKeys(Keys.ENTER);
		Assert.assertEquals(name, objSearchAccountPage.firstResult.getText(), "\nFail: Account " + name + " is not found in the search results!");

		System.out.println("Pass: Account " + name + " is found in the search results!");
		Thread.sleep(3000);
	}

	@Test(dataProvider = "excelData", groups = {"Smoke Test"})
	public void editAccount(HashMap<String, String> tcData) throws InterruptedException{
		System.out.println("\n********************** Editing Account: " + name + " **********************\n");
//		HashMap<String, String> tcData = excelData.get("editCampaign");
		String phone = tcData.get("phone");
		String email = tcData.get("email");

		CreateAccountPage objCreateAccountPage = new CreateAccountPage(driver);
		EditAccountPage objEditAccountPage = new EditAccountPage(driver);
		SearchAccountPage objSearchAccountPage = new SearchAccountPage(driver);

		objCreateAccountPage.tabAccounts.click();
		objSearchAccountPage.searchTextBox.clear();
		objSearchAccountPage.searchTextBox.sendKeys(name);
		Thread.sleep(3000);
		objSearchAccountPage.firstResult.click();
		Thread.sleep(3000);

		objEditAccountPage.editAccount.click();
		Thread.sleep(5000);
		name = "test" + Utility.getRandomNumber();
		objEditAccountPage.accountName.clear();
		objEditAccountPage.accountName.sendKeys(name);
//		objEditAccountPage.contactInfoLink.click();
		Thread.sleep(2000);
		objEditAccountPage.accountPhone.clear();
		objEditAccountPage.accountPhone.sendKeys(phone);
		objEditAccountPage.accountEmail.clear();
		objEditAccountPage.accountEmail.sendKeys(email);
		objEditAccountPage.saveAccount.click();
		Thread.sleep(3000);

		objCreateAccountPage.tabAccounts.click();
		objSearchAccountPage.searchTextBox.sendKeys(name);
		Assert.assertEquals(name, objSearchAccountPage.firstResult.getText(), "\nFail: Account" + name + " is not found in the search results!");

		System.out.println("Pass: Account " + name + " is found in the search results!");
		Thread.sleep(3000);
	}

	@Test(groups = {"Smoke Test"})
	public void deleteAccount() throws java.lang.InterruptedException{
		System.out.println("\n********************** Deleting the account: " + name + " **********************\n");

		CreateAccountPage objCreateAccountPage = new CreateAccountPage(driver);
		EditAccountPage objEditAccountPage = new EditAccountPage(driver);
		SearchAccountPage objSearchAccountPage = new SearchAccountPage(driver);
		String errorMessage = "Couldn't find any accounts matching";

		// Todo: Move tab locators to HomePage
		objCreateAccountPage.tabAccounts.click();
		Thread.sleep(3000);
		objSearchAccountPage.searchTextBox.clear();
		objSearchAccountPage.searchTextBox.sendKeys(name);
		Thread.sleep(3000);
		objSearchAccountPage.firstResult.click();
		objEditAccountPage.deleteAccount.click();
		objEditAccountPage.confirmDelete.click();
		Thread.sleep(2000);
		objSearchAccountPage.searchTextBox.sendKeys(name);
		Thread.sleep(2000);
		System.out.println(objSearchAccountPage.accountNotFoundError.getText());
		if (objSearchAccountPage.accountNotFoundError.getText().contains("Couldn't find any accounts")) {
			System.out.println("Pass: Account " + name + " has been successfully deleted!");
		}
		else{
			Assert.fail("Fail: Failed to find the error message: Couldn't find any accounts matching  " + name +" in the search results.\nAccount " + name + " is not deleted!");
		}
	}
}
