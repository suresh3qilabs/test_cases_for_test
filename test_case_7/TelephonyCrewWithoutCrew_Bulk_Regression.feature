Feature: This feature file tests all Bulk Activations and Bulk Status Change for Telephony Crew Without Crew Regression

  Background:
    * I read the data from the excel "Config_Telephony_Crew_Without_Crew_Regression.xlsx" and "Bulk" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Telephony_Crew_Without_Crew_Bulk_Activate_Account_With_Individual_Plan
  Scenario: Testcase id = 001_Telephony_Crew_Without_Crew_Bulk_Activate_Account_With_Individual_Plan, description = Account activation using bulk upload with individual plan
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Crew_Without_Crew_Bulk_Activate_Account_With_Individual_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Crew_Without_Crew" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Crew_Without_Crew.csv" to "File_Upload"
    Then I select "Standard Crew" for "Sub-Market"
    Then I select "Level 1 Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Crew_Without_Crew"

  @Telephony @002_Telephony_Crew_Without_Crew_Bulk_Plan_Change_i2i
  Scenario: Testcase id = 002_Telephony_Crew_Without_Crew_Bulk_Plan_Change_i2i, description = Bulk plan change individual to individual
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Crew_Without_Crew_Bulk_Plan_Change_i2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Crew_Without_Crew.csv" to "File_Upload"
    Then I select "Standard Crew" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1 Crew" for "Plan_Coming_From"
    Then I select "Standard Crew" for "Plan_Going_To"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Crew_Without_Crew"

  @Telephony @003_Telephony_Crew_Without_Crew_Account_Activation_Incorrect_File_Format
  Scenario: Testcase id = 003_Telephony_Crew_Without_Crew_Account_Activation_Incorrect_File_Format, description = Account activation using bulk upload with incorrect file format
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Crew_Without_Crew_Account_Activation_Incorrect_File_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create incorrect file format "rtf" for service "Telephony" and field "Telephony_SIM_Crew_Without_Crew" and "2" items
    Then I upload the file "Telephony_Telephony_SIM_Crew_Without_Crew" to "File_Upload"
    Then I verify the message "Bulk_Activate_Incorrect_File_Format_Error" for "Telephony"

  @Telephony @004_Telephony_Crew_Without_Crew_Bulk_Activate_Account_With_Individual_Plan_With_Invalid_Data
  Scenario: Testcase id = 004_Telephony_Crew_Without_Crew_Bulk_Activate_Account_With_Individual_Plan_With_Invalid_Data, description = Account activation using bulk upload with IMEIs instead of SIMS
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Crew_Without_Crew_Bulk_Activate_Account_With_Individual_Plan_With_Invalid_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "NEW_SBD_IMEI" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "Standard Crew" for "Sub-Market"
    Then I select "Level 1 Crew" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Bulk_Activate_Invalid_Data_Error_Telephony" for "Telephony"

  @Telephony @005_Telephony_Crew_Without_Crew_Account_Activation_With_Bulk_Without_Attachment
  Scenario: Testcase id = 005_Telephony_Crew_Without_Crew_Account_Activation_With_Bulk_Without_Attachment, description = Account activation using bulk upload without attaching file
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Crew_Without_Crew_Account_Activation_With_Bulk_Without_Attachment"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I select "Standard Crew" for "Sub-Market"
    Then I select "Level 1 Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Bulk_Activate_Without_Attachment_Error_Telephony" for "Telephony"