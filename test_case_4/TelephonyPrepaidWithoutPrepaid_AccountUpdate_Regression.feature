Feature: This feature file tests all account update scenarios for Telephony prepaid without prepaid Regression

  Background:
    * I read the data from the excel "Config_Tel_Prepaid_Without_Prepaid_Regression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Telephony_Prepaid_Without_Prepaid_Activate_Account_Standard_Prepaid
  Scenario: Testcase id = 001_Telephony_Prepaid_Without_Prepaid_Activate_Account_Standard_Prepaid, description = Activate a Standard Prepaid Service Plan for Telephony Prepaid without Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Prepaid_Without_Prepaid_Activate_Account_Standard_Prepaid"
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

  @Telephony @002_Telephony_Prepaid_Without_Prepaid_Update_Language
  Scenario: Testcase id = 002_Telephony_Prepaid_Without_Prepaid_Update_Language, description = Telephony Prepaid Without Prepaid Update Language
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Prepaid_Without_Prepaid_Update_Language"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "Telephony" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "Language" button
    Then I select "French" for "Language"
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @003_Telephony_Prepaid_Without_Prepaid_Activate_And_Update_SMS_MO_SMS_MT
  Scenario: Testcase id = 003_Telephony_Prepaid_Without_Prepaid_Activate_And_Update_SMS_MO_SMS_MT, description = Telephony Prepaid Without Prepaid Activate And Update SMS MO SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Prepaid_Without_Prepaid_Activate_And_Update_SMS_MO_SMS_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "English" for "Language"
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

  @Telephony @004_Telephony_Prepaid_Without_Prepaid_Activate_And_Update_Voicemail_And_Call_forwarding
  Scenario: Testcase id = 004_Telephony_Prepaid_Without_Prepaid_Activate_And_Update_Voicemail_And_Call_forwarding, description = Telephony Prepaid Without Prepaid Activate And Update Voicemail And Call forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Prepaid_Without_Prepaid_Activate_And_Update_Voicemail_And_Call_forwarding"
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
    Then I select "Voicemail" for "Voicemail Option"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Call_Forwarding_checkbox" is checked
    Then I validate "Voicemail" value is selected for "Voicemail Option"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I uncheck "Call_Forwarding_checkbox"
    Then I select "No Voicemail" for "Voicemail Option"
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @005_Telephony_Prepaid_Without_Prepaid_Activate_And_Disable_Data_plan_and_validate_that_MSISDN_C_is_disabled
  Scenario: Testcase id = 005_Telephony_Prepaid_Without_Prepaid_Activate_And_Disable_Data_plan_and_validate_that_MSISDN_C_is_disabled, description = Telephony Prepaid Without Prepaid Activate And Disable Data plan and validate that MSISDN_C is disabled
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Prepaid_Without_Prepaid_Activate_And_Disable_Data_plan_and_validate_that_MSISDN_C_is_disabled"
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
    Then I click on the Contract ID
    Then I uncheck "Data_(BS25,BS26)_checkbox"
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @006_Telephony_Prepaid_Without_Prepaid_Account_Update_Data_Plan_enabled_and_validate_that_MSISDN_C_is_generated
  Scenario: Testcase id = 006_Telephony_Prepaid_Without_Prepaid_Account_Update_Data_Plan_enabled_and_validate_that_MSISDN_C_is_generated, description = Telephony_Prepaid_Without_Prepaid_Account_Update_Data_Plan_enabled
    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Prepaid_Without_Prepaid_Account_Update_Data_Plan_enabled_and_validate_that_MSISDN_C_is_generated"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Data_(BS25,BS26)_checkbox"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Data_(BS25,BS26)_checkbox" is checked
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

  @Telephony @007_Telephony_Prepaid_Without_Prepaid_Activate_Account_pre_req1
  Scenario: Testcase id = 007_Telephony_Prepaid_Without_Prepaid_Activate_Account_pre_req1, description = Activate a Standard Prepaid Service Plan for Telephony Prepaid without Prepaid Account pre req1
    Given Provisioning System Mode is set to "OFF" for testcase "007_Telephony_Prepaid_Without_Prepaid_Activate_Account_pre_req1"
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

  @Telephony @008_Telephony_Prepaid_Without_Prepaid_Account_Disable_Two_Stage_voice_and_Data
  Scenario: Testcase id = 008_Telephony_Prepaid_Without_Prepaid_Account_Disable_Two_Stage_voice_and_Data, description = Telephony Prepaid Without Prepaid Account Disable Two Stage voice and Data
    Given Provisioning System Mode is set to "OFF" for testcase "008_Telephony_Prepaid_Without_Prepaid_Account_Disable_Two_Stage_voice_and_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I verify "Data_Optional PIN" is "disabled"
    Then I verify "Voice_Optional PIN" is "disabled"
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

  @Telephony @009_Telephony_Prepaid_Without_Prepaid_Account_Enable_Two_Stage_voice_and_Data
  Scenario: Testcase id = 009_Telephony_Prepaid_Without_Prepaid_Account_Enable_Two_Stage_voice_and_Data, description = Telephony Prepaid Without Prepaid Account Enable Two Stage voice and Data
    Given Provisioning System Mode is set to "OFF" for testcase "009_Telephony_Prepaid_Without_Prepaid_Account_Enable_Two_Stage_voice_and_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
    Then I validate "1234" value is selected for "Voice_Optional PIN"
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

  @Telephony @010_Telephony_Prepaid_Without_Prepaid_Account_update_Update_the_Two_stage_Voice_PIN_and_Data_PIN
  Scenario: Testcase id = 010_Telephony_Prepaid_Without_Prepaid_Account_update_Update_the_Two_stage_Voice_PIN_and_Data_PIN, description = Update 2 stage voice PIN and data PIN
    Given Provisioning System Mode is set to "OFF" for testcase "010_Telephony_Prepaid_Without_Prepaid_Account_update_Update_the_Two_stage_Voice_PIN_and_Data_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I enter "1357" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "2468" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
    Then I validate "1357" value is selected for "Voice_Optional PIN"
    Then I validate "2468" value is selected for "Data_Optional PIN"
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

  @Telephony @011_Telephony_Prepaid_Without_Prepaid_Activate_account_and_update_Service_plan
  Scenario: Testcase id = 011_Telephony_Prepaid_Without_Prepaid_Activate_account_and_update_Service_plan, description = Activate a Telephony Prepaid Account and update service plan
    Given Provisioning System Mode is set to "OFF" for testcase "011_Telephony_Prepaid_Without_Prepaid_Activate_account_and_update_Service_plan"
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
    Then I select "GO Prepaid" for "Service Plan"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "GO Prepaid" value is selected for "Service Plan"
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
