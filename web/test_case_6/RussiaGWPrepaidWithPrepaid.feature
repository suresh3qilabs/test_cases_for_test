Feature: This feature file tests all smoke test scenarios for Russia Gateway Prepaid With Prepaid

  Background:
    * I read the data from the excel "Config_Russia_GW_PrepaidWithPrepaid.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid, description = Activate a RGW Prepaid With Prepaid account with Russia Gateway Prepaid Service Plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1, description = Activate a RGW Prepaid With Prepaid account with Russia Gateway Prepaid Service Plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 250 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "4" for "Prepaid_Voucher_Quantity"
    Then I enter "6" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_2
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_2, description = Activate a RGW Prepaid With Prepaid account with Russia Gateway Prepaid Service Plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 600 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
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

  @Telephony @RGW_Prepaid_With_Prepaid_Update_Service_Plan
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Update_Service_Plan, description = Update Plan for Russia Gateway Prepaid with prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_Update_Service_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I validate "Service Plan" has "1" options

  @Telephony @RGW_Prepaid_With_Prepaid_Bulk_Activate_Account
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Bulk_Activate_Account, description = Activate Russia Gateway Prepaid with prepaid Bulk Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_Bulk_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Russia_Gateway_SIM_Prepaid_With_Prepaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Russia_Gateway_SIM_Prepaid_With_Prepaid.csv" to "File_Upload"
    Then I select "Russia Gateway Prepaid" for "Sub-Market"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 150 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "2" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Russia_Gateway_SIM_Prepaid_With_Prepaid"

  @Telephony @RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_3
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_3, description = Activate a RGW Prepaid With Prepaid account with Russia Gateway Prepaid Service Plan
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_Activate_Account_Russia_Gateway_Prepaid_pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I set the checkbox "Activate_Prepaid"
    Then I select "Russia 5000 Minute" for "Prepaid_Voucher_Denomination"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page

  @Telephony @RGW_Prepaid_With_Prepaid_Device_Swap
  Scenario: Testcase id = RGW_Prepaid_With_Prepaid_Device_Swap, description = Swap SIM for Russia Gateway Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Prepaid_With_Prepaid_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I should not see "Swap Devices"