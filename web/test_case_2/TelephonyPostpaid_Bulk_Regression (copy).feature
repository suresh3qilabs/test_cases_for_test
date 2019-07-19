Feature: This feature file tests all Bulk Activations and Bulk Status Change for Telephony Postpaid Regression

  Background:
    * I read the data from the excel "Config_Tel_PostpaidRegression.xlsx" and "Bulk_Regression" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan
  Scenario: Testcase id = 001_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan, description = Account activation using bulk upload with individual plan
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan"
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
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @002_Telephony_Postpaid_Bulk_Activate_Account_With_Pool_Plan
  Scenario: Testcase id = 002_Telephony_Postpaid_Bulk_Activate_Account_With_Pool_Plan, description = Account activation using bulk upload with pool plan without two stage Voice and Data
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Postpaid_Bulk_Activate_Account_With_Pool_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "1" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @003_Account_Activation_Incorrect_File_Format
  Scenario: Testcase id = 003_Account_Activation_Incorrect_File_Format, description = Account activation using bulk upload with incorrect file format
    Given Provisioning System Mode is set to "OFF" for testcase "003_Account_Activation_Incorrect_File_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create incorrect file format "rtf" for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_SIM_Postpaid" to "File_Upload"
    Then I verify the message "Bulk_Activate_Incorrect_File_Format_Error" for "Telephony"

  @Telephony @004_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_With_Invalid_Data
  Scenario: Testcase id = 004_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_With_Invalid_Data, description = Account activation using bulk upload with IMEIs instead of SIMS
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_With_Invalid_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "NEW_SBD_IMEI" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Bulk_Activate_Invalid_Data_Error_Telephony" for "Telephony"

  @Telephony @005_Account_Activation_With_Bulk_Without_Attachment
  Scenario: Testcase id = 005_Account_Activation_With_Bulk_Without_Attachment, description = Account activation using bulk upload without attaching file
    Given Provisioning System Mode is set to "OFF" for testcase "005_Account_Activation_With_Bulk_Without_Attachment"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Bulk_Activate_Without_Attachment_Error_Telephony" for "Telephony"

  @Telephony @006_Telephony_Postpaid_Bulk_Activate_Account_With_Pool_Plan_With_Two_Stage_Voice_Data
  Scenario: Testcase id = 006_Telephony_Postpaid_Bulk_Activate_Account_With_Pool_Plan_With_Two_Stage_Voice_Data, description = Account activation using bulk upload with pool plan with two stage Voice and Data, BUG:BDEV-34366
    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Postpaid_Bulk_Activate_Account_With_Pool_Plan_With_Two_Stage_Voice_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @007_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_pre_req_1
  Scenario: Testcase id = 007_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_pre_req_1, description = Account activation using bulk upload with individual plan,Bug ID :BDEV-35197
    Given Provisioning System Mode is set to "OFF" for testcase "007_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_pre_req_1"
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

  @Telephony @008_Telephony_Postpaid_Bulk_Plan_Change_i2i
  Scenario: Testcase id = 008_Telephony_Postpaid_Bulk_Plan_Change_i2i, description = Bulk plan change individual to individual
    Given Provisioning System Mode is set to "OFF" for testcase "008_Telephony_Postpaid_Bulk_Plan_Change_i2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard" for "Plan_Coming_From"
    Then I select "Level 1" for "Plan_Going_To"
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

  @Telephony @009_Telephony_Postpaid_Bulk_Plan_Change_i2p
  Scenario: Testcase id = 009_Telephony_Postpaid_Bulk_Plan_Change_i2p, description = Bulk plan change individual to pool
    Given Provisioning System Mode is set to "OFF" for testcase "009_Telephony_Postpaid_Bulk_Plan_Change_i2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1" for "Plan_Coming_From"
    Then I check if the pool group "Automation_Default_Dynamic1" is present and create it if it is not present
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

  @Telephony @010_Telephony_Postpaid_Bulk_Plan_Change_p2p
  Scenario: Testcase id = 010_Telephony_Postpaid_Bulk_Plan_Change_p2p, description = Bulk plan change pool to pool
    Given Provisioning System Mode is set to "OFF" for testcase "010_Telephony_Postpaid_Bulk_Plan_Change_p2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I check if the pool group "Automation_Default_Dynamic1" is present and create it if it is not present
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

  @Telephony @011_Telephony_Postpaid_Bulk_Plan_Change_p2i
  Scenario: Testcase id = 011_Telephony_Postpaid_Bulk_Plan_Change_p2i, description = Bulk plan change pool to individual
    Given Provisioning System Mode is set to "OFF" for testcase "011_Telephony_Postpaid_Bulk_Plan_Change_p2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I check if the pool group "Automation_Default_Dynamic2" is present and create it if it is not present
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

  @Telephony @012_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_with_Local_Number
  Scenario: Testcase id = 012_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_with_Local_Number, description = Account activation using bulk upload with individual plan with Local Number,BDEV-35197
    Given Provisioning System Mode is set to "OFF" for testcase "012_Telephony_Postpaid_Bulk_Activate_Account_With_Individual_Plan_with_Local_Number"
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
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"