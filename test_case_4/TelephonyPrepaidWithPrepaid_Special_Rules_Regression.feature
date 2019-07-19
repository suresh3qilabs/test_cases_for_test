Feature: This feature file tests all Special Rules scenarios for Telephony prepaid with prepaid regression

  Background:
    * I read the data from the excel "Config_Telephony_Prepaid_With_Prepaid_Regression.xlsx" and "Special_Rules" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_No_Recharge_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_No_Recharge_pre_req, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_No_Recharge_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid - No recharge Spacenet" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "300 Minute" for "Prepaid_Voucher_Denomination"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB

  @Telephony @Telephony_Prepaid_With_Prepaid_No_recharge_plan_cannot_be_recharged
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_No_recharge_plan_cannot_be_recharged, description = Validate that account with "standard-Prepaid No recharge" plan cannot be recharged with E-Vouchers and Time Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_No_recharge_plan_cannot_be_recharged"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I validate "Recharge_Voucher_Denomination" has "0" options

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Northern_Lights_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Northern_Lights_pre_req, description = Activate a prepaid account with NorthernLights Prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Northern_Lights_pre_req"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Northern Lights 200 Minute" for "Prepaid_Voucher_Denomination"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB

  @Telephony @Telephony_Prepaid_With_Prepaid_Northern_Lights_plan_cannot_be_recharged
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Northern_Lights_plan_cannot_be_recharged, description = Validate that account with "standard-Prepaid No recharge" plan cannot be recharged with E-Vouchers and Time Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Northern_Lights_plan_cannot_be_recharged"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I verify "Recharge_Prepaid_Voucher_Extension_Quantity" is "disabled"
    Then I enter "1" for "Recharge_Prepaid_Voucher_Quantity"
    Then I click on obj repo "Recharge_Account_Button" button
    Then I click on "Search" tab
    Then I search for the contract id
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate prepaid details on the prepaid DB

  @Telephony @Telephony_Prepaid_With_Prepaid_Recharge_History_Page_Validation
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Recharge_History_Page_Validation, description = Validate that account with "standard-Prepaid No recharge" plan cannot be recharged with E-Vouchers and Time Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Recharge_History_Page_Validation"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I verify Refund dropdown is available


  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Africa_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Africa_pre_req, description = Activate a prepaid account with NorthernLights Prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Africa_pre_req"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Africa 300 Minute" for "Prepaid_Voucher_Denomination"
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB

  @Telephony @Telephony_Prepaid_With_Prepaid_Africa_Prepaid_plan_cannot_be_recharged
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Africa_Prepaid_plan_cannot_be_recharged, description = Validate that account with "standard-Prepaid No recharge" plan cannot be recharged with E-Vouchers and Time Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Africa_Prepaid_plan_cannot_be_recharged"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I verify "Recharge_Prepaid_Voucher_Extension_Quantity" is "disabled"
    Then I enter "1" for "Recharge_Prepaid_Voucher_Quantity"
    Then I click on obj repo "Recharge_Account_Button" button
    Then I click on "Search" tab
    Then I search for the contract id
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate prepaid details on the prepaid DB

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Latin_America_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Latin_America_pre_req, description = Activate a prepaid account with NorthernLights Prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Latin_America_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Latin America Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
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
    Then I validate the service order for activation
    Then I validate prepaid details on the prepaid DB

  @Telephony @Telephony_Prepaid_With_Prepaid_Latin_America_Prepaid_plan_cannot_be_recharged
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Latin_America_Prepaid_plan_cannot_be_recharged, description = Validate that account with "standard-Prepaid No recharge" plan cannot be recharged with E-Vouchers and Time Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Latin_America_Prepaid_plan_cannot_be_recharged"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I verify "Recharge_Prepaid_Voucher_Extension_Quantity" is "disabled"
    Then I enter "1" for "Recharge_Prepaid_Voucher_Quantity"
    Then I click on obj repo "Recharge_Account_Button" button
    Then I click on "Search" tab
    Then I search for the contract id
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate prepaid details on the prepaid DB

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_5K
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_5K, description = Activate a prepaid account with NorthernLights Prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_5K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I validate if "5K" option is not available

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_3K
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_3K, description = Activate a prepaid account with NorthernLights Prepaid plan and Validate Time Vouchers are not allowed
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_3K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I validate if "3K" option is not available
