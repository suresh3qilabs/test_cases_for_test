Feature: This feature file tests all the scenarios for getSubscriberAccount

  Background:
    * I read the data from the excel "Config_getSubscriberAccount.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
 

  @ATS_2 @ATS
  Scenario: Testcase id = ATS_2, description = Try to get Suspended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @ATS_3 @ATS
  Scenario: Testcase id = ATS_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @ATS_4 @ATS
  Scenario: Testcase id = ATS_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @ATS_5 @ATS
  Scenario: Testcase id = ATS_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page