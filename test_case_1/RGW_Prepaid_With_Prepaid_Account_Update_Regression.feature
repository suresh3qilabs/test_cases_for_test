Feature: This feature file tests all Account Update scenarios for Russia Gateway prepaid with prepaid

  Background:
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the excel "Config_Russia_GW_Prepaid_With_Prepaid_Regression.xlsx" and "Account_Update" tab

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_pre_req"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @001_RGW_Prepaid_with_Prepaid_Device_Swap_is_not_allowed
  Scenario: Testcase id = 001_RGW_Prepaid_with_Prepaid_Device_Swap_is_not_allowed, description = Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Prepaid_with_Prepaid_Device_Swap_is_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Telephony Prepaid Sim Query"

  @Telephony @002_RGW_Prepaid_with_Prepaid_Update_SMS_MO_MT
  Scenario: Testcase id = 002_RGW_Prepaid_with_Prepaid_Update_SMS_MO_MT, description = Telephony_Prepaid_with_Prepaid_Update_SMS_MO_MT
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Prepaid_with_Prepaid_Update_SMS_MO_MT"
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
    Then I wait 10 seconds
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
    Then I validate prepaid details on the prepaid DB

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_pre_req"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @003_RGW_Prepaid_with_Prepaid_Update_Disable_Data_Plan
  Scenario: Testcase id = 003_RGW_Prepaid_with_Prepaid_Update_Disable_Data_Plan, description = Telephony_Prepaid_Without_Prepaid_Account_Update_Data_Plan_enabled
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Prepaid_with_Prepaid_Update_Disable_Data_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck the checkbox "Data_BC_(BS25,BS26)_checkbox"

    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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
    Then I validate prepaid details on the prepaid DB

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_pre_req_1
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_pre_req_1, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Prepaid" value is selected for "Sub-Market"
    Then I select "GO Prepaid Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "Data_BC_(BS25,BS26)_checkbox"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @004_RGW_Prepaid_with_Prepaid_Update_Enable_Data_Plan
  Scenario: Testcase id = 004_RGW_Prepaid_with_Prepaid_Update_Enable_Data_Plan, description = Telephony_Prepaid_Without_Prepaid_Account_Update_Data_Plan_enabled
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Prepaid_with_Prepaid_Update_Enable_Data_Plan"
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
    Then I capture the data from account activation page
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
    Then I validate prepaid details on the prepaid DB

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_pre_req_2
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_pre_req_2, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_pre_req_2"
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
    Then I uncheck the checkbox "Call_Forwarding_checkbox"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @005_RGW_Prepaid_with_Prepaid_Update_Enable_Call_Forwarding
  Scenario: Testcase id = 005_RGW_Prepaid_with_Prepaid_Update_Enable_Call_Forwarding, description = Telephony_Prepaid_with_Prepaid_Update_Call_Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Prepaid_with_Prepaid_Update_Enable_Call_Forwarding"
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
    Then I wait 10 seconds
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

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_pre_req"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @006_RGW_Prepaid_with_Prepaid_Update_Disable_Call_Forwarding
  Scenario: Testcase id = 006_RGW_Prepaid_with_Prepaid_Update_Disable_Call_Forwarding, description = Telephony_Prepaid_with_Prepaid_Update_Call_Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Prepaid_with_Prepaid_Update_Disable_Call_Forwarding"
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
    Then I wait 10 seconds
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
    Then I validate prepaid details on the prepaid DB

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_Restricted_Plan_pre_req
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_Restricted_Plan_pre_req, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_Restricted_Plan_pre_req"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 600 Minute Restricted" for "Prepaid_Voucher_Denomination"
    Then I verify "Prepaid_Voucher_Quantity" is "enabled"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
    Then I verify "Prepaid_Voucher_Extension_Quantity" is "disabled"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @007_RGW_Prepaid_With_Prepaid_Recharge_Time_And_Actual_Voucher_special_rules
  Scenario: Testcase id = 007_RGW_Prepaid_With_Prepaid_Recharge_Time_And_Actual_Voucher_special_rules, description = Recharge Suspended Prepaid Account & Account Becomes Active
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Prepaid_With_Prepaid_Recharge_Time_And_Actual_Voucher_special_rules"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "1" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "Russia 600 Minute Restricted" for "Recharge_Prepaid_Voucher_Denomination"
    Then I verify "Recharge_Prepaid_Voucher_Extension_Quantity" is "disabled"
#    Then I enter "1" for "Recharge_Prepaid_Voucher_Extension_Quantity"
    Then I click on obj repo "Recharge_Account_Button" button
    Then I click on "Search" tab
    Then I search for the contract id
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
