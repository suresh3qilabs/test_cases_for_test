Feature: This feature file tests all Smoke Test scenarios for Telephony prepaid with prepaid

  Background:
    * I read the data from the excel "Config_telephony_PrepaidWithPrepaid.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Prepaid_with_Prepaid_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_SUSPENDED_to_ACTIVE, description = Change status from SUSPEND to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE, description = Change status from ACtIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_1
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_1, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_1"
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
    Then I select "200 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "5" for "Prepaid_Voucher_Quantity"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_2
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_2, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_2"
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
    Then I enter "3" for "Prepaid_Voucher_Extension_Quantity"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_with_Prepaid_Service_plan_update_is_not_allowed
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Service_plan_update_is_not_allowed, description = Validate that Service plan update is not allowed for prepaid account with prepaid
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Service_plan_update_is_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I validate "Service Plan" has "1" options

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed, description = Validate that Device Swap is not allowed for prepaid account with prepaid
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I should not see "Swap Devices"

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_Prepaid_No_Recharge_pre_req_5
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_Prepaid_No_Recharge_pre_req_5, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_Prepaid_No_Recharge_pre_req_5"
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
    Then I select "750 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "4" for "Prepaid_Voucher_Quantity"
    Then I verify "Prepaid_Voucher_Extension_Quantity" is "disabled"
#    Then I enter "0" for "Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_No_recharge_plan_cannot_be_recharged
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_No_recharge_plan_cannot_be_recharged, description = Validate that account with "standard-Prepaid No recharge" plan cannot be recharged with E-Vouchers and Time Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_No_recharge_plan_cannot_be_recharged"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I validate "Recharge_Voucher_Denomination" has "0" options

  @Telephony @Telephony_Prepaid_With_Prepaid_Bulk_Activate_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Bulk_Activate_Account, description = Activate Telephony Prepaid with Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Bulk_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Prepaid_With_Prepaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Prepaid_With_Prepaid.csv" to "File_Upload"
    Then I select "Standard Prepaid" for "Sub-Market"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I select "5000 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "3" for "Prepaid_Voucher_Quantity"
    Then I verify "Prepaid_Voucher_Extension_Quantity" is "disabled"
#    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I set the checkbox "Prepaid_Threshold_Alerts"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Prepaid_With_Prepaid"

         ##***************************Recharge Scenario's****************************

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_3
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_3, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_3"
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
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_User_Cannot_Recharge_More_Than_10_Vouchers
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_User_Cannot_Recharge_More_Than_10_Vouchers, description = Recharge Prepaid Account with More Than 10 Vouchers
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_User_Cannot_Recharge_More_Than_10_Vouchers"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "11" for "Recharge_Prepaid_Voucher_Quantity"
    Then I verify the message "Maximum_Voucher_Quantity_Recharge" for "Telephony"

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Recharge_with_Time_Voucher
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Recharge_with_Time_Voucher, description = Recharge Prepaid Account with Time Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Recharge_with_Time_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "0" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "1" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Recharge_With_Actual_Voucher
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Recharge_With_Actual_Voucher, description = Recharge Prepaid Account with Actual Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Recharge_With_Actual_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "1" for "Recharge_Prepaid_Voucher_Quantity"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_2
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_2, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_On_Suspended_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_On_Suspended_Account, description = Recharge Suspended Prepaid Account & Account Becomes Active
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_On_Suspended_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "2" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "1" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_4
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_4, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_4"
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
    Then I select "3000 Minute" for "Prepaid_Voucher_Denomination"
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

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req_1
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req_1, description = Refund All Voucher To Make Account Have Zero Balance
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
    Then I verify account has zero balance

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_on_Zero_Balance
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_on_Zero_Balance, description = Recharge Zero Balance Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_on_Zero_Balance"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_3
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_3, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req_2
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req_2, description = Refund All Voucher To Make Account Have Zero Balance
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
    Then I verify account has zero balance

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_On_Zero_Balance_Suspended_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_On_Zero_Balance_Suspended_Account, description = Recharge Zero Balance Suspended Prepaid Account & Account Becomes Active
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Recharge_Vouchers_On_Zero_Balance_Suspended_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I scroll into view of the element "Recharge_Account"
    Then I click on "Recharge_Account" link
    Then I enter "2" for "Recharge_Prepaid_Voucher_Quantity"
    Then I select "75 Minute" for "Recharge_Prepaid_Voucher_Denomination"
    Then I enter "1" for "Recharge_Prepaid_Voucher_Extension_Quantity"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE_pre_req_1
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE_pre_req_1, description = Change status from ACtIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_ACTIVE_to_DEACTIVE_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Prepaid_With_Prepaid_Cannot_Recharge_on_Deactivated_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Cannot_Recharge_on_Deactivated_Account, description = Cannot Recharge Prepaid Account When Status is Deactive
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Cannot_Recharge_on_Deactivated_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I should not see "Recharge Account"

     ##***************************Refund Scenario's****************************

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_6
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_6, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_6"
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
    Then I select "200 Minute" for "Prepaid_Voucher_Denomination"
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

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Refund_Time_Voucher
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Refund_Time_Voucher, description = Refund 1 Time Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Refund_Time_Voucher"
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

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Refund_Actual_Voucher
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Refund_Actual_Voucher, description = Refund 1 Actual Voucher
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Refund_Actual_Voucher"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_4
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_4, description = Change status from ACTIVE to SUSPEND
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_ACTIVE_to_SUSPENDED_pre_req_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Refund_On_Suspended_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Refund_On_Suspended_Account, description = Refund A Suspended Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Refund_On_Suspended_Account"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE_pre_req_1
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE_pre_req_1, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_SUSPENDED_to_DEACTIVE_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account, description = Request Refund on a Deactive Active
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_On_Deactive_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I verify the message "Cannot_refund_on_deactive_account" for "Telephony"

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_7
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_7, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_7"
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
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_Expired_Voucher
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_Expired_Voucher, description = Refund a Expired Voucher will Display Error Message
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_User_Cannot_Refund_Expired_Voucher"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I change the expiry date for E-voucher on prepaid account
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "0" time and "1" actual vouchers for the account

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_8
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_8, description = Activate Telephony Prepaid With Prepaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Standard_pre_req_8"
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
    Then I validate prepaid details on the prepaid DB
    Then I click on the Contract ID
    Then I verify the prepaid balance on edit page
    Then I validate the service order for activation

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req, description = Refund All Voucher To Make Account Have Zero Balance
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Update_Account_To_Zero_Balance_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I refund "all" time and "all" actual vouchers for the account
    Then I verify account has zero balance

  @Telephony @Prepaid_with_Prepaid @Telephony_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account, description = Validate that Users Cannot Refund on Zero Balance Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Cannot_Refund_On_Zero_Balance_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Prepaid_tab" tab
    Then I click on "Recharge_History"
    Then I enter "msisdn" for "Recharge_msisdn"
    Then I enter "Telephony_SIM_Prepaid_With_Prepaid" for "Recharge_sim"
    Then I click on obj repo "Recharge_Search" button
    Then I validate if "Refund" option is not available