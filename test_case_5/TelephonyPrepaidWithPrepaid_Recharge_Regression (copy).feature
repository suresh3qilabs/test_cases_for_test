Feature: This feature file tests recharge scenarios for Telephony Prepaid with Prepaid Regression

  Background:
    * I read the data from the excel "Config_Telephony_Prepaid_With_Prepaid_Regression.xlsx" and "Recharge" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Activate_Telephony_prepaid_with_prepaid_account
  Scenario: Testcase id = 001_Activate_Telephony_prepaid_with_prepaid_account, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_Activate_Telephony_prepaid_with_prepaid_account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @002_Telephony_Prepaid_With_Prepaid_Cannot_Recharge_More_Than_12_Vouchers
  Scenario: Testcase id = 002_Telephony_Prepaid_With_Prepaid_Cannot_Recharge_More_Than_12_Vouchers, description = Recharge Prepaid Account with More Than 12 Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Prepaid_With_Prepaid_Cannot_Recharge_More_Than_12_Vouchers"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "13" for "Recharge_Prepaid_Voucher_Extension_Quantity"
    Then I verify the message "Maximum_30_Day_Extension_Quantity_Recharge" for "Telephony"

  @Telephony @003_Telephony_Prepaid_With_Prepaid_Recharge_with_Time_Voucher
  Scenario: Testcase id = 003_Telephony_Prepaid_With_Prepaid_Recharge_with_Time_Voucher, description = Recharge Prepaid Account with Time Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Prepaid_With_Prepaid_Recharge_with_Time_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "0" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "3" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @004_Telephony_Prepaid_With_Prepaid_Recharge_With_Actual_Voucher
  Scenario: Testcase id = 004_Telephony_Prepaid_With_Prepaid_Recharge_With_Actual_Voucher, description = Recharge Prepaid Account with Actual Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Prepaid_With_Prepaid_Recharge_With_Actual_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "2" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "0" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @005_Telephony_Prepaid_With_Prepaid_Validate_Balance
  Scenario: Testcase id = 005_Telephony_Prepaid_With_Prepaid_Validate_Balance, description = Recharge Prepaid Account with Actual Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Prepaid_With_Prepaid_Validate_Balance"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "2" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "2" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @006_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = 006_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @007_Telephony_Prepaid_With_Prepaid_Recharge_Suspended_Account
  Scenario: Testcase id = 007_Telephony_Prepaid_With_Prepaid_Recharge_Suspended_Account, description = Recharge Suspended Prepaid Account & Account Becomes Active
    Given Provisioning System Mode is set to "OFF" for testcase "007_Telephony_Prepaid_With_Prepaid_Recharge_Suspended_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "3" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "3" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @008_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance
  Scenario: Testcase id = 008_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance, description = Refund All Voucher To Make Account Have Zero Balance
    Given Provisioning System Mode is set to "OFF" for testcase "008_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
    Then I verify account has zero balance

  @Telephony @009_Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_on_Zero_Balance
  Scenario: Testcase id = 009_Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_on_Zero_Balance, description = Recharge Zero Balance Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "009_Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_on_Zero_Balance"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "2" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "2" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @001_Activate_Telephony_prepaid_with_prepaid_account
  Scenario: Testcase id = 001_Activate_Telephony_prepaid_with_prepaid_account, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_Activate_Telephony_prepaid_with_prepaid_account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @010_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance
  Scenario: Testcase id = 010_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance, description = Refund All Voucher To Make Account Have Zero Balance
    Given Provisioning System Mode is set to "OFF" for testcase "010_Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
    Then I verify account has zero balance

  @Telephony @011_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = 011_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "011_Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @012_Telephony_Prepaid_With_Prepaid_Recharge_Suspended_Account
  Scenario: Testcase id = 012_Telephony_Prepaid_With_Prepaid_Recharge_Suspended_Account, description = Recharge Suspended Prepaid Account & Account Becomes Active
    Given Provisioning System Mode is set to "OFF" for testcase "012_Telephony_Prepaid_With_Prepaid_Recharge_Suspended_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "3" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "3" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @013_Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = 013_Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE, description = Change status from ACtIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "013_Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @014_Telephony_Prepaid_With_Prepaid_Cannot_Recharge_on_Deactivated_Account
  Scenario: Testcase id = 014_Telephony_Prepaid_With_Prepaid_Cannot_Recharge_on_Deactivated_Account, description = Cannot Recharge Prepaid Account When Status is Deactive
    Given Provisioning System Mode is set to "OFF" for testcase "014_Telephony_Prepaid_With_Prepaid_Cannot_Recharge_on_Deactivated_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I should not see "Recharge Account"