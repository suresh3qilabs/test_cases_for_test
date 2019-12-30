package com.ffcrm.steps;

import com.ffcrm.pages.accounts.CreateAccountsPage;
import com.ffcrm.pages.accounts.EditAccountPage;
import com.ffcrm.pages.accounts.SearchAccountPage;
import com.ffcrm.pages.campaigns.CreateCampaignPage;
import com.ffcrm.pages.campaigns.EditCampaignPage;
import com.ffcrm.pages.campaigns.SearchCampaignPage;
import com.ffcrm.pages.home.HomePage;
import com.ffcrm.pages.leads.CreateLeadsPage;
import com.ffcrm.pages.leads.EditLeadsPage;
import com.ffcrm.pages.leads.SearchLeadsPage;
import com.ffcrm.pages.login.LoginPage;
import com.ffcrm.tests.Utility;
import com.qmetry.qaf.automation.step.QAFTestStep;
import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestCase;
import org.testng.Assert;

@QAFTestStepProvider
public class Steps extends WebDriverTestCase {

    protected HomePage objHomePage = new HomePage();
    protected CreateAccountsPage objCreateAccountPage = new CreateAccountsPage();
    protected EditAccountPage objEditAccountPage = new EditAccountPage();
    protected SearchAccountPage objSearchAccountPage = new SearchAccountPage();
    protected CreateCampaignPage objCreateCampaignPage = new CreateCampaignPage();
    protected EditCampaignPage objEditCampaignPage = new EditCampaignPage();
    protected SearchCampaignPage objSearchCampaignPage = new SearchCampaignPage();
    protected CreateLeadsPage objCreateLeadsPage = new CreateLeadsPage();
    protected EditLeadsPage objEditLeadsPage = new EditLeadsPage();
    protected SearchLeadsPage objSearchLeadsPage = new SearchLeadsPage();


    protected String name;
    protected String campaignName;
    protected String category;
    //    protected String phone;
//    protected String email;
    protected String address;

    protected String startDate;
    protected String endDate;
    protected String status;
    protected String firstName;
    protected String lastName;
    protected String email;
    protected String phone;

    @QAFTestStep(description = "I am logged in to Fat Free CRM Application for testcase {0}")
    //@Given("^I am logged in to Fat Free CRM Application for testcase \"([^\"]*)\"$")
    public void login(String testCaseName) throws Throwable {
        LoginPage lp = new LoginPage();
        lp.login();
        logger.info("Logged in.");
        System.out.println(testCaseName);
    }

    @QAFTestStep(description = "I prepare data for testcase {0}")
    //@Given("^I prepare data for testcase \"([^\"]*)\"$")
    public void i_prepare_data_for_testcase(String tcId) throws Throwable {
        name = (name == null)?("demo" + Utility.getRandomNumber()):name;
        campaignName = (campaignName == null)?("name" + Utility.getRandomNumber()):campaignName;
        firstName = (firstName == null)?("name" + Utility.getRandomNumber()):firstName;
        lastName = (lastName == null)?("name" + Utility.getRandomNumber()):lastName;
        logger.info("Prepare data from excel!");
    }

    @QAFTestStep(description = "I click on {0}")
    //@When("^I click on \"([^\"]*)\"$")
    public void i_click_on(String element) throws Throwable {
        if (element.equalsIgnoreCase("Accounts Tab")) {
            objHomePage.getTabAccounts().click();
        } else if (element.equalsIgnoreCase("Campaigns Tab")) {
            objHomePage.getTabCampaigns().click();
        } else if (element.equalsIgnoreCase("Leads Tab")) {
            objHomePage.getTabLeads().click();
        } else if (element.equalsIgnoreCase("Create Account")) {
            objCreateAccountPage.getCreateAccount().click();
        } else if (element.equalsIgnoreCase("Campaign Account")) {
            objCreateCampaignPage.getCreateCampaign().click();
        } else if (element.equalsIgnoreCase("Lead Account")) {
            objCreateLeadsPage.getCreateLead().click();
        } else if (element.equalsIgnoreCase("Contact Info Link")) {
            objEditAccountPage.getContactInfoLink().click();
        } else if (element.equalsIgnoreCase("Create Account Button")) {
            objCreateAccountPage.getCreateAccountButton().click();
        } else if (element.equals("Create Campaign Button")) {
            objCreateCampaignPage.getCreateCampaignButton().click();
        } else if (element.equals("Create Lead Button")) {
            objCreateLeadsPage.getCreateLeadButton().click();
        } else if (element.contains("First Result")) {
            if (element.equalsIgnoreCase("Campaign First Result")) {
                objSearchCampaignPage.getFirstResult().click();
            } else if (element.equalsIgnoreCase("Lead First Result")) {
                objSearchLeadsPage.getFirstResult().click();
            } else if (element.equalsIgnoreCase("Account First Result")) {
                objSearchAccountPage.getFirstResult().click();
            }
        } else if (element.equalsIgnoreCase("Edit Campaign")) {
            objEditCampaignPage.getEditCampaign().click();
        } else if (element.equalsIgnoreCase("Edit Account")) {
            objEditAccountPage.getEditAccount().click();
        } else if (element.equalsIgnoreCase("Edit Lead")) {
            objEditLeadsPage.getEditLead().click();
        } else if (element.equalsIgnoreCase("Save Account")) {
            objEditAccountPage.getSaveAccount().click();
        } else if (element.equalsIgnoreCase("Save Campaign")) {
            objEditCampaignPage.getSaveCampaign().click();
        } else if (element.equalsIgnoreCase("Save Lead")) {
            objEditLeadsPage.getSaveLead().click();
        } else if (element.equalsIgnoreCase("Delete Account")) {
            objEditAccountPage.getDeleteAccount().click();
        } else if (element.equalsIgnoreCase("Delete Campaign")) {
            objEditCampaignPage.getDeleteCampaign().click();
        } else if (element.equalsIgnoreCase("Delete Lead")) {
            objEditLeadsPage.getDeleteLead().click();
        } else if (element.contains("Confirm")) {
            if (element.equalsIgnoreCase("Confirm Campaign Delete")) {
                objEditCampaignPage.getConfirmDelete().click();
            } else if (element.equalsIgnoreCase("Confirm Lead Delete")) {
                objEditLeadsPage.getConfirmDelete().click();
            } else if (element.equalsIgnoreCase("Confirm Account Delete")) {
                objEditAccountPage.getConfirmDelete().click();
            }
        } else {
            System.out.println("Please add more click statements");
        }
        logger.info("I click on element" + element);
        Thread.sleep(2000);
    }

    @QAFTestStep(description = "I enter {0} to the field {1}")
    //@When("^ I enter \"([^\"]*)\" to the field \"([^\"]*)\"$")
    public void i_enter_value_to_the_field(Object data, String element) throws Throwable {
        String value =String.valueOf(data);
        if (element.equalsIgnoreCase("Account Name")) {
            objCreateAccountPage.getAccountName().sendKeys(name);
        } else if (element.equalsIgnoreCase("Campaign Name")) {
            objCreateCampaignPage.getCampaignName().sendKeys(campaignName);
        } else if (element.equalsIgnoreCase("First Name")) {
            objCreateLeadsPage.getLeadFirstName().sendKeys(firstName);
        } else if (element.equalsIgnoreCase("Last Name")) {

            objCreateLeadsPage.getLeadLastName().sendKeys(lastName);
        } else if (element.equalsIgnoreCase("Account Email")) {
            email = value;
            objEditAccountPage.getAccountEmail().clear();
            objCreateAccountPage.getAccountEmail().sendKeys(email);
        } else if (element.equalsIgnoreCase("Lead Email")) {
            email = value;
            objCreateLeadsPage.getLeadEmail().sendKeys(email);
        } else if (element.equalsIgnoreCase("Account Phone")) {
            phone = value;
            objEditAccountPage.getAccountPhone().clear();
            objCreateAccountPage.getAccountPhone().sendKeys(phone);
        } else if (element.equalsIgnoreCase("Lead Phone")) {
            phone = String.valueOf(value);
            System.out.println(phone);
            objCreateLeadsPage.getLeadPhone().sendKeys(phone);
        } else if (element.equalsIgnoreCase("Account Address")) {
            address = value;
            objCreateAccountPage.getBillingAddressStreet1().sendKeys(address);
        } else if (element.equalsIgnoreCase("Start date")) {
            startDate = value;
            objCreateCampaignPage.getStartDate().sendKeys(startDate);
        } else if (element.equalsIgnoreCase("End date")) {
            endDate = value;
            objCreateCampaignPage.getEndDate().sendKeys(endDate);
        } else if (element.equalsIgnoreCase("Search Text Box")) {

            if (value.contains("Lead")) {
                objHomePage.getSearchTextBox().sendKeys(firstName);
            } else if (value.contains("Campaign")) {
                objHomePage.getSearchTextBox().sendKeys(campaignName);
            } else {
                objHomePage.getSearchTextBox().sendKeys(name);
            }

        } else if (element.equalsIgnoreCase("New Account Name")) {
            name = "newTest" + Utility.getRandomNumber();
            objEditAccountPage.getAccountName().clear();
            objEditAccountPage.getAccountName().sendKeys(name);
        } else if (element.equals("New Campaign Name")) {
            campaignName = "newDemo" + Utility.getRandomNumber();
            objEditCampaignPage.getCampaignName().clear();
            objEditCampaignPage.getCampaignName().sendKeys(campaignName);
        } else if (element.equalsIgnoreCase("New Lead Email")) {
            email = value;
            objEditLeadsPage.getLeadEmail().clear();
            objEditLeadsPage.getLeadEmail().sendKeys(email);
        } else if (element.equalsIgnoreCase("New Lead Phone")) {
            phone = value;
            objEditLeadsPage.getLeadPhone().clear();
            objEditLeadsPage.getLeadPhone().sendKeys(phone);
        }

        Thread.sleep(2000);
    }

    @QAFTestStep(description = "I select {0} from {1}")
    //@When("^ I select \"([^\"]*)\" from \"([^\"]*)\"$")
    public void i_select_value_from(String value, String element) throws Throwable {

        if (element.equals("status")) {
            status = value;
            System.out.println(status);
            Utility.selctFromDD(objCreateCampaignPage.getStatus(), status);
        } else if (element.equalsIgnoreCase("category")) {
            category = value;
            Utility.selctFromDD(objCreateAccountPage.getCategory(), category);
        }
    }

    @QAFTestStep(description = "I should see {0} in {1}")
    //@Then("^I should see \"([^\"]*)\" in \"([^\"]*)\"$")
    public void i_should_see_value_in(String value, String result) throws Throwable {
        if (value.contains("Lead")) {
            objSearchLeadsPage.getFirstResult().assertText(firstName + " " + lastName);
            System.out.println("Assert value " + firstName + " " + lastName);
        } else if (value.contains("Campaign")) {
            objSearchCampaignPage.getFirstResult().assertText(campaignName);
            System.out.println("Assert value " + campaignName);
        } else {
            objSearchAccountPage.getFirstResult().assertText(name);
            System.out.println("Assert value " + name);
        }
    }

    //Todo : Modify the code
    @QAFTestStep(description = "I clear the text box {0}")
    public void clear_Search_Text_Box() {
        objHomePage.getSearchTextBox().clear();

    }

    @QAFTestStep(description = "I verify the error message {0}")
    public void verify_error_msg(String errorMessage) {
        System.out.println(errorMessage);
        if (errorMessage.contains("campaigns")) {
            if (objSearchCampaignPage.getCampaignNotFoundError().getText().contains(errorMessage)) {
                System.out.println("Pass: Campaign " + campaignName + " has been successfully deleted!");
            } else {
                Assert.fail("Fail: Campaign " + campaignName + " has not been successfully deleted!");

            }
        } else if (errorMessage.contains("leads")) {
            if (objSearchLeadsPage.getLeadNotFoundError().getText().contains(errorMessage)) {
                System.out.println("Pass: Lead " + firstName + " has been successfully deleted!");

            } else {
                Assert.fail("Fail: Lead " + firstName + " has not been successfully deleted!");

            }

        } else if (errorMessage.contains("accounts")) {
            if (objSearchAccountPage.getAccountNotFoundError().getText().contains(errorMessage)) {
                System.out.println("Pass: Account " + name + " has been successfully deleted!");

            } else {
                Assert.fail("Fail: Account " + name + " has not been successfully deleted!");

            }
        }

    }
}
