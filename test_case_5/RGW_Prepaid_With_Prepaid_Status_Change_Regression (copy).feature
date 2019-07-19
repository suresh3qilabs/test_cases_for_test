Feature: This feature file tests all Status Change scenarios for Russia Gateway prepaid with prepaid

  Background:
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the excel "Config_Russia_GW_Prepaid_With_Prepaid_Regression.xlsx" and "Status_Change" tab

  @Telephony @001_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_With_prepaid_details
  Scenario: Testcase id = 001_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_With_prepaid_details, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_With_prepaid_details"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 600 Minute Restricted" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
  #    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @002_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = 002_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "002_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @003_RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = 003_RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE, description = Change status from SUSPEND to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "003_RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @004_RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = 004_RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE, description = Change status from ACtIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "004_RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @005_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_pre_req_1
  Scenario: Testcase id = 005_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_pre_req_1, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "005_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_pre_req_1"
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
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 600 Minute Restricted" for "Prepaid_Voucher_Denomination"
    Then I enter "2" for "Prepaid_Voucher_Quantity"
#    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @006_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = 006_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @007_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = 007_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @008_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_With_prepaid_details
  Scenario: Testcase id = 008_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_With_prepaid_details, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "008_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_With_prepaid_details"
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

  @Telephony @009_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = 009_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @010_RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = 010_RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE, description = Change status from SUSPEND to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "010_RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @011_RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = 011_RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE, description = Change status from ACtIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "011_RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @012_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_pre_req_1
  Scenario: Testcase id = 012_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_pre_req_1, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "012_RGW_Prepaid_With_Prepaid_Activate_Prepaid_account_pre_req_1"
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

  @Telephony @013_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = 013_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "013_RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @014_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = 014_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "014_RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server