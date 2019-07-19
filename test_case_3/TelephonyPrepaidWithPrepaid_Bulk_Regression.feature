Feature: This feature file tests all Bulk Activations and Bulk Status Change for Telephony Prepaid With Prepaid Regression

  Background:
    * I read the data from the excel "Config_Telephony_Prepaid_With_Prepaid_Regression.xlsx" and "Bulk" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @Telephony_Prepaid_With_Prepaid_Bulk_Activate_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Bulk_Activate_Account, description = Account activation using bulk upload with individual plan
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Bulk_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Prepaid_With_Prepaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Prepaid_With_Prepaid.csv" to "File_Upload"
    Then I select "Standard Prepaid" for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "200 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I set the checkbox "Prepaid_Threshold_Alerts"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Prepaid_With_Prepaid"

  @Telephony @Telephony_Prepaid_With_Prepaid_Account_Activation_Incorrect_File_Format
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Account_Activation_Incorrect_File_Format, description = Account activation using bulk upload with incorrect file format
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Account_Activation_Incorrect_File_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create incorrect file format "rtf" for service "Telephony" and field "Telephony_SIM_Prepaid_With_Prepaid" and "2" items
    Then I upload the file "Telephony_Telephony_SIM_Prepaid_With_Prepaid" to "File_Upload"
    Then I verify the message "Bulk_Activate_Incorrect_File_Format_Error" for "Telephony"

  @Telephony @Telephony_Prepaid_With_Prepaid_Account_Activation_Invalid_Data
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Account_Activation_Invalid_Data, description = Account activation using bulk upload with IMEIs instead of SIMS
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Account_Activation_Invalid_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "NEW_SBD_IMEI" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "Standard Prepaid" for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I set the checkbox "Activate_Prepaid"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Bulk_Activate_Invalid_Data_Error_Telephony" for "Telephony"

  @Telephony @Telephony_Prepaid_With_Prepaid_Account_Activation_Bulk_Without_Attachment
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Account_Activation_Bulk_Without_Attachment, description = Account activation using bulk upload without attaching file
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Account_Activation_Bulk_Without_Attachment"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I select "Standard Prepaid" for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Bulk_Activate_Without_Attachment_Error_Telephony" for "Telephony"

