package com.ffcrm.tests;

import com.ffcrm.pages.leads.CreateLeadsPage;
import com.ffcrm.pages.leads.EditLeadsPage;
import com.ffcrm.pages.leads.SearchLeadsPage;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.util.HashMap;

public class LeadsModule extends BaseClass {
    String firstName = "testFirst" + Utility.getRandomNumber();
    String lastName = "testLast" + Utility.getRandomNumber();

    @Test(dataProvider = "excelData", groups = {"Smoke Test"})
    public void createLead(HashMap<String, String> tcData) throws InterruptedException{
        String phone = tcData.get("phone");
        String email = tcData.get("email");

        CreateLeadsPage objCreateLeadsPage = new CreateLeadsPage(driver);
        SearchLeadsPage objSearchLeadsPage = new SearchLeadsPage(driver);

        objCreateLeadsPage.tabLeads.click();
        Thread.sleep(3000);
        objCreateLeadsPage.createLead.click();
        objCreateLeadsPage.leadFirstName.sendKeys(firstName);
        objCreateLeadsPage.leadLastName.sendKeys(lastName);
        objCreateLeadsPage.leadEmail.sendKeys(email);
        objCreateLeadsPage.leadPhone.sendKeys(phone);
        objCreateLeadsPage.createLeadButton.click();
        Thread.sleep(3000);
        objSearchLeadsPage.searchTextBox.sendKeys(firstName);

        Assert.assertEquals(firstName + " " + lastName, objSearchLeadsPage.firstResult.getText(), "\nFail: Lead " + firstName + " " + lastName + " is not found in the search results!");

        System.out.println("Pass: Account " + firstName + " " + lastName + " is found in the search results!");
        Thread.sleep(3000);
    }

    @Test(dataProvider = "excelData", groups = {"Smoke Test"})
    public void editLead(HashMap<String, String> tcData) throws InterruptedException{
        System.out.println("\n*********************** Editing lead: " + firstName + " " + lastName + " ************************\n");

        CreateLeadsPage objCreateLeadsPage = new CreateLeadsPage(driver);
        EditLeadsPage objEditLeadsPage = new EditLeadsPage(driver);
        SearchLeadsPage objSearchLeadsPage = new SearchLeadsPage(driver);

        objCreateLeadsPage.tabLeads.click();
        Thread.sleep(3000);

        objSearchLeadsPage.searchTextBox.clear();
        objSearchLeadsPage.searchTextBox.sendKeys(firstName);
        Thread.sleep(3000);
        objSearchLeadsPage.firstResult.click();
        Thread.sleep(3000);

        firstName = "testFirst" + Utility.getRandomNumber();
        lastName = "testLast" + Utility.getRandomNumber();
        String email = tcData.get("email");
        String phone = tcData.get("phone");

        objEditLeadsPage.editLead.click();
        Thread.sleep(3000);
        objEditLeadsPage.leadFirstName.clear();
        objEditLeadsPage.leadFirstName.sendKeys(firstName);
        objEditLeadsPage.leadLastName.clear();
        objEditLeadsPage.leadLastName.sendKeys(lastName);
        objEditLeadsPage.leadEmail.clear();
        objEditLeadsPage.leadEmail.sendKeys(email);
        objCreateLeadsPage.leadPhone.clear();
        objCreateLeadsPage.leadPhone.sendKeys(phone);
        objEditLeadsPage.saveLead.click();

        objCreateLeadsPage.tabLeads.click();
        Thread.sleep(3000);
        objSearchLeadsPage.searchTextBox.sendKeys(firstName);
        Thread.sleep(3000);

        Assert.assertEquals(firstName + " " + lastName, objSearchLeadsPage.firstResult.getText(), "\nFail: Lead " + firstName + " " + lastName + " is not found in the search results!");

        System.out.println("Pass: Account " + firstName + " " + lastName + " is found in the search results!");
        Thread.sleep(3000);
    }

    @Test(groups={"Smoke Test"})
    public void deleteLead() throws InterruptedException{
        System.out.println("\n********************** Deleting the Lead: " + firstName + " " + lastName + " **********************\n");

        CreateLeadsPage objCreateLeadsPage = new CreateLeadsPage(driver);
        EditLeadsPage objEditLeadsPage = new EditLeadsPage(driver);
        SearchLeadsPage objSearchLeadsPage = new SearchLeadsPage(driver);
        String errorMessage = "Couldn't find any leads matching";

        // Todo: Move tab locators to HomePage
        objCreateLeadsPage.tabLeads.click();
        Thread.sleep(3000);
        objSearchLeadsPage.searchTextBox.clear();
        objSearchLeadsPage.searchTextBox.sendKeys(firstName);
        Thread.sleep(3000);
        objSearchLeadsPage.firstResult.click();
        objEditLeadsPage.deleteLead.click();
        objEditLeadsPage.confirmDelete.click();
        Thread.sleep(2000);
        objSearchLeadsPage.searchTextBox.sendKeys(firstName);
        Thread.sleep(2000);
        if (objSearchLeadsPage.leadNotFoundError.getText().contains(errorMessage)) {
            System.out.println("Pass:- Account " + firstName + " " + lastName + " has been successfully deleted!");
        }
        else{
            Assert.fail("Fail:- Failed to find the error message: Couldn't find any accounts matching  " + firstName + " " + lastName +" in the search results.\nAccount " + firstName + " " + lastName + " is not deleted!");
        }
    }
}
