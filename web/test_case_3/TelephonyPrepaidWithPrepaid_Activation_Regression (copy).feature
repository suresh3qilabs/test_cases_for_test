Feature: This feature file tests all activation scenarios for Telephony prepaid with prepaid regression

  Background:
    * I read the data from the excel "Config_Telephony_Prepaid_With_Prepaid_Regression.xlsx" and "Account_Activation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
#    * I read the data from the excel "Config_Telephony_Prepaid_With_Prepaid_Activation_Regression_2.xlsx" and "Config" tab

  @Telephony @001_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity
  Scenario: Testcase id = 001_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity, description = Activate Telephony prepaid with preapaid account with details like Voucher Quantity and 30 day extension quantity
    Given Provisioning System Mode is set to "ON" for testcase "001_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "8" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @002_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_enabled
  Scenario: Testcase id = 002_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_enabled, description = Activate account with details like Voucher Quantity and 30 day extension quantity and Threshold alert enabled
    Given Provisioning System Mode is set to "ON" for testcase "002_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "7" for "Prepaid_Voucher_Quantity"
    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I set the checkbox "Prepaid_Threshold_Alerts"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @003_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_disabled
  Scenario: Testcase id = 003_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_disabled, description = Activate account with details like Voucher Quantity and 30 day extension quantity and Threshold alert disabled
    Given Provisioning System Mode is set to "ON" for testcase "003_Activate_Telephony_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "8" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I uncheck the checkbox "Prepaid_Threshold_Alerts"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @004_Activate_Telephony_prepaid_with_prepaid_account_with_Two_Stage_Voice_Enabled
  Scenario: Testcase id = 004_Activate_Telephony_prepaid_with_prepaid_account_with_Two_Stage_Voice_Enabled, description = Activate Telephony Prepaid with Prepaid Account with Two-stage Voice Enabled
    Given Provisioning System Mode is set to "ON" for testcase "004_Activate_Telephony_prepaid_with_prepaid_account_with_Two_Stage_Voice_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "10" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @005_Activate_Telephony_prepaid_with_prepaid_Account_with_Two_Stage_Data_Disabled
  Scenario: Testcase id = 005_Activate_Telephony_prepaid_with_prepaid_Account_with_Two_Stage_Data_Disabled, description = Activate Telephony Prepaid with Prepaid Account with Two-stage Data Disabled
    Given Provisioning System Mode is set to "ON" for testcase "005_Activate_Telephony_prepaid_with_prepaid_Account_with_Two_Stage_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "4" for "Prepaid_Voucher_Quantity"
    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @006_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_and_Data_Disabled
  Scenario: Testcase id = 006_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_and_Data_Disabled, description = Activate Telephony Prepaid account with Two-stage voice and Data Disabled
    Given Provisioning System Mode is set to "ON" for testcase "006_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "10" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @007_Activate_Telephony_prepaid_with_prepaid_account_with_Two_Stage_Voice_and_Data_enabled
  Scenario: Testcase id = 007_Activate_Telephony_prepaid_with_prepaid_account_with_Two_Stage_Voice_and_Data_enabled, description = Activate Telephony prepaid account with Two-Stage Voice and Data enabled
    Given Provisioning System Mode is set to "ON" for testcase "007_Activate_Telephony_prepaid_with_prepaid_account_with_Two_Stage_Voice_and_Data_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "10" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @008_Activate_Telephony_prepaid_with_prepaid_account_with_SMS_MO_and_SMS_MT_Features_enabled
  Scenario: Testcase id = 008_Activate_Telephony_prepaid_with_prepaid_account_with_SMS_MO_and_SMS_MT_Features_enabled, description = Activate Prepaid with Prepaid account with SMS MO and SMS MT Features enabled
    Given Provisioning System Mode is set to "ON" for testcase "008_Activate_Telephony_prepaid_with_prepaid_account_with_SMS_MO_and_SMS_MT_Features_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "10" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @009_Activate_Telephony_prepaid_with_prepaid_account_With_Call_Forwarding_Enabled
  Scenario: Testcase id = 009_Activate_Telephony_prepaid_with_prepaid_account_With_Call_Forwarding_Enabled, description = Activate Telephony Prepaid With Prepaid Account With Call Forwarding Enabled
    Given Provisioning System Mode is set to "ON" for testcase "009_Activate_Telephony_prepaid_with_prepaid_account_With_Call_Forwarding_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "10" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @010_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_PIN
  Scenario: Testcase id = 010_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_PIN, description = Activate Prepaid With Prepaid account with Two-stage voice PIN
    Given Provisioning System Mode is set to "ON" for testcase "010_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "10" for "Prepaid_Voucher_Quantity"
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @011_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_enabled_and_NOPIN
  Scenario: Testcase id = 011_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_enabled_and_NOPIN, description = Activate Prepaid with Prepaid account with Two-stage voice enabled and NOPIN
    Given Provisioning System Mode is set to "ON" for testcase "011_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_voice_enabled_and_NOPIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "3" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @012_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_Data_PIN
  Scenario: Testcase id = 012_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_Data_PIN, description = Activate Prepaid With Prepaid account with Two-stage Data PIN
    Given Provisioning System Mode is set to "ON" for testcase "012_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_Data_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "6" for "Prepaid_Voucher_Quantity"
    Then I enter "5" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @013_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_data_enabled_and_NOPIN
  Scenario: Testcase id = 013_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_data_enabled_and_NOPIN, description = Activate Prepaid With Prepaid account with Two stage data enabled and NOPIN
    Given Provisioning System Mode is set to "ON" for testcase "013_Activate_Telephony_prepaid_with_prepaid_account_with_Two_stage_data_enabled_and_NOPIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @014_Activate_Telephony_prepaid_with_prepaid_account_with_standard_prepaid_No_recharge_plan_and_Validate_Time_Vouchers_are_not_allowed
  Scenario: Testcase id = 014_Activate_Telephony_prepaid_with_prepaid_account_with_standard_prepaid_No_recharge_plan_and_Validate_Time_Vouchers_are_not_allowed, description = Activate prepaid account with standard prepaid-No recharge plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "014_Activate_Telephony_prepaid_with_prepaid_account_with_standard_prepaid_No_recharge_plan_and_Validate_Time_Vouchers_are_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid - No recharge Spacenet" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "300 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
#    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
    Then I verify "Prepaid_Voucher_Extension_Quantity" is "disabled"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @015_Activate_Telephony_prepaid_with_prepaid_account_with_Northern_Lights_Prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed
  Scenario: Testcase id = 015_Activate_Telephony_prepaid_with_prepaid_account_with_Northern_Lights_Prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed, description = Activate a prepaid account with NorthernLights Prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "015_Activate_Telephony_prepaid_with_prepaid_account_with_Northern_Lights_Prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "NorthernLights Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Northern Lights 200 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I verify "Prepaid_Voucher_Extension_Quantity" is "disabled"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @016_Activate_Telephony_prepaid_with_prepaid_account_with_Latin_America_prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed
  Scenario: Testcase id = 016_Activate_Telephony_prepaid_with_prepaid_account_with_Latin_America_prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed, description = Activate prepaid account with Latin America prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "016_Activate_Telephony_prepaid_with_prepaid_account_with_Latin_America_prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Latin America Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I enter "5678" for "Data_Optional PIN"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Latin America 200 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I verify "Prepaid_Voucher_Extension_Quantity" is "disabled"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @017_Activate_Telephony_prepaid_with_prepaid_account_with_Africa_prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed
  Scenario: Testcase id = 017_Activate_Telephony_prepaid_with_prepaid_account_with_Africa_prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "017_Activate_Telephony_prepaid_with_prepaid_account_with_Africa_prepaid_plan_and_Validate_Time_Vouchers_are_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Africa Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Africa 300 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I verify "Prepaid_Voucher_Extension_Quantity" is "disabled"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @018_Activate_Telephony_Prepaid_with_Prepaid_account_with_GO_prepaid_plan
  Scenario: Testcase id = 018_Activate_Telephony_Prepaid_with_Prepaid_account_with_GO_prepaid_plan, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "018_Activate_Telephony_Prepaid_with_Prepaid_account_with_GO_prepaid_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "GO Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "GO 400 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @019_Activate_Telephony_Prepaid_With_Prepaid_account_with_Russia_Prepaid_plan
  Scenario: Testcase id = 019_Activate_Telephony_Prepaid_With_Prepaid_account_with_Russia_Prepaid_plan, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "019_Activate_Telephony_Prepaid_With_Prepaid_account_with_Russia_Prepaid_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Prepaid" for "Service Plan"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 150 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @021_Activate_Telephony_prepaid_with_prepaid_account_with_More_Than_10_Vouchers_Validate_Error_Message
  Scenario: Testcase id = 021_Activate_Telephony_prepaid_with_prepaid_account_with_More_Than_10_Vouchers_Validate_Error_Message, description = Activate a prepaid account with More Than 10 Vouchers and Validate Error Message
    Given Provisioning System Mode is set to "ON" for testcase "021_Activate_Telephony_prepaid_with_prepaid_account_with_More_Than_10_Vouchers_Validate_Error_Message"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "12" for "Prepaid_Voucher_Quantity"
    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
    Then I verify the message "Maximum_Voucher_Quantity" for "Telephony"

  @Telephony @022_Activate_Telephony_prepaid_with_prepaid_account_with_More_Than_12_Time_Vouchers_Validate_Error_Message
  Scenario: Testcase id = 022_Activate_Telephony_prepaid_with_prepaid_account_with_More_Than_12_Time_Vouchers_Validate_Error_Message, description = Activate a prepaid account with More Than 12 Time Vouchers and Validate Error Message
    Given Provisioning System Mode is set to "ON" for testcase "022_Activate_Telephony_prepaid_with_prepaid_account_with_More_Than_12_Time_Vouchers_Validate_Error_Message"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "14" for "Prepaid_Voucher_Extension_Quantity"
    Then I verify the message "Maximum_Voucher_Extension_Quantity" for "Telephony"

  @Telephony @023_Activate_Telephony_prepaid_with_prepaid_account_with_MSISDN_MSISDNC
  Scenario: Testcase id = 023_Activate_Telephony_prepaid_with_prepaid_account_with_MSISDN_MSISDNC, description = Activate a prepaid account with MSISDN and MSISDN-C
    Given Provisioning System Mode is set to "ON" for testcase "023_Activate_Telephony_prepaid_with_prepaid_account_with_MSISDN_MSISDNC"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @024_Activate_Telephony_prepaid_with_prepaid_account_without_MSISDNC
  Scenario: Testcase id = 024_Activate_Telephony_prepaid_with_prepaid_account_without_MSISDNC, description = Activate a prepaid account with MSISDN and MSISDN-C
    Given Provisioning System Mode is set to "ON" for testcase "024_Activate_Telephony_prepaid_with_prepaid_account_without_MSISDNC"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "3" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @025_Activate_Telephony_prepaid_with_prepaid_account_with_Voicemail_Enabled
  Scenario: Testcase id = 025_Activate_Telephony_prepaid_with_prepaid_account_with_Voicemail_Enabled, description = Activate a prepaid account with Voicemail Enabled
    Given Provisioning System Mode is set to "ON" for testcase "025_Activate_Telephony_prepaid_with_prepaid_account_with_Voicemail_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  # Data is DISABLED but MSISDNC is entered manually. Handle it in device id validations
  @Telephony @026_Activate_Telephony_prepaid_with_prepaid_account_without_Data_Plan
  Scenario: Testcase id = 026_Activate_Telephony_prepaid_with_prepaid_account_without_Data_Plan, description = Activate a prepaid account without Data Plan
    Given Provisioning System Mode is set to "ON" for testcase "026_Activate_Telephony_prepaid_with_prepaid_account_without_Data_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I uncheck "Data_(BS25,BS26)_checkbox"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @027_Activate_Telephony_prepaid_with_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled
  Scenario: Testcase id = 027_Activate_Telephony_prepaid_with_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled, description = 027_Activate_a_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled
    Given Provisioning System Mode is set to "ON" for testcase "027_Activate_Telephony_prepaid_with_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @028_Activate_Telephony_prepaid_with_prepaid_account_with_Call_Forwarding_Disabled
  Scenario: Testcase id = 028_Activate_Telephony_prepaid_with_prepaid_account_with_Call_Forwarding_Disabled, description = Activate a prepaid account with Call Forwarding Disabled
    Given Provisioning System Mode is set to "ON" for testcase "028_Activate_Telephony_prepaid_with_prepaid_account_with_Call_Forwarding_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I uncheck "Call_Forwarding_checkbox"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify the message "Call_Forwarding_Mandatory_Error_Voicemail" for "Telephony"

  @Telephony @029_Activate_Telephony_prepaid_with_prepaid_account_with_Provider_Reference
  Scenario: Testcase id = 029_Activate_Telephony_prepaid_with_prepaid_account_with_Provider_Reference, description = Activate a prepaid account with Provider Reference
    Given Provisioning System Mode is set to "ON" for testcase "029_Activate_Telephony_prepaid_with_prepaid_account_with_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I enter "Complex!1234567" for "Provider Reference"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @030_Activate_Telephony_prepaid_with_prepaid_account_with_English_Language
  Scenario: Testcase id = 030_Activate_Telephony_prepaid_with_prepaid_account_with_English_Language, description = Activate a prepaid account with English Language
    Given Provisioning System Mode is set to "ON" for testcase "030_Activate_Telephony_prepaid_with_prepaid_account_with_English_Language"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @031_Validate_English_Language_Is_The_Only_Option_For_Telephony_prepaid_with_prepaid_Section
  Scenario: Testcase id = 031_Validate_English_Language_Is_The_Only_Option_For_Telephony_prepaid_with_prepaid_Section, description = Activate a prepaid account with English Language and validate English is the only option
    Given Provisioning System Mode is set to "ON" for testcase "031_Validate_English_Language_Is_The_Only_Option_For_Telephony_prepaid_with_prepaid_Section"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I validate "Prepaid_Language" has "1" options

  @Telephony @032_Telephony_prepaid_with_prepaid_Activate_Telephony_Prepaid_Account_With_Device_Validation_in_Activation_Page
  Scenario: Testcase id = 032_Telephony_prepaid_with_prepaid_Activate_Telephony_Prepaid_Account_With_Device_Validation_in_Activation_Page, description = Activate a Standard Prepaid Service Plan Telephony Prepaid Account with Device Validation in Activation Page
    Given Provisioning System Mode is set to "ON" for testcase "032_Telephony_prepaid_with_prepaid_Activate_Telephony_Prepaid_Account_With_Device_Validation_in_Activation_Page"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
    Then I validate the check mark for "Valid_MSISDN_check_mark" is "invalid"
    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "invalid"
    Then I enter "NEW_SBD_IMEI" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"