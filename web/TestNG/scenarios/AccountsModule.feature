Feature: This feature file tests all the test scenarios for Accounts Module

  Background:
#  Given I get data from data provider "excelData"

  @Smoke
  Scenario Outline: Create An Account
    Given I am logged in to Fat Free CRM Application for testcase "createAccount"
    Given I prepare data for testcase "createAccount"
    When I click on "Accounts Tab"
    When I click on "Create Account"
    When  I enter "Name" to the field "Account Name"
    When I select "<category>" from "category"
    When I click on "Contact Info Link"
    When  I enter "<phone>" to the field "Account Phone"
    When  I enter "<email>" to the field "Account Email"
    When  I enter "<address>" to the field "Account Address"
    When I click on "Create Account Button"
    When  I enter "Account Name" to the field "Search Text Box"
    Then I should see "Account Name" in "Search Results"

    Examples:{'datafile':'resources/data/test_data.xls', 'sheetName':'Accounts','key':'createAccount'}


  Scenario Outline: Edit Account
#    Given I am logged in to Fat Free CRM Application for testcase "createAccount"
    Given I prepare data for testcase "editAccount"
    When I click on "Accounts Tab"
    When I clear the text box "Search Text Box"
    When  I enter "Account Name" to the field "Search Text Box"
    When I click on "Account First Result"
    When I click on "Edit Account"
    When  I enter "New Name" to the field "New Account Name"
    When  I enter "<phone>" to the field "Account Phone"
    When  I enter "<email>" to the field "Account Email"
    When I click on "Save Account"
    When I click on "Accounts Tab"
    When I enter "Account Name" to the field "Search Text Box"
    Then I should see "Account Name" in "Search Results"

    Examples:{'datafile':'resources/data/test_data.xls', 'sheetName':'Accounts','key':'editAccount'}

  Scenario Outline: Delete Account
#    Given I am logged in to Fat Free CRM Application for testcase "createAccount"
    When I click on "Accounts Tab"
    When I clear the text box "Search Text Box"
    When  I enter "Account Name" to the field "Search Text Box"
    When I click on "Account First Result"
    When  I click on "Delete Account"
    When I click on "Confirm Account Delete"
    When  I enter "Account Name" to the field "Search Text Box"
#    Then I verify the error message "<errorMessage>"
    Then I verify the error message "accounts Found!"

    Examples:{'datafile':'resources/data/test_data.xls', 'sheetName':'Accounts','key':'deleteAccount'}