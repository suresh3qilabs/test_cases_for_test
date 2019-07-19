Feature: This feature file tests all the scenarios from Account_Activation tab on Config_Russia_GW_Prepaid_With_Prepaid_Regression.xlsx

  Background:
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the excel "Config_Russia_GW_Prepaid_With_Prepaid_Regression.xlsx" and "Account_Activation" tab

  @Telephony @001_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity
  Scenario:Testcase id = 001_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity, description = Activate Prepaid account With prepaid details,
    Given Provisioning System Mode is set to "ON" for testcase "001_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 150 Minute" for "Prepaid_Voucher_Denomination"
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

  @Telephony @002_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_enabled
  Scenario:Testcase id = 002_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_enabled, description = Activate Prepaid account With prepaid details,
    Given Provisioning System Mode is set to "ON" for testcase "002_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 150 Minute" for "Prepaid_Voucher_Denomination"
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

  @Telephony @003_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_disabled
  Scenario:Testcase id = 003_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_disabled, description = Activate Prepaid account With prepaid details,
    Given Provisioning System Mode is set to "ON" for testcase "003_Activate_RGW_prepaid_with_prepaid_account_with_details_like_Voucher_Quantity_and_30_day_extension_quantity_and_Threshold_alert_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 150 Minute" for "Prepaid_Voucher_Denomination"
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

  @Telephony @004_Activate_RGW_prepaid_with_prepaid_account_with_SMS_MO_and_SMS_MT_Features_enabled
  Scenario: Testcase id = 004_Activate_RGW_prepaid_with_prepaid_account_with_SMS_MO_and_SMS_MT_Features_enabled, description = Activate Prepaid with Prepaid account with SMS MO and SMS MT Features enabled
    Given Provisioning System Mode is set to "ON" for testcase "004_Activate_RGW_prepaid_with_prepaid_account_with_SMS_MO_and_SMS_MT_Features_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
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
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 5000 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
#    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @005_Activate_RGW_prepaid_with_prepaid_account_With_Call_Forwarding_Enabled
  Scenario: Testcase id = 005_Activate_RGW_prepaid_with_prepaid_account_With_Call_Forwarding_Enabled, description = Activate Telephony Prepaid With Prepaid Account With Call Forwarding Enabled
    Given Provisioning System Mode is set to "ON" for testcase "005_Activate_RGW_prepaid_with_prepaid_account_With_Call_Forwarding_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
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
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I check "Call_Forwarding_checkbox"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 600 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @006_Activate_RGW_Prepaid_with_Prepaid_account_with_GO_Prepaid_Russia_Gateway_plan
  Scenario: Testcase id = 006_Activate_RGW_Prepaid_with_Prepaid_account_with_GO_Prepaid_Russia_Gateway_plan, description = Activate GO Prepaid plan
    Given Provisioning System Mode is set to "ON" for testcase "006_Activate_RGW_Prepaid_with_Prepaid_account_with_GO_Prepaid_Russia_Gateway_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "GO Prepaid Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
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

  @Telephony @007_Activate_RGW_Prepaid_with_Prepaid_account_with_Mena_Prepaid_Russia_Gateway_plan
  Scenario: Testcase id = 007_Activate_RGW_Prepaid_with_Prepaid_account_with_Mena_Prepaid_Russia_Gateway_plan, description = Activate Mena Prepaid
    Given Provisioning System Mode is set to "ON" for testcase "007_Activate_RGW_Prepaid_with_Prepaid_account_with_Mena_Prepaid_Russia_Gateway_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "MENA Prepaid  Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "MENA 500 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
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

  @Telephony @008_Activate_RGW_Prepaid_with_Prepaid_account_with_Russia_Gateway_Prepaid_Restricted_plan
  Scenario: Testcase id = 008_Activate_RGW_Prepaid_with_Prepaid_account_with_Russia_Gateway_Prepaid_Restricted_plan, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "008_Activate_RGW_Prepaid_with_Prepaid_account_with_Russia_Gateway_Prepaid_Restricted_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 600 Minute Restricted" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
#    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @009_RGW_Prepaid_with_prepaid_Validate_Voicemail_option_is_not_available_for_Russia_Gateway_Prepaid_plans
  Scenario: Testcase id = 009_RGW_Prepaid_with_prepaid_Validate_Voicemail_option_is_not_available_for_Russia_Gateway_Prepaid_plans, description = Validate that Voicemail option is not available for Russia Gateway Postpaid plans
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Prepaid_with_prepaid_Validate_Voicemail_option_is_not_available_for_Russia_Gateway_Prepaid_plans"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I should not see "Voicemail"

  @Telephony @010_Activate_RGW_prepaid_with_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled
  Scenario: Testcase id = 010_Activate_RGW_prepaid_with_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled, description = 027_Activate_a_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled
    Given Provisioning System Mode is set to "ON" for testcase "010_Activate_RGW_prepaid_with_prepaid_account_with_SMO_MO_SMS_MT_Features_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "Russia Gateway Prepaid Restricted No Recharge" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
#    Then I enter "MSISDN_Value" for "MSISDN_text_feild"
#    Then I validate the check mark for "Valid_MSISDN_check_mark" is "valid"
#    Then I enter "MSISDN-C_Value" for "MSISDN-C_text_feild"
#    Then I validate the check mark for "Valid_MSISDN-C_check_mark" is "valid"
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 250 Minute Restricted" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
#    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
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


