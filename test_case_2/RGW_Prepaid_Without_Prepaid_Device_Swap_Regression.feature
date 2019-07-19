Feature: TThis feature file tests all Device Swap Scenarios for Russia Gateway Prepaid Without Prepaid Regression

  Background:
    * I read the data from the excel "Config_Russia_GW_Prepaid_Without_Prepaid_Regression.xlsx" and "Device_Swap" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details
  Scenario: Testcase id = 001_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details, description = Activate a Russia Gateway Prepaid Service Plan for RGW Prepaid Without Prepaid
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
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

  @Telephony @002_RGW_Prepaid_Without_Prepaid_SIM_Device_Swap
  Scenario: Testcase id = 002_RGW_Prepaid_Without_Prepaid_SIM_Device_Swap, description = Swap SIM for Russia Gateway Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Prepaid_Without_Prepaid_SIM_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Russia Gateway Prepaid Sim Query"
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

  @Telephony @003_RGW_Prepaid_Without_Prepaid_MSISDN_Device_Swap
  Scenario: Testcase id = 003_RGW_Prepaid_Without_Prepaid_MSISDN_Device_Swap, description = Swap MSISDN for Russia Gateway Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Prepaid_Without_Prepaid_MSISDN_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Prepaid MSISDN Query"
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

  @Telephony @004_RGW_Prepaid_Without_Prepaid_MSISDN-B_Device_Swap
  Scenario: Testcase id = 004_RGW_Prepaid_Without_Prepaid_MSISDN-B_Device_Swap, description = Swap MSISDN-B for Russia Gateway Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Prepaid_Without_Prepaid_MSISDN-B_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Prepaid MSISDN-B Query"

  @Telephony @005_RGW_Prepaid_Without_Prepaid_MSISDN-C_Device_Swap
  Scenario: Testcase id = 005_RGW_Prepaid_Without_Prepaid_MSISDN-C_Device_Swap, description = Swap MSISDN-C for Russia Gateway Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Prepaid_Without_Prepaid_MSISDN-C_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Prepaid MSISDN-C Query"