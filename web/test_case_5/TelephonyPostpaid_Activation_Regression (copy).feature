Feature: This feature file tests all activation scenarios scenarios for Telephony postpaid Regression

  Background:
    * I read the data from the excel "Config_Tel_PostpaidRegression.xlsx" and "Account_Activation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @000_Standard_Telephony_Postpaid_Validate_VoiceMail_Default_Option
  Scenario: Testcase id = 000_Standard_Telephony_Postpaid_Validate_VoiceMail_Default_Option, description = For Standard Service Plan Telephony Postpaid Account Default Voicemail Option Must be Voicemail
    Given Provisioning System Mode is set to "OFF" for testcase "000_Standard_Telephony_Postpaid_Validate_VoiceMail_Default_Option"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I wait 5 seconds
    Then I validate if Enabled Services section is expanded
    Then I validate "Voicemail" value is selected for "Voicemail Option"

  @Telephony @001_Activate_Telephony_Postpaid_Standard_Account
  Scenario: Testcase id = 001_Activate_Telephony_Postpaid_Standard_Account, description = Activate a Standard Service Plan for Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_Activate_Telephony_Postpaid_Standard_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
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

  @Telephony @002_Activate_Telephony_Postpaid_Account_With_MSISDN_&_MSISDN-C
  Scenario: Testcase id = 002_Activate_Telephony_Postpaid_Account_With_MSISDN_&_MSISDN-C, description = Activate a Standard Service Plan Telephony Postpaid Account with MSISDN & MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "002_Activate_Telephony_Postpaid_Account_With_MSISDN_&_MSISDN-C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
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

  @Telephony @003_Activate_Telephony_Postpaid_Account_With_MSISDN_&_auto-populated_MSISDN-C
  Scenario: Testcase id = 003_Activate_Telephony_Postpaid_Account_With_MSISDN_&_auto-populated_MSISDN-C, description = Activate a Standard Service Plan Telephony Postpaid Account with MSISDN & MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "003_Activate_Telephony_Postpaid_Account_With_MSISDN_&_auto-populated_MSISDN-C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
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

  @Telephony @004_Activate_Telephony_Postpaid_Standard_Account_With_Voicemail_Enabled
  Scenario: Testcase id = 004_Activate_Telephony_Postpaid_Standard_Account_With_Voicemail_Enabled, description = Activate a Standard Service Plan for Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "004_Activate_Telephony_Postpaid_Standard_Account_With_Voicemail_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I validate if "Call_Forwarding_checkbox" is checked
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

  @Telephony @005_Activate_Telephony_Postpaid_Standard_Account_Without_Dataplan
  Scenario: Testcase id = 005_Activate_Telephony_Postpaid_Standard_Account_Without_Dataplan, description = Activate a Standard Service Plan Telephony Postpaid Account with MSISDN & MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "005_Activate_Telephony_Postpaid_Standard_Account_Without_Dataplan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I uncheck "Data_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Data_(BS25,BS26)_checkbox" is unchecked
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

  @Telephony @006_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_disabled
  Scenario: Testcase id = 006_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_disabled, description = Activate a Standard Service Plan Telephony Postpaid Account with 2 Stage Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "006_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "DISABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
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

  @Telephony @007_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_&_Voice_disabled
  Scenario: Testcase id = 007_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_&_Voice_disabled, description = Activate a Standard Service Plan Telephony Postpaid Account with 2 Stage Data & Voice Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "007_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_&_Voice_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "DISABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I validate "DISABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
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

  @Telephony @008_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_&_Voice_Enabled
  Scenario: Testcase id = 008_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_&_Voice_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with 2 Stage Data & Voice Enabled and PINS blank
    Given Provisioning System Mode is set to "OFF" for testcase "008_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_&_Voice_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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

  @Telephony @009_Activate_Telephony_Postpaid_Account_With_SMS_MO_MT_Disabled
  Scenario: Testcase id = 009_Activate_Telephony_Postpaid_Account_With_SMS_MO_MT_Disabled, description = Activate a Standard Service Plan Telephony Postpaid Account with 2 Stage Data & Voice Enabled and PINS blank
    Given Provisioning System Mode is set to "OFF" for testcase "009_Activate_Telephony_Postpaid_Account_With_SMS_MO_MT_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "SMS_MO_checkbox" is unchecked
    Then I validate if "SMS_MT_checkbox" is unchecked
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

  @Telephony @010_Activate_Telephony_Postpaid_Account_With_SMS_MO_MT_Enabled
  Scenario: Testcase id = 010_Activate_Telephony_Postpaid_Account_With_SMS_MO_MT_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with 2 Stage Data & Voice Enabled and PINS blank
    Given Provisioning System Mode is set to "OFF" for testcase "010_Activate_Telephony_Postpaid_Account_With_SMS_MO_MT_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
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

  @Telephony @011_Activate_Telephony_Postpaid_Account_With_Call_Forwarding_Enabled
  Scenario: Testcase id = 011_Activate_Telephony_Postpaid_Account_With_Call_Forwarding_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with Call Forwarding Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "011_Activate_Telephony_Postpaid_Account_With_Call_Forwarding_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I check "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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

  @Telephony @012_Activate_Telephony_Postpaid_Account_With_Call_Forwarding_Disabled
  Scenario: Testcase id = 012_Activate_Telephony_Postpaid_Account_With_Call_Forwarding_Disabled, description = Activate a Standard Service Plan Telephony Postpaid Account with Call Forwarding Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "012_Activate_Telephony_Postpaid_Account_With_Call_Forwarding_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
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

  @Telephony @013_Activate_Telephony_Postpaid_Account_With_Two_Stage_Voice_Enabled
  Scenario: Testcase id = 013_Activate_Telephony_Postpaid_Account_With_Two_Stage_Voice_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with Two Stage Voice Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "013_Activate_Telephony_Postpaid_Account_With_Two_Stage_Voice_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
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

  @Telephony @014_Activate_Telephony_Postpaid_Account_With_Two_Stage_Voice_Enabled_No_PIN
  Scenario: Testcase id = 014_Activate_Telephony_Postpaid_Account_With_Two_Stage_Voice_Enabled_No_PIN, description = Activate a Standard Service Plan Telephony Postpaid Account with Two Stage Voice Enabled and No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "014_Activate_Telephony_Postpaid_Account_With_Two_Stage_Voice_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
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

  @Telephony @015_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_Enabled
  Scenario: Testcase id = 015_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with Two Stage Data Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "015_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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

  @Telephony @016_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_Enabled_No_PIN
  Scenario: Testcase id = 016_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_Enabled_No_PIN, description = Activate a Standard Service Plan Telephony Postpaid Account with Two Stage Data Enabled and No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "016_Activate_Telephony_Postpaid_Account_With_Two_Stage_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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

  @Telephony @017_Activate_Telephony_Postpaid_Account_With_Voicemail_Disabled
  Scenario: Testcase id = 017_Activate_Telephony_Postpaid_Account_With_Voicemail_Disabled, description = Activate a Standard Service Plan Telephony Postpaid Account with Voicemail Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "017_Activate_Telephony_Postpaid_Account_With_Voicemail_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "No Voicemail" value is selected for "Voicemail Option"
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

  @Telephony @018_Activate_Telephony_Postpaid_Account_With_Local_Number_Enabled
  Scenario: Testcase id = 018_Activate_Telephony_Postpaid_Account_With_Local_Number_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "018_Activate_Telephony_Postpaid_Account_With_Local_Number_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "Local_Number_checkbox" is checked
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

  @Telephony @019_Activate_Telephony_Postpaid_Account_With_Local_Number_Disabled
  Scenario: Testcase id = 019_Activate_Telephony_Postpaid_Account_With_Local_Number_Disabled, description = Activate a Standard Service Plan Telephony Postpaid Account with Local Number Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "019_Activate_Telephony_Postpaid_Account_With_Local_Number_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Local_Number_checkbox" is unchecked
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

  @Telephony @020_Activate_Telephony_Postpaid_Account_With_RUDICS_Enabled
  Scenario: Testcase id = 020_Activate_Telephony_Postpaid_Account_With_RUDICS_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with RUDICS Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "020_Activate_Telephony_Postpaid_Account_With_RUDICS_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
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

  @Telephony @021_Activate_Telephony_Postpaid_Account_With_RUDICS_Disabled
  Scenario: Testcase id = 021_Activate_Telephony_Postpaid_Account_With_RUDICS_Disabled, description = Activate a Standard Service Plan Telephony Postpaid Account with RUDICS Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "021_Activate_Telephony_Postpaid_Account_With_RUDICS_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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

  @Telephony @022_Activate_Telephony_Postpaid_Account_With_Data_Only_Plan_And_Validate_In_N/W_Elements
  Scenario: Testcase id = 022_Activate_Telephony_Postpaid_Account_With_Data_Only_Plan_And_Validate_In_N/W_Elements, description = Activate a Standard Service Plan Telephony Postpaid Account with Data Only Plan and Validate in N/W Elements
    Given Provisioning System Mode is set to "OFF" for testcase "022_Activate_Telephony_Postpaid_Account_With_Data_Only_Plan_And_Validate_In_N/W_Elements"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard Data Only" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @023_Activate_Telephony_Postpaid_Account_With_Register_Only_Plan_And_Validate_In_N/W_Elements
  Scenario: Testcase id = 023_Activate_Telephony_Postpaid_Account_With_Register_Only_Plan_And_Validate_In_N/W_Elements, description = Activate a Standard Service Plan Telephony Postpaid Account with Register only plan and Validate in N/W Elements
    Given Provisioning System Mode is set to "OFF" for testcase "023_Activate_Telephony_Postpaid_Account_With_Register_Only_Plan_And_Validate_In_N/W_Elements"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Register Only" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @024_Activate_Telephony_Postpaid_Account_With_FMP_Enabled
  Scenario: Testcase id = 024_Activate_Telephony_Postpaid_Account_With_FMP_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with FMP Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "024_Activate_Telephony_Postpaid_Account_With_FMP_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "Follow Me Paging \(VM on Pager\)" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @025_Activate_Telephony_Postpaid_Account_With_Australia_Regional_Plan_And_GeoRestricted_Plan
  Scenario: Testcase id = 025_Activate_Telephony_Postpaid_Account_With_Australia_Regional_Plan_And_GeoRestricted_Plan, description = Activate a Standard Service Plan Telephony Postpaid Account with Australia Regional Plan- GeoRestricted plan
    Given Provisioning System Mode is set to "OFF" for testcase "025_Activate_Telephony_Postpaid_Account_With_Australia_Regional_Plan_And_GeoRestricted_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Regional Geo Restricted" value is selected for "Sub-Market"
    Then I select "Australia Regional Plan-GeoRestricted" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @026_Activate_Telephony_Postpaid_Account_With_Provider_Reference
  Scenario: Testcase id = 026_Activate_Telephony_Postpaid_Account_With_Provider_Reference, description = Activate a Standard Service Plan Telephony Postpaid Account with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "026_Activate_Telephony_Postpaid_Account_With_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I enter "Complex!1234567" for "Provider Reference"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @027_Activate_Telephony_Postpaid_Account_With_Device_Validation_in_Activation_Page
  Scenario: Testcase id = 027_Activate_Telephony_Postpaid_Account_With_Device_Validation_in_Activation_Page, description = Activate a Standard Service Plan Telephony Postpaid Account with Device Validation in Activation Page
    Given Provisioning System Mode is set to "OFF" for testcase "027_Activate_Telephony_Postpaid_Account_With_Device_Validation_in_Activation_Page"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "invalid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "invalid"

  @Telephony @028_Activate_Telephony_Postpaid_Account_With_Validate_RUDICS_is_disabled_if_the_Data_plan_is_not_selected
  Scenario: Testcase id = 028_Activate_Telephony_Postpaid_Account_With_Validate_RUDICS_is_disabled_if_the_Data_plan_is_not_selected, description = Activate a Standard Service Plan Telephony Postpaid Account with Validate RUDICS is disabled if the Data plan is not selected
    Given Provisioning System Mode is set to "OFF" for testcase "028_Activate_Telephony_Postpaid_Account_With_Validate_RUDICS_is_disabled_if_the_Data_plan_is_not_selected"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I uncheck "Data_(BS25,BS26)_checkbox"
    Then I verify "RUDICS_checkbox" is "disabled"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Data_(BS25,BS26)_checkbox" is unchecked
    Then I verify "RUDICS_checkbox" is "disabled"
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

#    @Telephony @029_Activate_Telephony_Postpaid_Account_With_Validate_that_PLUS7_deal_is_not_available_only_for_Russia_ plans
#  Scenario: Testcase id = 029_Activate_Telephony_Postpaid_Account_With_Validate_that_PLUS7_deal_is_not_available_only_for_Russia_ plans, description = Activate a Standard Service Plan Telephony Postpaid Account with Validate that PLUS7 deal is not available only for Russia plans
#    Given Provisioning System Mode is set to "OFF" for testcase "029_Activate_Telephony_Postpaid_Account_With_Validate_that_PLUS7_deal_is_not_available_only_for_Russia_ plans"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Standard" for "Service Plan"
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I check "Local_Number_checkbox"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate if "PLUS7" option is not available
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation

  @Telephony @030_Activate_Telephony_Postpaid_Standard_Account_With_No_Voicemail_option_and_verify_Reset_Pin_button_is_not_available
  Scenario: Testcase id = 030_Activate_Telephony_Postpaid_Standard_Account_With_No_Voicemail_option_and_verify_Reset_Pin_button_is_not_available, description = Activate a Standard Service Plan Telephony Postpaid Account  with No Voicemail option and verify Reset Pin button is not available
    Given Provisioning System Mode is set to "OFF" for testcase "030_Activate_Telephony_Postpaid_Standard_Account_With_No_Voicemail_option_and_verify_Reset_Pin_button_is_not_available"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Reset VM PIN" option is not available
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @031_Activate_Telephony_Postpaid_Standard_Account_With_Pool_Plan
  Scenario: Testcase id = 031_Activate_Telephony_Postpaid_Standard_Account_With_Pool_Plan, description = Activate a Standard Service Plan Telephony Postpaid Account  with Pool Plan
    Given Provisioning System Mode is set to "OFF" for testcase "031_Activate_Telephony_Postpaid_Standard_Account_With_Pool_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @032_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group
  Scenario: Testcase id = 032_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group, description = Activate a Standard Service Plan Telephony Postpaid Account with MSISDN & MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "032_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
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
    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @033_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group
  Scenario: Testcase id = 033_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group, description = Activate a Standard Service Plan Telephony Postpaid Account with MSISDN & MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "033_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
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
    Then I validate "TEL_RUSSIA1" value is selected for "RUDICS_select"
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @034_Activate_Telephony_Postpaid_Account_With_PTT_North_America_L1_Plan
  Scenario: Testcase id = 034_Activate_Telephony_Postpaid_Account_With_PTT_North_America_L1_Plan, description = Activate a Standard Service Plan Telephony Postpaid Account with PTT North America L1 plan
    Given Provisioning System Mode is set to "OFF" for testcase "034_Activate_Telephony_Postpaid_Account_With_PTT_North_America_L1_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Regional Geo Restricted" value is selected for "Sub-Market"
    Then I select "PTT Telephony North America L1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @035_Activate_Telephony_Postpaid_Account_With_PTT_Telephony_STD_Plan
  Scenario: Testcase id = 035_Activate_Telephony_Postpaid_Account_With_PTT_Telephony_STD_Plan, description = Activate a Standard Service Plan Telephony Postpaid Account with Australia Regional Plan- GeoRestricted plan
    Given Provisioning System Mode is set to "OFF" for testcase "035_Activate_Telephony_Postpaid_Account_With_PTT_Telephony_STD_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "PTT Telephony STD" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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
