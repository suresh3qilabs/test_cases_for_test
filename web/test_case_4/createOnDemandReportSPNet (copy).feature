Feature: This feature file tests all SPNet scenarios for createOnDemandReport

  Background:
    * I read the data from the excel "Config_createOnDemandReport.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @SPNet @SPNet_1
  Scenario: Testcase id = SPNet_1, description = SPNet Page: Validate UI elements on Reporting page
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
    Then I confirm "Log out" is present
    Then I verify "Reporting" tab is highlighted
    Then I verify "Smart Search" button exists
    Then I verify "Request Type" label and content are present
    Then I verify "Report Type" label and content are present
    Then I verify "Delivery Type" label and content are present
    Then I verify "Data Selection" label and content are present
    Then I scroll to the bottom
    Then I verify "Data Filters" label and content are present
    Then I verify "Create Report" button exists
    Then I verify "Cancel" button exists
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer

  @SPNet @SPNet_2
  Scenario: Testcase id = SPNet_2, description = SPNet Page: Validate Report Type dropdown for 101080
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    Then I verify "Request Type" dropdown
    Then I verify Report Type dropdown
    Then I verify "Delivery Type" dropdown

  @SPNet @SPNet_3
  Scenario: Testcase id = SPNet_3, description = SPNet Page: Validate Report Type dropdown for 200001
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    Then I verify "Request Type" dropdown
    Then I verify Report Type dropdown
    Then I verify "Delivery Type" dropdown

  @SPNet @SPNet_4
  Scenario: Testcase id = SPNet_4, description = SPNet Page: select some checkbox and verify
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    Then I click on Unselect All checkbox
    Then I click on "IMEI" checkbox
    Then I click on "IMSI" checkbox
    Then I click on "Username" checkbox
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
#    When I set the value "" for "Search Start Date" on Reporting page
#    When I set the value "" for "Search End Date" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify only selected checkbox appears

