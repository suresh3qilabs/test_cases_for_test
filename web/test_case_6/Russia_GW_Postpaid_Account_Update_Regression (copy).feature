Feature: This feature file tests all account update scenarios for Telephony Russia Gateway Postpaid Regression test

  Background:
    * I read the data from the excel "Config_Russia_GW_Postpaid_Regression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req
  Scenario: Testcase id = RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req, description = Activate a Russia Gateway Postpaid Individual Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req"
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
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
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

  @Telephony @001_RGW_Postpaid_Account_Update_Disable_SMS_MO_&_SMS_MT
  Scenario: Testcase id = 001_RGW_Postpaid_Account_Update_Disable_SMS_MO_&_SMS_MT, description = Update Postpaid Account Disable SMS MO,SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Postpaid_Account_Update_Disable_SMS_MO_&_SMS_MT"
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

  @Telephony @002_RGW_Postpaid_Account_Update_Disable_the_RUDICS_checkbox
  Scenario: Testcase id = 002_RGW_Postpaid_Account_Update_Disable_the_RUDICS_checkbox, description = Disable the RUDICS check box
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Postpaid_Account_Update_Disable_the_RUDICS_checkbox"
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
    Then I wait 5 seconds
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

  @Telephony @003_RGW_Postpaid_Account_Update_Language_for_Russia_Gateway_Postpaid
  Scenario: Testcase id = 003_RGW_Postpaid_Account_Update_Language_for_Russia_Gateway_Postpaid, description = Update Language for Russia Gateway Postpaid
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Postpaid_Account_Update_Language_for_Russia_Gateway_Postpaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "Language" button
    Then I select "French" for "Language"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_1
  Scenario: Testcase id = RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_1, description = Activate a Russia Gateway Postpaid Individual Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_1"
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
    Then I verify the account is updated successfully on BRM Server
    Then I validate the service order for activation

  @Telephony @004_RGW_Postpaid_Account_Update_Disable_Data_plan_and_valdiate_that_MSISDNC_is_disabled
  Scenario: Testcase id = 004_RGW_Postpaid_Account_Update_Disable_Data_plan_and_valdiate_that_MSISDNC_is_disabled, description = Disable Data plan and valdiate that MSISDNC is disabled
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Postpaid_Account_Update_Disable_Data_plan_and_valdiate_that_MSISDNC_is_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I wait 5 seconds
    Then I uncheck "Data_BC_(BS25,BS26)_checkbox"
    Then I validate if "Data_BC_(BS25,BS26)_checkbox" is unchecked
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

  @Telephony @005_RGW_Postpaid_Account_Update_With_Data_Plan_enabled_&_validate_MSISDNC_is_generated
  Scenario: Testcase id = 005_RGW_Postpaid_Account_Update_With_Data_Plan_enabled_&_validate_MSISDNC_is_generated, description = Account Update with Data Plan enabled
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Postpaid_Account_Update_With_Data_Plan_enabled_&_validate_MSISDNC_is_generated"
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_2
  Scenario: Testcase id = RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_2, description = Activate a Russia Gateway Postpaid Individual Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_2"
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
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
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

  @Telephony @006_RGW_Postpaid_Account_Update_Enable_SMS_MO_&_SMS_MT
  Scenario: Testcase id = 006_RGW_Postpaid_Account_Update_Enable_SMS_MO_&_SMS_MT, description = Enable SMS MO and SMS MT Features
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Postpaid_Account_Update_Enable_SMS_MO_&_SMS_MT"
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

  @Telephony @007_RGW_Postpaid_Account_Update_Disable_Call_Forwarding
  Scenario: Testcase id = 007_RGW_Postpaid_Account_Update_Disable_Call_Forwarding, description = Disable Call Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Postpaid_Account_Update_Disable_Call_Forwarding"
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @008_RGW_Postpaid_Account_Update_Enable_Call_Forwarding
  Scenario: Testcase id = 008_RGW_Postpaid_Account_Update_Enable_Call_Forwarding, description = Enable Call Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "008_RGW_Postpaid_Account_Update_Enable_Call_Forwarding"
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

  @Telephony @RGW_Postpaid_Activate_account_with_RUDICS_pre_req1
  Scenario: Testcase id = RGW_Postpaid_Activate_account_with_RUDICS_pre_req1, description = Activate account with RUDICS enabled Pre Req1
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_account_with_RUDICS_pre_req1"
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
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
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
    Then I validate the service order for activation

  @Telephony @009_RGW_Postpaid_Account_Update_with_Tempe_Rudics_group
  Scenario: Testcase id = 009_RGW_Postpaid_Account_Update_with_Tempe_Rudics_group, description = Update Russia Gateway Postpaid account with Tempe Rudics group
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Postpaid_Account_Update_with_Tempe_Rudics_group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
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

  @Telephony @010_RGW_Postpaid_Account_Update_with_Russia_RUDICS_group
  Scenario: Testcase id = 010_RGW_Postpaid_Account_Update_with_Russia_RUDICS_group, description = Update Russia Gateway Postpaid account with Russia RUDICS group
    Given Provisioning System Mode is set to "OFF" for testcase "010_RGW_Postpaid_Account_Update_with_Russia_RUDICS_group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
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

  @Telephony @RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_3
  Scenario: Testcase id = RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_3, description = Activate a Russia Gateway Postpaid Individual Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Postpaid_Activate_Individual_Postpaid_account_Pre_req_3"
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
    Then I uncheck "Data_BC_(BS25,BS26)_checkbox"
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

  @Telephony @011_RGW_Postpaid_Account_Update_with_data_service
  Scenario: Testcase id = 011_RGW_Postpaid_Account_Update_with_data_service, description = Update Postpaid account with data service(Add Data service)
    Given Provisioning System Mode is set to "OFF" for testcase "011_RGW_Postpaid_Account_Update_with_data_service"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Data_BC_(BS25,BS26)_checkbox"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 15 seconds
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
    Then I verify the account is updated successfully on BRM Server