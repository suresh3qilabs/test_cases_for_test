package com.ffcrm.tests;

import com.ffcrm.pages.accounts.CreateAccountsPage;
import com.ffcrm.pages.accounts.EditAccountPage;
import com.ffcrm.pages.accounts.SearchAccountPage;
import com.qmetry.qaf.automation.testng.dataprovider.QAFDataProvider;
import com.qmetry.qaf.automation.ui.DefaultPageLocator;
import com.qmetry.qaf.automation.ui.WebDriverTestCase;
import org.testng.annotations.Test;

import java.util.Map;

public class AccountsModule extends WebDriverTestCase {

	/*@BeforeSuite(alwaysRun = true)
	public void setup() throws IOException {
		String pwd = System.getProperty("usr.dir");
		InputStream input = new FileInputStream(pwd + "resources\\application.properties");
		Properties props = new Properties();
		props.load(input);
	}*/

	String name = "test" + Utility.getRandomNumber();
	@QAFDataProvider(dataFile = "resources/data/test_data.xls", sheetName = "Accounts", key = "createAccount")
	@Test(groups = {"Smoke Test"})
	public void createAccount(Map<String, String> tcData) throws InterruptedException{
		String category = tcData.get("category");
		String phone = String.valueOf(tcData.get("phone"));
		String email = tcData.get("email");
		String address = tcData.get("address");

//		tcData.entrySet().iterator().next().getValue().split("\t")

		CreateAccountsPage objCreateAccountsPage = new CreateAccountsPage();
		SearchAccountPage objSearchAccountPage = new SearchAccountPage();

		objCreateAccountsPage.launchPage(new DefaultPageLocator());
		objCreateAccountsPage.getTabAccounts().click();
		Thread.sleep(3000);

		objCreateAccountsPage.getCreateAccount().click();
		Thread.sleep(3000);

		objCreateAccountsPage.getAccountName().sendKeys(name);

		Utility.selctFromDD(objCreateAccountsPage.getCategory(), category);

		objCreateAccountsPage.getContactInfoLink().click();

		objCreateAccountsPage.getAccountPhone().sendKeys(phone);

		objCreateAccountsPage.getAccountEmail().sendKeys(email);

		objCreateAccountsPage.getBillingAddressStreet1().sendKeys(address);

		objCreateAccountsPage.getCreateAccountButton().click();

		Thread.sleep(3000);

		// Search for created account
		objSearchAccountPage.getSearchTextBox().sendKeys(name);

		Thread.sleep(5000);

		// objCreateAccountPage.searchTextBox.sendKeys(Keys.ENTER);
//		Assert.assertEquals(name, objSearchAccountPage.getFirstResult().getText(), "\nFail: Account " + name + " is not found in the search results!");
		objSearchAccountPage.getFirstResult().assertText(name);

		System.out.println("Pass: Account " + name + " is found in the search results!");
		Thread.sleep(3000);
	}


	@QAFDataProvider(dataFile = "resources/data/test_data.xls", sheetName = "Accounts", key = "editAccount")
	@Test(groups = {"Smoke Test"})
	public void editAccount(Map<String, String> tcData) throws InterruptedException{
		System.out.println("\n********************** Editing Account: " + name + " **********************\n");
//		HashMap<String, String> tcData = excelData.get("editCampaign");
		String phone = String.valueOf(tcData.get("phone"));
		String email = tcData.get("email");

		CreateAccountsPage objCreateAccountPage = new CreateAccountsPage();
		objCreateAccountPage.launchPage(new DefaultPageLocator());
		EditAccountPage objEditAccountPage = new EditAccountPage();
//		objEditAccountPage.launchPage(new DefaultPageLocator());
		SearchAccountPage objSearchAccountPage = new SearchAccountPage();

		objCreateAccountPage.getTabAccounts().click();
		objSearchAccountPage.getSearchTextBox().clear();
		objSearchAccountPage.getSearchTextBox().sendKeys(name);
		Thread.sleep(3000);
		objSearchAccountPage.getFirstResult().click();
		Thread.sleep(3000);

		objEditAccountPage.getEditAccount().click();
		Thread.sleep(5000);
		name = "test" + Utility.getRandomNumber();
		objEditAccountPage.getAccountName().clear();
		objEditAccountPage.getAccountName().sendKeys(name);
//		objEditAccountPage.contactInfoLink.click();
		Thread.sleep(2000);
		objEditAccountPage.getAccountPhone().clear();
		objEditAccountPage.getAccountPhone().sendKeys(phone);
		objEditAccountPage.getAccountEmail().clear();
		objEditAccountPage.getAccountEmail().sendKeys(email);
		objEditAccountPage.getSaveAccount().click();
		Thread.sleep(3000);

		objCreateAccountPage.getTabAccounts().click();
		objSearchAccountPage.getSearchTextBox().sendKeys(name);
		objSearchAccountPage.getFirstResult().assertText(name);

		System.out.println("Pass: Account " + name + " is found in the search results!");
		Thread.sleep(3000);
	}

	@Test(groups = {"Smoke Test"})
	public void deleteAccount() throws java.lang.InterruptedException{
		System.out.println("\n********************** Deleting the account: " + name + " **********************\n");

		CreateAccountsPage objCreateAccountPage = new CreateAccountsPage();
		EditAccountPage objEditAccountPage = new EditAccountPage();
		SearchAccountPage objSearchAccountPage = new SearchAccountPage();
		String errorMessage = "Couldn't find any accounts matching "+name + "; please try another query.";

		// Todo: Move tab locators to HomePage
		objCreateAccountPage.getTabAccounts().click();
		Thread.sleep(3000);
		objSearchAccountPage.getSearchTextBox().clear();
		objSearchAccountPage.getSearchTextBox().sendKeys(name);
		Thread.sleep(3000);
		objSearchAccountPage.getFirstResult().click();
		objEditAccountPage.getDeleteAccount().click();
		objEditAccountPage.getConfirmDelete().click();
		Thread.sleep(2000);
		objSearchAccountPage.getSearchTextBox().sendKeys(name);
		Thread.sleep(2000);
		objSearchAccountPage.getAccountNotFoundError().assertText(errorMessage);
//		if (objSearchAccountPage.getAccountNotFoundError().getText().contains(errorMessage)) {
//			System.out.println("Pass: Account " + name + " has been successfully deleted!");
//		}
//		else{
//			Assert.fail("Fail: Failed to find the error message: Couldn't find any accounts matching  " + name +" in the search results.\nAccount " + name + " is not deleted!");
//		}
	}


	/*@org.testng.annotations.DataProvider(name = "excelData")
	public Object [][] readExcelData(Method testcaseName){
		String pwd = System.getProperty("user.dir");
		HashMap<String, HashMap<String, String>> excelData = new HashMap<String,HashMap<String, String>>();
		try {
			File src = new File(pwd + "\\resources\\data\\test_data.xls");
			FileInputStream fis = new FileInputStream(src);
			XSSFWorkbook file = new XSSFWorkbook(fis);
			int numOfSheets = file.getNumberOfSheets();
			for(int sheetNum = 0; sheetNum < numOfSheets; sheetNum++){
				XSSFSheet sheet = file.getSheetAt(sheetNum);
				int totalRows = sheet.getPhysicalNumberOfRows();
				int totalColumns = sheet.getRow(0).getPhysicalNumberOfCells();
*//*
             Creating a hash
             {testcase_id => {"column_header" => "cell_value"}}*//*

				for(int rowNum=1;rowNum<totalRows;rowNum++){
					HashMap<String, String> rowData = new HashMap<String, String>();
					for(int columNum=0;columNum<totalColumns;columNum++){
						sheet.getRow(0).getCell(columNum).setCellType(Cell.CELL_TYPE_STRING);
						String key = sheet.getRow(0).getCell(columNum).getStringCellValue();
						sheet.getRow(rowNum).getCell(columNum).setCellType(Cell.CELL_TYPE_STRING);
						String value = sheet.getRow(rowNum).getCell(columNum).getStringCellValue();
						rowData.put(key, value);
					}
					excelData.put(sheet.getRow(rowNum).getCell(0).getStringCellValue(), rowData);
				}
			}
		}catch(IOException ex){
			System.out.println("Exception in readExcelData: \n");
			ex.printStackTrace();
		}
		return new Object [][] {{excelData.get(testcaseName.getName())}};
	}*/
}
