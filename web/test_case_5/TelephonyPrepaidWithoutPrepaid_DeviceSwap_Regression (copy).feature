Feature: This feature file tests all deviceSwap scenarios for Telephony prepaid without prepaid Regression

  Background:
    * I read the data from the excel "Config_Tel_Prepaid_Without_Prepaid_Regression.xlsx" and "Device_Swap" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Telephony_Prepaid_Without_Prepaid_Activate_Account_pre_req1
  Scenario: Testcase id = 001_Telephony_Prepaid_Without_Prepaid_Activate_Account_pre_req1, description = Activate a Standard Prepaid Service Plan for Telephony Prepaid without Prepaid Account pre req1
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Prepaid_Without_Prepaid_Activate_Account_pre_req1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @002_Telephony_Prepaid_Without_Prepaid_SIM_Swap_On_Active_Account
  Scenario: Testcase id = 002_Telephony_Prepaid_Without_Prepaid_SIM_Swap_On_Active_Account, description = Telephony Prepaid Without Prepaid SIM Swap On Active Account
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Prepaid_Without_Prepaid_SIM_Swap_On_Active_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Telephony Prepaid Sim Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements

  @Telephony @003_Telephony_Prepaid_Without_Prepaid_MSISDN_AND_MSISDN-C_Swap_On_Active_Account
  Scenario: Testcase id = 003_Telephony_Prepaid_Without_Prepaid_MSISDN_AND_MSISDN-C_Swap_On_Active_Account, description = Telephony Prepaid Without Prepaid MSISDN & MSISDN-C Swap On Active Account
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Prepaid_Without_Prepaid_MSISDN_AND_MSISDN-C_Swap_On_Active_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Telephony Prepaid MSISDN Query & Telephony Prepaid MSISDN-C Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements

  @Telephony @004_Telephony_Prepaid_Without_Prepaid_SIM_MSISDN_AND_MSISDNC_Swap_On_Active_Account
  Scenario: Testcase id = 004_Telephony_Prepaid_Without_Prepaid_SIM_MSISDN_AND_MSISDNC_Swap_On_Active_Account, description = SIM, MSISDN & MSISDN-C Swap (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "004_Telephony_Prepaid_Without_Prepaid_SIM_MSISDN_AND_MSISDNC_Swap_On_Active_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Telephony Prepaid Sim Query & Telephony Prepaid MSISDN Query & Telephony Prepaid MSISDN-C Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements

  @Telephony @005_Telephony_Prepaid_Standard_Account_Validation_For_Device_Swap
  Scenario: Testcase id = 005_Telephony_Prepaid_Standard_Account_Validation_For_Device_Swap, description = Telephony Prepaid Account Swap SIM, MSISDN & MSISDN-C with invalid devices
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Prepaid_Standard_Account_Validation_For_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query & get_2_3_MSISDN_Tel_Postpaid_Query & get_2_3_MSISDN-C_Tel_Postpaid_Query"
