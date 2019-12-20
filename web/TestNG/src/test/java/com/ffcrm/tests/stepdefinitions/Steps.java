package com.ffcrm.tests.stepdefinitions;

import com.ffcrm.pages.accounts.CreateAccountPage;
import com.ffcrm.pages.accounts.EditAccountPage;
import com.ffcrm.pages.accounts.SearchAccountPage;
import com.ffcrm.tests.Utility;
import com.ffcrm.tests.runner.RunCukesTest;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.testng.Assert;
import org.testng.annotations.Factory;
import org.testng.annotations.Test;

import java.util.HashMap;

public class Steps extends RunCukesTest {
    public static String name;
    HashMap<String, HashMap<String,String>> tcData;
    HashMap<String, String> tcHash;
    String category;
    String phone;
    String email;
    String address;
    CreateAccountPage objCreateAccountPage = new CreateAccountPage(driver);
    EditAccountPage objEditAccountPage = new EditAccountPage(driver);
    SearchAccountPage objSearchAccountPage = new SearchAccountPage(driver);

    @Given("^I prepare data for testcase \"([^\"]*)\"$")
    public void prepareTcData(String tcID) throws InterruptedException {
        tcHash = this.tcData.get(tcID);
        if(name == null) {
            name = "test" + Utility.getRandomNumber();
            tcHash.put("name", name);
        }
        category = tcHash.get("category");
        phone = tcHash.get("phone");
        email = tcHash.get("email");
        address = tcHash.get("address");
        String errorMessage = "Couldn't find any accounts matching";
    }

    @When("^I click on \"([^\"]*)\"$")
    public void clickOnElement(String element) throws InterruptedException {
      /*  switch(element){
            case "Accounts Tab":
                objCreateAccountPage.tabAccounts.click();
                break;
            case "Create Account":
                objCreateAccountPage.createAccount.click();
                break;
            default:
                System.out.println("Please add more click statements");
                return;
        }
*/
        if (element.equalsIgnoreCase("Accounts Tab")) {
            objCreateAccountPage.tabAccounts.click();
        } else if (element.equalsIgnoreCase("Create Account")) {
            objCreateAccountPage.createAccount.click();
        } else if (element.equalsIgnoreCase("Contact Info Link")) {
            // Todo: Add conditions to click based on page
//            objCreateAccountPage.contactInfoLink.click();
            if(!objCreateAccountPage.accountPhone.isDisplayed()){
                objEditAccountPage.contactInfoLink.click();
            }
        } else if (element.equalsIgnoreCase("Create Account Button")) {
            objCreateAccountPage.createAccountButton.click();
        } else if (element.equalsIgnoreCase("First Result")) {
            objSearchAccountPage.firstResult.click();
        } else if (element.equalsIgnoreCase("Edit Account")) {
            objEditAccountPage.editAccount.click();
        } else if (element.equalsIgnoreCase("Save Account")) {
            objEditAccountPage.saveAccount.click();
        }else if(element.equalsIgnoreCase("Delete Account")){
            objEditAccountPage.deleteAccount.click();
        }else if(element.equalsIgnoreCase("Confirm Delete")){
            objEditAccountPage.confirmDelete.click();
        }
        else {
            System.out.println("Please add more click statements");
        }
        Thread.sleep(3000);
    }


    @When("^I enter \"([^\"]*)\" to the field \"([^\"]*)\"$")
    public void enterText(String text, String element) throws InterruptedException {
        if (element.equalsIgnoreCase("Account Name")) {
            // Todo: find a better for mapping
            objCreateAccountPage.accountName.sendKeys(name);
        } else if (element.equalsIgnoreCase("Account Phone")) {
            objEditAccountPage.accountPhone.clear();
            objCreateAccountPage.accountPhone.sendKeys(tcHash.get("phone"));
        } else if (element.equalsIgnoreCase("Account Email")) {
            objEditAccountPage.accountEmail.clear();
            objCreateAccountPage.accountEmail.sendKeys(tcHash.get("email"));
        } else if (element.equalsIgnoreCase("Account Addrress")) {
            objCreateAccountPage.billingAddressStreet1.sendKeys(tcHash.get("address"));
        } else if (element.equalsIgnoreCase("Search Text Box")) {
            objSearchAccountPage.searchTextBox.sendKeys(name);
        } else if (element.equalsIgnoreCase("New Account Name") && text.equalsIgnoreCase("New Name")) {
            name = "test" + Utility.getRandomNumber();
            objEditAccountPage.accountName.clear();
            objEditAccountPage.accountName.sendKeys(name);
        }
        Thread.sleep(3000);
    }

    @When("^I select \"([^\"]*)\" from \"([^\"]*)\"$")
    public void selectFromDD(String option, String element) throws InterruptedException {
        if (element.equalsIgnoreCase("category")) {
            Utility.selctFromDD(objCreateAccountPage.category, tcHash.get("category"));
        }
        Thread.sleep(10000);
    }

    @When("^I clear the text box \"([^\"]*)\"$")
    public void clearTextBox(String element) throws InterruptedException {
        if (element.equalsIgnoreCase("Search Text Box")) {
            objSearchAccountPage.searchTextBox.clear();
        } else if (element.equalsIgnoreCase("Account Name")) {

        }
    }

    @Then("I should see \"([^\"]*)\" in \"([^\"]*)\"")
    public void assertEquals(String expectedValue, String element) {
        if (element.equalsIgnoreCase("Search Results") && expectedValue.equalsIgnoreCase("Name")) {
            Assert.assertEquals(name, objSearchAccountPage.firstResult.getText(), "\nFail: Account " + name + " is not found in the search results!");
        }
    }

    @Then("^I verify the error message \"([^\"]*)\"$")
    public void iVerifyTheErrorMessage(String errorMessage) throws Throwable {
        if (objSearchAccountPage.accountNotFoundError.getText().contains(errorMessage)) {
            System.out.println("Pass: Account " + name + " has been successfully deleted!");
        } else {
            Assert.fail("Fail: Failed to find the error message: " + errorMessage + " " + name + " in the search results.\nAccount " + name + " is not deleted!");
        }
    }

    @Given("I get data from data provider \"([^\"]*)\"$")
    public void prepareTcHash(String dataProviderName){
        this.tcData = RunCukesTest.tcData;
    }
}
