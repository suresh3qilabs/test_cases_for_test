Feature: This feature file tests all activation scenarios of Telephony Crew without Crew Regression

  Background:
    * I read the data from the excel "Config_Telephony_Crew_Without_Crew_Regression.xlsx" and "Account_Activation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

#  @Telephony @000_Standard_Telephony_crew_Validate_VoiceMail_Default_Option
#  Scenario: Testcase id = 000_Standard_Telephony_crew_Validate_VoiceMail_Default_Option, description = For Standard Service Plan Telephony crew Account Default Voicemail Option Must be Voicemail
#    Given Provisioning System Mode is set to "OFF" for testcase "000_Standard_Telephony_crew_Validate_VoiceMail_Default_Option"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Crew" value is selected for "Sub-Market"
#    Then I select "Standard Crew" for "Service Plan"
#    Then I wait 5 seconds
#    Then I validate if Enabled Services section is expanded
#    Then I validate "Voicemail" value is selected for "Voicemail Option"

  @Telephony @001_Telephony_Crew_Without_Crew_Activate_Telephony_Individual_Crew_Account
  Scenario: Testcase id = 001_Telephony_Crew_Without_Crew_Activate_Telephony_Individual_Crew_Account, description = Activate a Standard Crew Service Plan Telephony Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Crew_Without_Crew_Activate_Telephony_Individual_Crew_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @002_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_MSISDN_&_MSISDN-C
  Scenario: Testcase id = 002_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_MSISDN_&_MSISDN-C, description = Activate a Standard Crew Service Plan Telephony Crew Account with MSISDN & MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_MSISDN_&_MSISDN-C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @003_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_MSISDN_&_auto-populated_MSISDN-C
  Scenario: Testcase id = 003_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_MSISDN_&_auto-populated_MSISDN-C, description = Activate a Standard Crew Service Plan Telephony Crew Account with MSISDN & auto populated MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_MSISDN_&_auto-populated_MSISDN-C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @004_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Standard_Account_With_Voicemail_Enabled
  Scenario: Testcase id = 004_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Standard_Account_With_Voicemail_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Voicemail Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Standard_Account_With_Voicemail_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @005_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Standard_Account_Without_Data_Plan
  Scenario: Testcase id = 005_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Standard_Account_Without_Data_Plan, description = Activate a Standard Crew Service Plan Telephony Crew Account Without Data Plan
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Standard_Account_Without_Data_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @006_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_disabled
  Scenario: Testcase id = 006_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with 2 Stage Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @007_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_&_Voice_disabled
  Scenario: Testcase id = 007_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_&_Voice_disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with 2 Stage Data & Voice Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "007_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_&_Voice_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @008_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_&_Voice_Enabled
  Scenario: Testcase id = 008_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_&_Voice_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with 2 Stage Data & Voice Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "008_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_&_Voice_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @009_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_SMS_MO_MT_Disabled
  Scenario: Testcase id = 009_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_SMS_MO_MT_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with SMS MO MT Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "009_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_SMS_MO_MT_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @010_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_SMS_MO_MT_Enabled
  Scenario: Testcase id = 010_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_SMS_MO_MT_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with SMS MO MT ENABLED
    Given Provisioning System Mode is set to "OFF" for testcase "010_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_SMS_MO_MT_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @011_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Call_Forwarding_Enabled
  Scenario: Testcase id = 011_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Call_Forwarding_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Call Forwarding Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "011_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Call_Forwarding_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @012_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Call_Forwarding_Disabled
  Scenario: Testcase id = 012_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Call_Forwarding_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Call Forwarding Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "012_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Call_Forwarding_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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
    Then I uncheck "Call_Forwarding_checkbox"
    Then I select "No Voicemail" for "Voicemail Option"
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

  @Telephony @013_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Voice_Enabled
  Scenario: Testcase id = 013_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Voice_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Two Stage Voice Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "013_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Voice_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @014_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Voice_Enabled_No_PIN
  Scenario: Testcase id = 014_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Voice_Enabled_No_PIN, description = Activate a Standard Crew Service Plan Telephony Crew Account with Two Stage Voice Enabled and No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "014_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Voice_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @015_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_Enabled
  Scenario: Testcase id = 015_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Two Stage Data Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "015_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @016_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_Enabled_No_PIN
  Scenario: Testcase id = 016_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_Enabled_No_PIN, description = Activate a Standard Crew Service Plan Telephony Crew  Account with Two Stage Data Enabled and No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "016_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Two_Stage_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @017_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled
  Scenario: Testcase id = 017_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Voicemail Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "017_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
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

  @Telephony @018_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Enabled
  Scenario: Testcase id = 018_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "018_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @019_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Disabled
  Scenario: Testcase id = 019_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Local Number Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "019_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @020_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_RUDICS_Enabled
  Scenario: Testcase id = 020_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_RUDICS_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with RUDICS Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "020_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_RUDICS_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @021_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_RUDICS_Disabled
  Scenario: Testcase id = 021_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_RUDICS_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with RUDICS Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "021_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_RUDICS_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @022_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled
  Scenario: Testcase id = 022_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Voicemail Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "022_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "No Voicemail" for "Voicemail Option"
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

  @Telephony @023_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Enabled
  Scenario: Testcase id = 023_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Enabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "023_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I check "Local_Number_checkbox"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
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

  @Telephony @024_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Disabled
  Scenario: Testcase id = 024_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Local Number Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "024_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Local_Number_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I uncheck "Local_Number_checkbox"
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

  @Telephony @025_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled
  Scenario: Testcase id = 025_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled, description = Activate a Standard Crew Service Plan Telephony Crew Account with Voicemail Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "025_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Voicemail_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "No Voicemail" for "Voicemail Option"
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

  @Telephony @026_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Provider_Reference
  Scenario: Testcase id = 026_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Provider_Reference, description = Activate a Standard Crew Service Plan Telephony Crew Account with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "026_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @027_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Device_Validation_in_Activation_Page
  Scenario: Testcase id = 027_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Device_Validation_in_Activation_Page, description = Activate a Standard Crew Service Plan Telephony Crew Account with Device Validation in Activation Page
    Given Provisioning System Mode is set to "OFF" for testcase "027_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Device_Validation_in_Activation_Page"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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
    Then I capture the enabled services

  @Telephony @028_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Validate_RUDICS_is_disabled_if_the_Data_plan_is_not_selected
  Scenario: Testcase id = 028_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Validate_RUDICS_is_disabled_if_the_Data_plan_is_not_selected, description = Activate a Standard Crew Service Plan Telephony Crew Account with Validate RUDICS is Disabled if the Data Plan is not Selected
    Given Provisioning System Mode is set to "OFF" for testcase "028_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Validate_RUDICS_is_disabled_if_the_Data_plan_is_not_selected"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @029_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Tempe_Rudics_Group
  Scenario: Testcase id = 029_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Tempe_Rudics_Group, description = Activate a Standard Crew Service Plan Telephony Crew Account with Tempe RUDICS Group
    Given Provisioning System Mode is set to "OFF" for testcase "029_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Tempe_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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

  @Telephony @030_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Russia_Rudics_Group
  Scenario: Testcase id = 030_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Russia_Rudics_Group, description = Activate a Standard Crew Service Plan Telephony Crew Account with Russia RUDICS Group
    Given Provisioning System Mode is set to "OFF" for testcase "030_Telephony_Crew_Without_Crew_Activate_Telephony_Crew_Account_With_Russia_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
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