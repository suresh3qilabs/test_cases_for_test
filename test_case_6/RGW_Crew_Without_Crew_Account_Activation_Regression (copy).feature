Feature: This feature file tests all Account Activation Regression test scenarios for Russia Gateway Crew Without Crew

  Background:
    * I read the data from the excel "Config_Russia_GW_Crew_Without_Crew_Regression.xlsx" and "Account_Activation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_RGW_Crew_Without_Crew_Activate_Account_With_Individual_Crew_Account
  Scenario: Testcase id = 001_RGW_Crew_Without_Crew_Activate_Account_With_Individual_Crew_Account, description = Activate RGW Crew Without Crew Account With Individual Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Crew_Without_Crew_Activate_Account_With_Individual_Crew_Account"
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

  @Telephony @002_RGW_Crew_Without_Crew_Activate_Account_With_MSISDN
  Scenario: Testcase id = 002_RGW_Crew_Without_Crew_Activate_Account_With_MSISDN, description = Activate RGW Crew Without Crew Account With MSISDN & MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Crew_Without_Crew_Activate_Account_With_MSISDN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
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
#
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @003_RGW_Crew_Without_Crew_Activate_account_without_MSISDNC_and_validate_MSISDNC_is_auto_generated
  Scenario: Testcase id = 003_RGW_Crew_Without_Crew_Activate_account_without_MSISDNC_and_validate_MSISDNC_is_auto_generated, description = Activate RGW Crew Without Crew account without MSISDNC and validate MSISDNC is auto generated
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Crew_Without_Crew_Activate_account_without_MSISDNC_and_validate_MSISDNC_is_auto_generated"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
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
#
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @004_RGW_Crew_Without_Crew_Activate_account_without_Data_plan
  Scenario: Testcase id = 004_RGW_Crew_Without_Crew_Activate_account_without_Data_plan, description = Activate RGW Crew Without Crew account without Data plan
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Crew_Without_Crew_Activate_account_without_Data_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I uncheck "Data_BC_(BS25,BS26)_checkbox"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Data_BC_(BS25,BS26)_checkbox" is unchecked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
#
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @005_RGW_Crew_Without_Crew_Activate_account_with_SMS_MO_and_SMS_MT_Features_Disabled
  Scenario: Testcase id = 005_RGW_Crew_Without_Crew_Activate_account_with_SMS_MO_and_SMS_MT_Features_Disabled, description = Activate RGW Crew Without Crew account with SMS MO and SMS MT Features Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Crew_Without_Crew_Activate_account_with_SMS_MO_and_SMS_MT_Features_Disabled"
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
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "SMS_MO_checkbox" is unchecked
    Then I validate if "SMS_MT_checkbox" is unchecked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
#
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @006_RGW_Crew_Without_Crew_Activate_account_with_SMS_MO_and_SMS_MT_Features_enabled
  Scenario: Testcase id = 006_RGW_Crew_Without_Crew_Activate_account_with_SMS_MO_and_SMS_MT_Features_enabled, description = Activate RGW Crew Without Crew account with SMS MO and SMS MT Features enabled
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Crew_Without_Crew_Activate_account_with_SMS_MO_and_SMS_MT_Features_enabled"
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
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "SMS_MO_checkbox" is checked
    Then I validate if "SMS_MT_checkbox" is checked
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

  @Telephony @007_RGW_Crew_Without_Crew_Activate_account_with_Call_forwarding_enabled
  Scenario: Testcase id = 007_RGW_Crew_Without_Crew_Activate_account_with_Call_forwarding_enabled, description = Activate RGW Crew Without Crew account with Call forwarding enabled
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Crew_Without_Crew_Activate_account_with_Call_forwarding_enabled"
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
    Then I check "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
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
    Then I validate the service order for activation

  @Telephony @008_RGW_Crew_without_Crew_Activate_account_with_Call_Forwarding_disabled
  Scenario: Testcase id = 008_RGW_Crew_without_Crew_Activate_account_with_Call_Forwarding_disabled, description = Activate RGW Crew Without Crew account with Call forwarding disabled
    Given Provisioning System Mode is set to "OFF" for testcase "008_RGW_Crew_without_Crew_Activate_account_with_Call_Forwarding_disabled"
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
    Then I uncheck "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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

  @Telephony @009_RGW_Crew_without_Crew_Activate_account_with_RUDICS_enabled
  Scenario: Testcase id = 009_RGW_Crew_without_Crew_Activate_account_with_RUDICS_enabled, description = Activate RGW Crew Without Crew account with RUDICS enabled
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Crew_without_Crew_Activate_account_with_RUDICS_enabled"
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

  @Telephony @010_RGW_Crew_without_Crew_Activate_account_with_RUDICS_disabled
  Scenario: Testcase id = 010_RGW_Crew_without_Crew_Activate_account_with_RUDICS_disabled, description = Activate RGW Crew Without Crew account with RUDICS disabled
    Given Provisioning System Mode is set to "OFF" for testcase "010_RGW_Crew_without_Crew_Activate_account_with_RUDICS_disabled"
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
    Then I uncheck "RUDICS_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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
    Then I validate the service order for activation

  @Telephony @011_RGW_Crew_without_Crew_Activate_an_account_with_Russia_Crew_plan
  Scenario: Testcase id = 011_RGW_Crew_without_Crew_Activate_an_account_with_Russia_Crew_plan, description = Activate RGW Crew Without Crew account with RussiaCrew plan
    Given Provisioning System Mode is set to "OFF" for testcase "011_RGW_Crew_without_Crew_Activate_an_account_with_Russia_Crew_plan"
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
    Then I capture the enabled services
    Then I click on "Activate_Crew"
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

  @Telephony @012_RGW_Crew_without_Crew_Bulk_account_activation_with_Individual_plan
  Scenario: Testcase id = 012_RGW_Crew_without_Crew_Bulk_account_activation_with_Individual_plan, description = RGW Crew Without Crew Bulk account activation with Individual plan
    Given Provisioning System Mode is set to "OFF" for testcase "012_RGW_Crew_without_Crew_Bulk_account_activation_with_Individual_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Russia_Gateway_SIM_Crew_Without_Crew" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Russia_Gateway_SIM_Crew_Without_Crew.csv" to "File_Upload"
    Then I select "Russia Gateway Crew" for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
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
    Then I validate that accounts are activated with given details for bulk activation for "Russia_Gateway_SIM_Crew_Without_Crew"

  @Telephony @013_RGW_Crew_Without_Crew_Validate_Voicemail_option_is_not_available_for_Russia_Gateway_Crew_plans
  Scenario: Testcase id = 013_RGW_Crew_Without_Crew_Validate_Voicemail_option_is_not_available_for_Russia_Gateway_Crew_plans, description = RGW Crew Without Crew Validate that Voicemail option is not available for Russia Gateway Crew plans
    Given Provisioning System Mode is set to "OFF" for testcase "013_RGW_Crew_Without_Crew_Validate_Voicemail_option_is_not_available_for_Russia_Gateway_Crew_plans"
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
    Then I capture the enabled services
    Then I should not see "Voicemail"

  @Telephony @014_RGW_Crew_Without_Crew_Validate_that_Two_Stage_Voice_and_Data_Is_available_for_Russia_Gateway_Crew_and_is_functional
  Scenario: Testcase id = 014_RGW_Crew_Without_Crew_Validate_that_Two_Stage_Voice_and_Data_Is_available_for_Russia_Gateway_Crew_and_is_functional, description = RGW Crew Without Crew Validate that Two Stage Voice and Data Is available for Russia Gateway Crew and is functional
    Given Provisioning System Mode is set to "OFF" for testcase "014_RGW_Crew_Without_Crew_Validate_that_Two_Stage_Voice_and_Data_Is_available_for_Russia_Gateway_Crew_and_is_functional"
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

  @Telephony @015_RGW_Crew_Without_Crew_Account_Activation_with_Tempe_Rudics_group
  Scenario: Testcase id = 015_RGW_Crew_Without_Crew_Account_Activation_with_Tempe_Rudics_group, description = RGW Crew Without Crew Activate Russia Gateway Crew account with Tempe Rudics group
    Given Provisioning System Mode is set to "OFF" for testcase "015_RGW_Crew_Without_Crew_Account_Activation_with_Tempe_Rudics_group"
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
    Then I validate the service order for activation

  @Telephony @016_RGW_Crew_Without_Crew_Account_Activation_with_Russia_RUDICS_group
  Scenario: Testcase id = 016_RGW_Crew_Without_Crew_Account_Activation_with_Russia_RUDICS_group, description = RGW Crew Without Crew Activate Russia Gateway Crew account with Russia RUDICS group
    Given Provisioning System Mode is set to "OFF" for testcase "016_RGW_Crew_Without_Crew_Account_Activation_with_Russia_RUDICS_group"
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
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page

    Then I validate if "RUDICS_checkbox" is checked
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
    Then I validate the service order for activation
