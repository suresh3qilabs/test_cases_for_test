Feature: This feature file tests all Smoke Test scenarios for Telephony postpaid Smoke Test

  Background:
    * I read the data from the excel "Config_telephony_Postpaid.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @Telephony_Postpaid_Activate_Account_Standard
  Scenario: Testcase id = Telephony_Postpaid_Activate_Account_Standard, description = Activate a Standard Service Plan Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Activate_Account_Standard"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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

  @Telephony @Telephony_Postpaid_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = Telephony_Postpaid_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Postpaid_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = Telephony_Postpaid_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Postpaid_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = Telephony_Postpaid_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I cleanup the system

  @Telephony @Telephony_Postpaid_Activate_Account_Standard_pre_req_1
  Scenario: Testcase id = Telephony_Postpaid_Activate_Account_Standard_pre_req_1, description = Activate a Standard Service Plan Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Activate_Account_Standard_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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

  @Telephony @Telephony_Postpaid_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = Telephony_Postpaid_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @Telephony_Postpaid_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = Telephony_Postpaid_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I cleanup the system

  @Telephony @Telephony_Postpaid_Activate_Account_Standard_pre_req_2
  Scenario: Testcase id = Telephony_Postpaid_Activate_Account_Standard_pre_req_2, description = Activate a Standard Service Plan Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Activate_Account_Standard_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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

  @Telephony @Telephony_Postpaid_Update_Service_Plan
  Scenario: Testcase id = Telephony_Postpaid_Update_Service_Plan, description = Update telephony postpaid service plan
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Update_Service_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I select "Level 1" for "Service Plan"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I cleanup the system

  @Telephony @Telephony_Postpaid_Activate_Account_With_Local_Number_Enabled
  Scenario: Testcase id = Telephony_Postpaid_Activate_Account_With_Local_Number_Enabled, description = Activate a Standard Service Plan Telephony Postpaid Account with local number enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Activate_Account_With_Local_Number_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I set the checkbox "Local_Number"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate that checkbox "Local_Number" is "checked"
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
    Then I cleanup the system

  @Telephony @Telephony_Postpaid_Activate_Account_Standard_pre_req_3
  Scenario: Testcase id = Telephony_Postpaid_Activate_Account_Standard_pre_req_3, description = Activate a Standard Service Plan Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Activate_Account_Standard_pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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

  @Telephony @Telephony_Postpaid_Update_Account_To_Enable_Local_Number
  Scenario: Testcase id = Telephony_Postpaid_Update_Account_To_Enable_Local_Number, description = Update Telephony Postpaid Account with local number enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Update_Account_To_Enable_Local_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I validate that checkbox "Local_Number" is "unchecked"
    Then I set the checkbox "Local_Number"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I validate that checkbox "Local_Number" is "checked"
    Then I cleanup the system

  @Telephony @Telephony_Postpaid_Activate_Account_With_Local_Number_Enabled_pre_req_1
  Scenario: Testcase id = Telephony_Postpaid_Activate_Account_With_Local_Number_Enabled_pre_req_1, description = Activate a Standard Service Plan Telephony Postpaid Account with local number enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Activate_Account_With_Local_Number_Enabled_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I set the checkbox "Local_Number"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate that checkbox "Local_Number" is "checked"
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

  @Telephony @Telephony_Postpaid_Update_Account_To_Disable_Local_Number
  Scenario: Testcase id = Telephony_Postpaid_Update_Account_To_Disable_Local_Number, description = Update Telephony Postpaid Account with local number disabled
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Update_Account_To_Disable_Local_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I validate that checkbox "Local_Number" is "checked"
    Then I uncheck the checkbox "Local_Number"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I validate that checkbox "Local_Number" is "unchecked"
    Then I cleanup the system

  @Telephony @Telephony_Postpaid_Bulk_Activate_Account
  Scenario: Testcase id = Telephony_Postpaid_Bulk_Activate_Account, description = Activate a Telephony Postpaid Bulk Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Bulk_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @Telephony_Postpaid_Bulk_Plan_Change_i2i
  Scenario: Testcase id = Telephony_Postpaid_Bulk_Plan_Change_i2i, description = Bulk plan change individual to individual
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Bulk_Plan_Change_i2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard" for "Plan_Coming_From"
    Then I select "Standard 10 Free" for "Plan_Going_To"
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @14_Telephony_Postpaid_Bulk_Plan_Change_i2p
  Scenario: Testcase id = 14_Telephony_Postpaid_Bulk_Plan_Change_i2p, description = Bulk plan change individual to pool
    Given Provisioning System Mode is set to "OFF" for testcase "14_Telephony_Postpaid_Bulk_Plan_Change_i2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
#    Then I check if the pool group "Automation_Default_Dynamic1" is present and create it if it is not present
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @15_Telephony_Postpaid_Bulk_Plan_Change_p2p
  Scenario: Testcase id = 15_Telephony_Postpaid_Bulk_Plan_Change_p2p, description = Bulk plan change pool to pool
    Given Provisioning System Mode is set to "OFF" for testcase "15_Telephony_Postpaid_Bulk_Plan_Change_p2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
#    Then I check if the pool group "Automation_Default_Dynamic1" is present and create it if it is not present
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Coming_From"
    Then I check if the pool group "Automation_Default_Dynamic2" is present and create it if it is not present
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @Telephony_Postpaid_Bulk_Plan_Change_p2i
  Scenario: Testcase id = Telephony_Postpaid_Bulk_Plan_Change_p2i, description = Bulk plan change pool to individual
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Bulk_Plan_Change_p2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
#    Then I check if the pool group "Automation_Default_Dynamic2" is present and create it if it is not present
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Coming_From"
    Then I select "Standard" for "Plan_Going_To"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"
    Then I cleanup the system

  @Telephony @Telephony_Postpaid_Activate_Account_Standard_pre_req_4
  Scenario: Testcase id = Telephony_Postpaid_Activate_Account_Standard_pre_req_4, description = Activate a Standard Service Plan Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_Activate_Account_Standard_pre_req_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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

  @Telephony @Telephony_Postpaid_SIM_Swap
  Scenario: Testcase id = Telephony_Postpaid_SIM_Swap, description = SIM Swap on Active account Under Telephony
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Postpaid_SIM_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query"
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements
