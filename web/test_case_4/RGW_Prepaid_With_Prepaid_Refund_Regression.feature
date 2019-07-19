Feature: This feature file tests all refund scenarios for Russia Gateway prepaid with prepaid

  Background:
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the excel "Config_Russia_GW_Prepaid_With_Prepaid_Regression.xlsx" and "Refund" tab

  @Telephony @001_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid
  Scenario: Testcase id = 001_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "001_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid"
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
    Then I enter "4" for "Prepaid_Voucher_Quantity"
    Then I enter "4" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @002_RGW_Prepaid_With_Prepaid_Refund_Time_Voucher
  Scenario: Testcase id = 002_RGW_Prepaid_With_Prepaid_Refund_Time_Voucher, description = Refund 1 Time Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Prepaid_With_Prepaid_Refund_Time_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "1" time and "0" actual vouchers for the account
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

  @Telephony @003_RGW_Prepaid_With_Prepaid_Refund_Actual_Voucher
  Scenario: Testcase id = 003_RGW_Prepaid_With_Prepaid_Refund_Actual_Voucher, description = Refund 1 Actual Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Prepaid_With_Prepaid_Refund_Actual_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "0" time and "1" actual vouchers for the account
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

  @Telephony @004_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req
  Scenario: Testcase id = 004_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @005_RGW_Prepaid_With_Prepaid_Refund_Time_And_Actual_Voucher
  Scenario: Testcase id = 005_RGW_Prepaid_With_Prepaid_Refund_Time_And_Actual_Voucher, description = Refund A Suspended Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Prepaid_With_Prepaid_Refund_Time_And_Actual_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Russia_Gateway_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "1" time and "1" actual vouchers for the account
    Then I click on "Search" tab
    Then I search for the contract id
#    Then I verify that account is successfully refunded
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @006_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = 006_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @007_RGW_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account
  Scenario: Testcase id = 007_RGW_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account, description = Request Refund on a Deactive Active
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I verify the message "Cannot_refund_on_deactive_account" for "Telephony"

  @Telephony @008_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req
  Scenario: Testcase id = 008_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "008_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @009_RGW_Prepaid_With_Prepaid_Cannot_Refund_Expired_Actual_Voucher
  Scenario: Testcase id = 009_RGW_Prepaid_With_Prepaid_Cannot_Refund_Expired_Actual_Voucher, description = Refund a Expired Voucher will Display Error Message
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Prepaid_With_Prepaid_Cannot_Refund_Expired_Actual_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I change the expiry date for E-voucher on prepaid account
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "0" time and "1" actual vouchers for the account

  @Telephony @010_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1
  Scenario: Testcase id = 010_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "010_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1"
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

  @Telephony @011_RGW_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance
  Scenario: Testcase id = 011_RGW_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance, description = Refund All Voucher To Make Account Have Zero Balance
    Given Provisioning System Mode is set to "OFF" for testcase "011_RGW_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
    Then I verify account has zero balance

  @Telephony @012_RGW_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account
  Scenario: Testcase id = 012_RGW_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account, description = Validate that Users Cannot Refund on Zero Balance Account
    Given Provisioning System Mode is set to "OFF" for testcase "012_RGW_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I validate if "Refund" option is not available

  @Telephony @010_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1
  Scenario: Testcase id = 010_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1, description = Activate prepaid account with Africa prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "010_RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1"
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

  @Telephony @013_RGW_Prepaid_With_Prepaid_Refund_Before_3_Days_of_Expiration
  Scenario: Testcase id = 013_RGW_Prepaid_With_Prepaid_Refund_Before_3_Days_of_Expiration, description = Refund a Expired Voucher will Display Error Message
    Given Provisioning System Mode is set to "OFF" for testcase "013_RGW_Prepaid_With_Prepaid_Refund_Before_3_Days_of_Expiration"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I change the expiry date for E-voucher on prepaid account
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "0" time and "1" actual vouchers for the account