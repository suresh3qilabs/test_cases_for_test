Feature: This feature file tests all Account Update Regression test scenarios for Russia Gateway Crew Without Crew

  Background:
    * I read the data from the excel "Config_Russia_GW_Crew_Without_Crew_Regression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @RGW_Crew_Without_Crew_Activate_Account_With_Individual_Crew_Account_Pre_req
  Scenario: Testcase id = RGW_Crew_Without_Crew_Activate_Account_With_Individual_Crew_Account_Pre_req, description = Activate Russia Gateway Crew Without Crew Account With Individual Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Activate_Account_With_Individual_Crew_Account_Pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
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

  @Telephony @001_RGW_Crew_without_Crew_Account_Update_SMS_MO_&_SMS_MT
  Scenario: Testcase id = 001_RGW_Crew_without_Crew_Account_Update_SMS_MO_&_SMS_MT, description = Update SMS MO,SMS MT for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Crew_without_Crew_Account_Update_SMS_MO_&_SMS_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 2 seconds
    Then I verify the account is updated successfully on BRM Server
    Then I validate if "SMS_MO_checkbox" is unchecked
    Then I validate if "SMS_MT_checkbox" is unchecked
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @002_RGW_Crew_without_Crew_Account_Update_Disable_Data_plan_and_valdiate_that_MSISDNC_is_disabled
  Scenario: Testcase id = 002_RGW_Crew_without_Crew_Account_Update_Disable_Data_plan_and_valdiate_that_MSISDNC_is_disabled, description = Disable Data plan and valdiate that MSISDNC is disabled for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Crew_without_Crew_Account_Update_Disable_Data_plan_and_valdiate_that_MSISDNC_is_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I wait 5 seconds
    Then I uncheck "Data_BC_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @003_RGW_Crew_without_Crew_Account_Update_Disable_the_RUDICS_checkbox
  Scenario: Testcase id = 003_RGW_Crew_without_Crew_Account_Update_Disable_the_RUDICS_checkbox, description = Disable the RUDICS check box for RGW Crew Without Crew account (Rudics box disabled at this time)
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Crew_without_Crew_Account_Update_Disable_the_RUDICS_checkbox"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "RUDICS_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I validate if "RUDICS_checkbox" is unchecked
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @004_RGW_Crew_without_Crew_Account_Update_Enable_the_RUDICS_checkbox
  Scenario: Testcase id = 004_RGW_Crew_without_Crew_Account_Update_Enable_the_RUDICS_checkbox, description = Enable the RUDICS check box for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Crew_without_Crew_Account_Update_Enable_the_RUDICS_checkbox"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Data_BC_(BS25,BS26)_checkbox"
    Then I check "RUDICS_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I validate if "RUDICS_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @005_RGW_Crew_without_Crew_Account_Update_With_Data_Plan_enabled_&_validate_MSISDNC_is_generated
  Scenario: Testcase id = 005_RGW_Crew_without_Crew_Account_Update_With_Data_Plan_enabled_&_validate_MSISDNC_is_generated, description = Account Update with Data Plan enabled for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Crew_without_Crew_Account_Update_With_Data_Plan_enabled_&_validate_MSISDNC_is_generated"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Data_BC_(BS25,BS26)_checkbox"
    Then I uncheck "RUDICS_checkbox"
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @006_RGW_Crew_without_Crew_Account_Update_Enable_SMS_MO_&_SMS_MT
  Scenario: Testcase id = 006_RGW_Crew_without_Crew_Account_Update_Enable_SMS_MO_&_SMS_MT, description = Enable SMS MO and SMS MT Features for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Crew_without_Crew_Account_Update_Enable_SMS_MO_&_SMS_MT"
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
    Then I validate if "SMS_MO_checkbox" is checked
    Then I validate if "SMS_MT_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is updated successfully on BRM Server
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements

  @Telephony @007_RGW_Crew_without_Crew_Account_Update_Call_Forwarding
  Scenario: Testcase id = 007_RGW_Crew_without_Crew_Account_Update_Call_Forwarding, description = Enable Call Forwarding for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Crew_without_Crew_Account_Update_Call_Forwarding"
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
    Then I validate if "Call_Forwarding_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @008_RGW_Crew_without_Crew_Account_Update_With_Disable_Call_Forwarding
  Scenario: Testcase id = 008_RGW_Crew_without_Crew_Account_Update_With_Disable_Call_Forwarding, description = Disable Call Forwarding for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "008_RGW_Crew_without_Crew_Account_Update_With_Disable_Call_Forwarding"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I validate if "Call_Forwarding_checkbox" is unchecked
    Then I click on obj repo "Update_Account" button
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @RGW_Crew_without_Crew_Account_Activation_with_Rudics_pre_req1
  Scenario: Testcase id = RGW_Crew_without_Crew_Account_Activation_with_Rudics_pre_req1, description = Activate Russia Gateway Crew account with Rudics for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_without_Crew_Account_Activation_with_Rudics_pre_req1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "RUDICS_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server
    Then I validate the service order for activation

  @Telephony @009_RGW_Crew_without_Crew_Account_Update_To_Russia_Rudics
  Scenario: Testcase id = 009_RGW_Crew_without_Crew_Account_Update_To_Russia_Rudics, description = Update Russia Gateway Crew Account to Russia Rudics Group for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Crew_without_Crew_Account_Update_To_Russia_Rudics"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "TEL_RUSSIA1" value is selected for "RUDICS_select"
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @010_RGW_Crew_without_Crew_Account_Update_To_Tempe_Rudics_Group
  Scenario: Testcase id = 010_RGW_Crew_without_Crew_Account_Update_To_Tempe_Rudics_Group, description = Update Russia Gateway Crew Account to Tempe Rudics Group for RGW Crew Without Crew account
    Given Provisioning System Mode is set to "OFF" for testcase "010_RGW_Crew_without_Crew_Account_Update_To_Tempe_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
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
    Then I verify the account is updated successfully on BRM Server