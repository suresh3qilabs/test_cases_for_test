Feature: This feature file tests all Refund scenarios for Telephony prepaid with prepaid Regression

  Background:
    * I read the data from the excel "Config_telephony_Prepaid_With_Prepaid_Regression.xlsx" and "Refund" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Telephony_Prepaid_With_Prepaid_Activate_Account_GO_Prepaid
  Scenario: Testcase id = 001_Telephony_Prepaid_With_Prepaid_Activate_Account_GO_Prepaid, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Prepaid_With_Prepaid_Activate_Account_GO_Prepaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "GO Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @002_Telephony_Prepaid_With_Prepaid_Refund_Time_Voucher
  Scenario: Testcase id = 002_Telephony_Prepaid_With_Prepaid_Refund_Time_Voucher, description = Refund 1 Time Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Prepaid_With_Prepaid_Refund_Time_Voucher"
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

  @Telephony @003_Telephony_Prepaid_With_Prepaid_Refund_Actual_Voucher
  Scenario: Testcase id = 003_Telephony_Prepaid_With_Prepaid_Refund_Actual_Voucher, description = Refund 1 Actual Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Prepaid_With_Prepaid_Refund_Actual_Voucher"
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

  @Telephony @004a_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid
  Scenario: Testcase id = 004a_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "004a_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Asia Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Asia 100 Minute" for "Prepaid_Voucher_Denomination"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @004_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = 004_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @005_Telephony_Prepaid_With_Prepaid_Refund_On_Suspended_Account
  Scenario: Testcase id = 005_Telephony_Prepaid_With_Prepaid_Refund_On_Suspended_Account, description = Refund A Suspended Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Prepaid_With_Prepaid_Refund_On_Suspended_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
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

  @Telephony @006_Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = 006_Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @007_Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account
  Scenario: Testcase id = 007_Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account, description = Request Refund on a Deactive Active
    Given Provisioning System Mode is set to "OFF" for testcase "007_Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I verify the message "Cannot_refund_on_deactive_account" for "Telephony"

  @Telephony @008_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid
  Scenario: Testcase id = 008_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "008_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Asia Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Asia 100 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @009_Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_Expired_Voucher
  Scenario: Testcase id = 009_Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_Expired_Voucher, description = Refund a Expired Voucher will Display Error Message
    Given Provisioning System Mode is set to "OFF" for testcase "009_Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_Expired_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I change the expiry date for E-voucher on prepaid account
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "0" time and "1" actual vouchers for the account

  @Telephony @010_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid
  Scenario: Testcase id = 010_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "010_Telephony_Prepaid_With_Prepaid_Activate_Account_Asia_Prepaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Asia Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Asia 100 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @011_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance
  Scenario: Testcase id = 011_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance, description = Refund All Voucher To Make Account Have Zero Balance
    Given Provisioning System Mode is set to "OFF" for testcase "011_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
    Then I verify account has zero balance

  @Telephony @012_Telephony_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account
  Scenario: Testcase id = 012_Telephony_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account, description = Validate that Users Cannot Refund on Zero Balance Account
    Given Provisioning System Mode is set to "OFF" for testcase "012_Telephony_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I validate if "Refund" option is not available