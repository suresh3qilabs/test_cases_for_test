Feature: This feature file tests all Device Swap scenarios for Russia Gateway Postpaid Regression

  Background:
    * I read the data from the excel "Config_Russia_GW_Postpaid_Regression.xlsx" and "Device_Swap" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_RGW_Postpaid_Activate_Individual_Postpaid_account
  Scenario: Testcase id = 001_RGW_Postpaid_Activate_Individual_Postpaid_account, description = Activate a Individual Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Postpaid_Activate_Individual_Postpaid_account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Postpaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Postpaid" for "Service Plan"
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

  @Telephony @002_RGW_Postpaid_SIM_Device_Swap
  Scenario: Testcase id = 002_RGW_Postpaid_SIM_Device_Swap, description = Swap SIM for Russia Gateway Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Postpaid_SIM_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Russia Gateway Postpaid Sim Query"
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

  @Telephony @003_RGW_Postpaid_MSISDN_Device_Swap
  Scenario: Testcase id = 003_RGW_Postpaid_MSISDN_Device_Swap, description = Swap MSISDN for Russia Gateway Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Postpaid_MSISDN_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Russia Gateway Postpaid MSISDN Query"
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

  @Telephony @004_RGW_Postpaid_MSISDN-B_Device_Swap
  Scenario: Testcase id = 004_RGW_Postpaid_MSISDN-B_Device_Swap, description = Swap MSISDN-B for Russia Gateway Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Postpaid_MSISDN-B_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Postpaid MSISDN-B Query"

  @Telephony @005_RGW_Postpaid_MSISDN-C_Device_Swap
  Scenario: Testcase id = 005_RGW_Postpaid_MSISDN-C_Device_Swap, description = Swap MSISDN-C for Russia Gateway Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Postpaid_MSISDN-C_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Postpaid MSISDN-C Query"