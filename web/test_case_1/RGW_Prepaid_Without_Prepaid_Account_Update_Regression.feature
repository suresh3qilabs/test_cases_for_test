Feature: This feature file tests all Account Update Scenarios for Russia Gateway Prepaid Without Prepaid Regression

  Background:
    * I read the data from the excel "Config_Russia_GW_Prepaid_Without_Prepaid_Regression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req
  Scenario: Testcase id = RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req, description = Activate Prepaid account without prepaid details
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req"
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
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
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
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify Prepaid fee validation for the account activated

  @Telephony @001_RGW_Prepaid_Without_Prepaid_Activate_Account_And_Update_SMS_MO_&_SMS_MT
  Scenario: Testcase id = 001_RGW_Prepaid_Without_Prepaid_Activate_Account_And_Update_SMS_MO_&_SMS_MT, description = Activate and Update SMS MO,SMS MT for Prepaid account
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Prepaid_Without_Prepaid_Activate_Account_And_Update_SMS_MO_&_SMS_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 5 seconds
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

  @Telephony @RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_1
  Scenario: Testcase id = RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_1, description = Activate Prepaid account without prepaid details
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "GO Prepaid Russia Gateway" for "Service Plan"
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
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify Prepaid fee validation for the account activated

  @Telephony @002_RGW_Prepaid_Without_Prepaid_Activate_Account_And_Disable_Data_plan_and_valdiate_that_MSISDN-C_is_disabled
  Scenario: Testcase id = 002_RGW_Prepaid_Without_Prepaid_Activate_Account_And_Disable_Data_plan_and_valdiate_that_MSISDN-C_is_disabled, description = Activate and Disable Data plan and valdiate that MSISDN-C is disabled
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Prepaid_Without_Prepaid_Activate_Account_And_Disable_Data_plan_and_valdiate_that_MSISDN-C_is_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Data_BC_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 5 seconds
    Then I validate if "Data_BC_(BS25,BS26)_checkbox" is unchecked
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

  @Telephony @003_RGW_Prepaid_Without_Prepaid_Account_Update_With_Data_Plan_enabled_&_validate_MSISDN_C_is_generated
  Scenario: Testcase id = 003_RGW_Prepaid_Without_Prepaid_Account_Update_With_Data_Plan_enabled_&_validate_MSISDN_C_is_generated, description = Account Update with Data Plan enabled
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Prepaid_Without_Prepaid_Account_Update_With_Data_Plan_enabled_&_validate_MSISDN_C_is_generated"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Data_BC_(BS25,BS26)_checkbox"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Data_BC_(BS25,BS26)_checkbox" is checked
    Then I validate "ENABLED" value is selected for "Data"
    Then I validate "5678" value is selected for "Data_Optional PIN"
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

  @Telephony @RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_2
  Scenario: Testcase id = RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_2, description = Activate Prepaid account without prepaid details
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I uncheck "Call_Forwarding_checkbox"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Call_Forwarding_checkbox" is unchecked
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @005_RGW_Prepaid_Without_Prepaid_Enable_Call_Forwarding
  Scenario: Testcase id = 005_RGW_Prepaid_Without_Prepaid_Enable_Call_Forwarding, description = Enable Call Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Prepaid_Without_Prepaid_Enable_Call_Forwarding"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 5 seconds
    Then I validate if "Call_Forwarding_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is updated successfully on BRM Server

  @Telephony @RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_3
  Scenario: Testcase id = RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_3, description = Activate Prepaid account without prepaid details
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details_pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted No Recharge" for "Service Plan"
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
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify Prepaid fee validation for the account activated

  @Telephony @006_RGW_Prepaid_Without_Prepaid_And_Disable_Call_Forwarding
  Scenario: Testcase id = 006_RGW_Prepaid_Without_Prepaid_And_Disable_Call_Forwarding, description = Disable Call Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Prepaid_Without_Prepaid_And_Disable_Call_Forwarding"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 5 seconds
    Then I validate if "Call_Forwarding_checkbox" is unchecked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify the account is updated successfully on BRM Server