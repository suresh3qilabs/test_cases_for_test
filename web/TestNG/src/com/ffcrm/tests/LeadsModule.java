package com.ffcrm.tests;

import com.ffcrm.pages.leads.CreateLeadsPage;
import com.ffcrm.pages.leads.EditLeadsPage;
import com.ffcrm.pages.leads.SearchLeadsPage;
import com.qmetry.qaf.automation.testng.dataprovider.QAFDataProvider;
import com.qmetry.qaf.automation.ui.DefaultPageLocator;
import com.qmetry.qaf.automation.ui.WebDriverTestCase;
import org.testng.Assert;
import org.testng.annotations.Test;

import java.util.Map;

public class LeadsModule extends WebDriverTestCase {




    //Getting date from excel
 @QAFDataProvider(dataFile = "resources/data/test_data.xls", sheetName = "Leads", key = "createLead")
   @Test(groups = {"Smoke Test"})
 //@Test(groups = {"Smoke Test"}, priority = 6)

 public void  createLead(Map<String, String> data) throws InterruptedException {

     CreateLeadsPage objCreateLeadsPage = new CreateLeadsPage();
     EditLeadsPage objEditLeadsPage = new EditLeadsPage();
     SearchLeadsPage objSearchLeadsPage = new SearchLeadsPage();
     objCreateLeadsPage.launchPage(new DefaultPageLocator());
     String firstName = data.get("firstName");
     String lastName =  data.get("lastName");
     String email = data.get("email");
     String phone = String.valueOf(data.get("phone"));



     objCreateLeadsPage.getTabLeads().click();
     objCreateLeadsPage.getCreateLead().click();
     Thread.sleep(2000);
     objCreateLeadsPage.getLeadFirstName().sendKeys(firstName);
     objCreateLeadsPage.getLeadLastName().sendKeys(lastName);
     objCreateLeadsPage.getLeadEmail().sendKeys(email);
     objCreateLeadsPage.getLeadPhone().sendKeys(phone);
     objCreateLeadsPage.getCreateLeadButton().click();
     Thread.sleep(3000);

     //Searching for created lead account
     objSearchLeadsPage.getSearchTextBox().sendKeys(firstName);

     Thread.sleep(2000);
     String actual = objSearchLeadsPage.getFirstResult().getText();
     String expected =  firstName+" "+lastName;
     Assert.assertEquals(actual, expected);



 }

    @QAFDataProvider(dataFile = "resources/data/test_data.xls", sheetName = "Leads", key = "editLead")
    @Test(groups = {"Smoke Test"})
    //@Test(groups = {"Smoke Test"}, priority = 7)
    public void editLead(Map<String, String> data) throws InterruptedException {
        CreateLeadsPage objCreateLeadsPage = new CreateLeadsPage();
        EditLeadsPage objEditLeadsPage = new EditLeadsPage();
        SearchLeadsPage objSearchLeadsPage = new SearchLeadsPage();
       objCreateLeadsPage.launchPage(new DefaultPageLocator());
     String firstName = data.get("firstName");
     String newEmail = data.get("email");


     objCreateLeadsPage.getTabLeads().click();
     Thread.sleep(2000);
     objSearchLeadsPage.getSearchTextBox().clear();
     objSearchLeadsPage.getSearchTextBox().sendKeys(firstName);
     objSearchLeadsPage.getFirstResult().click();
     Thread.sleep(2000);
     objEditLeadsPage.getEditLead().click();
     Thread.sleep(2000);
     objEditLeadsPage.getLeadEmail().clear();
     objEditLeadsPage.getLeadEmail().sendKeys(newEmail);
     objEditLeadsPage.getSaveLead().click();
     Thread.sleep(3000);

    }
    @QAFDataProvider(dataFile = "resources/data/test_data.xls", sheetName = "Leads", key = "editLead")
   @Test(groups = {"Smoke Test"})
    //@Test(groups = {"Smoke Test"}, priority = 8)
    public void deleteLead(Map<String, String> data) throws InterruptedException {

        CreateLeadsPage objCreateLeadsPage = new CreateLeadsPage();
        EditLeadsPage objEditLeadsPage = new EditLeadsPage();
        SearchLeadsPage objSearchLeadsPage = new SearchLeadsPage();
        objCreateLeadsPage.launchPage(new DefaultPageLocator());
        String firstName = data.get("firstName");
        String errorMessage = "Couldn't find any leads matching " + firstName + "; please try another query.";
        String message = ("**************** Deleting Campaing account " + firstName +" ***************");

        objCreateLeadsPage.getTabLeads().click();
        Thread.sleep(2000);
        objSearchLeadsPage.getSearchTextBox().clear();
        objSearchLeadsPage.getSearchTextBox().sendKeys(firstName);
        objSearchLeadsPage.getFirstResult().click();
        Thread.sleep(2000);
        objEditLeadsPage.getDeleteLead().click();
        Thread.sleep(1000);
        objEditLeadsPage.getConfirmDelete().click();
        Thread.sleep(1000);
        objSearchLeadsPage.getSearchTextBox().sendKeys(firstName);
        Thread.sleep(1000);
        objSearchLeadsPage.getLeadNotFoundError().assertText(errorMessage);
        Thread.sleep(3000);



    }

}
