Feature: This feature file tests all Account Activation Scenarios for Russia Gateway Prepaid Without Prepaid Regression

  Background:
    * I read the data from the excel "Config_Russia_GW_Prepaid_Without_Prepaid_Regression.xlsx" and "Account_Activation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details
  Scenario: Testcase id = 001_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_without_prepaid_details, description = Activate Prepaid account without prepaid details
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

  @Telephony @002_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_MSISDN
  Scenario: Testcase id = 002_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_MSISDN, description = Activate Prepaid Account with MSISDN
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_MSISDN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify Prepaid fee validation for the account activated

  @Telephony @003_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_MSISDN_&_auto-populated_MSISDN-C
  Scenario: Testcase id = 003_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_MSISDN_&_auto-populated_MSISDN-C, description = Activate Prepaid Account with MSISDN & auto populated MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_MSISDN_&_auto-populated_MSISDN-C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify Prepaid fee validation for the account activated

  @Telephony @004_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Voicemail_Enabled
  Scenario: Testcase id = 004_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Voicemail_Enabled, description = Activate Prepaid Account with Voicemail Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Voicemail_Enabled"
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
    Then I validate if Enabled Services section is expanded
    Then I validate if "Call_Forwarding_checkbox" is checked
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Voicemail" option is not available
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

  @Telephony @005_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_Without_Data_Plan
  Scenario: Testcase id = 005_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_Without_Data_Plan, description = Activate Prepaid Account Without Data Plan
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_Without_Data_Plan"
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
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I uncheck "Data_BC_(BS25,BS26)_checkbox"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify Prepaid fee validation for the account activated

  @Telephony @006_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_disabled
  Scenario: Testcase id = 006_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_disabled, description = Activate Prepaid Account with 2 Stage Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "GO Prepaid Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @007_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_&_Voice_disabled
  Scenario: Testcase id = 007_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_&_Voice_disabled, description = Activate Prepaid Account with 2 Stage Data & Voice Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_&_Voice_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "GO Prepaid Russia Gateway" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @008_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_&_Voice_Enabled
  Scenario: Testcase id = 008_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_&_Voice_Enabled, description = Activate Prepaid Account with 2 Stage Data & Voice Enabled with No PINs
    Given Provisioning System Mode is set to "OFF" for testcase "008_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_&_Voice_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "GO Prepaid Russia Gateway" for "Service Plan"
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @009_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_SMS_MO_MT_Disabled
  Scenario: Testcase id = 009_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_SMS_MO_MT_Disabled, description = Activate Prepaid Account with SMS MO MT Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_SMS_MO_MT_Disabled"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify Prepaid fee validation for the account activated

  @Telephony @010_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_SMS_MO_MT_Enabled
  Scenario: Testcase id = 010_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_SMS_MO_MT_Enabled, description = Activate Prepaid Account with SMS MO MT Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "010_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_SMS_MO_MT_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @011_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Call_Forwarding_Enabled
  Scenario: Testcase id = 011_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Call_Forwarding_Enabled, description = Activate Prepaid Account with Call Forwarding Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "011_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Call_Forwarding_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @012_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Call_Forwarding_Disabled
  Scenario: Testcase id = 012_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Call_Forwarding_Disabled, description = Activate Prepaid Account with Call Forwarding Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "012_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Call_Forwarding_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "Call_Forwarding_checkbox"
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

  @Telephony @013_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_accountWith_Two_Stage_Voice_Enabled
  Scenario: Testcase id = 013_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_accountWith_Two_Stage_Voice_Enabled, description = Activate Prepaid Account with Two Stage Voice Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "013_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_accountWith_Two_Stage_Voice_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted No Recharge" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @014_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Voice_Enabled_No_PIN
  Scenario: Testcase id = 014_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Voice_Enabled_No_PIN, description = Activate Prepaid Account with Two Stage Voice Enabled and No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "014_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Voice_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted No Recharge" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @015_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_Enabled
  Scenario: Testcase id = 015_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_Enabled, description = Activate Prepaid Account with Two Stage Data Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "015_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted No Recharge" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @016_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_Enabled_No_PIN
  Scenario: Testcase id = 016_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_Enabled_No_PIN, description = Activate Prepaid  Account with Two Stage Data Enabled and No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "016_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Two_Stage_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted No Recharge" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @017_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Voicemail_Disabled
  Scenario: Testcase id = 017_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Voicemail_Disabled, description = Activate Prepaid Account with Voicemail Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "017_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Voicemail_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Voicemail" option is not available
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

  @Telephony @018_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Provider_Reference
  Scenario: Testcase id = 018_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Provider_Reference, description = Activate Prepaid Account with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "018_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
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
    Then I verify Prepaid fee validation for the account activated

  @Telephony @019_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Device_Validation_in_Activation_Page
  Scenario: Testcase id = 019_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Device_Validation_in_Activation_Page, description = Activate Prepaid Account with Device Validation in Activation Page
    Given Provisioning System Mode is set to "OFF" for testcase "019_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Device_Validation_in_Activation_Page"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN-C_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "invalid"
    Then I enter "MSISDN_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "invalid"
#    Then I enter "NEW_SBD_IMEI" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @020_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Tempe_Rudics
  Scenario: Testcase id = 020_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Tempe_Rudics, description = Activate Russia Gateway Postpaid account with Tempe Rudics group
    Given Provisioning System Mode is set to "OFF" for testcase "020_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Tempe_Rudics"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "MENA Prepaid  Russia Gateway" for "Service Plan"
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

  @Telephony @021_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Russia_Rudics
  Scenario: Testcase id = 021_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Russia_Rudics, description = Activate Russia Gateway Postpaid account with Tempe Rudics group
    Given Provisioning System Mode is set to "OFF" for testcase "021_RGW_Prepaid_Without_Prepaid_Activate_Prepaid_account_With_Russia_Rudics"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "MENA Prepaid  Russia Gateway" for "Service Plan"
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