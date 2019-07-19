Feature: This feature file tests all the scenarios of Telephony Bulk account update

  Background:
    * I read the data from the excel "iridium_service_Functional_Bulk_Account.xlsx" and "TEL_bulkAccountUpdate" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @1_Bulk_Account_Update_with_No_File_Attached
  Scenario: Testcase id = 1_Bulk_Account_Update_with_No_File_Attached, description = Bulk Account Update with No File attached
    Given Provisioning System Mode is set to "OFF" for testcase "1_Bulk_Account_Update_with_No_File_Attached"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Change_Account_Button" button
    Then I verify error message "No file was chosen" on screen

  @Telephony @2_Bulk_Account_Update_Using_an_Invalid_Format_File
  Scenario: Testcase id = 2_Bulk_Account_Update_Using_an_Invalid_Format_File, description = Bulk Account Update using an Invalid Format File (.jpg)
    Given Provisioning System Mode is set to "OFF" for testcase "2_Bulk_Account_Update_Using_an_Invalid_Format_File"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I create incorrect file format "rtf" for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.rtf" to "File_Upload"
    Then I verify error message "This file is improperly formatted or is an unsupported file type." on screen

  @Telephony @3_Bulk_Account_Update_Using_a_Valid_File_Format_with_with_No_SIMs
  Scenario: Testcase id = 3_Bulk_Account_Update_Using_a_Valid_File_Format_with_with_No_SIMs, description = Bulk Account Update using a Valid File Format with no SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "3_Bulk_Account_Update_Using_a_Valid_File_Format_with_with_No_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "0" items
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Change_Account_Button" button
    Then I verify error message "There was an error for Telephony Bulk Plan Change." on screen

  @Telephony @4_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_Header
  Scenario: Testcase id = 4_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_Header, description = Bulk Account Update using a Valid File Format with Invalid Header
    Given Provisioning System Mode is set to "OFF" for testcase "4_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_Header"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I create the bulk upload csv file for service "Telephony" and field "NEW_SBD_IMEI" and "2" items
    Then I upload the file "Telephony_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Change_Account_Button" button
    Then I verify error message "The document submitted 'Telephony_NEW_SBD_IMEI.csv' failed upload validation. Header row must be 'SIM'." on screen

  @Telephony @5_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_Numeric_SIMs
  Scenario: Testcase id = 5_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_Numeric_SIMs, description = Bulk Account Update using a Valid File Format with Invalid Numeric SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "5_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_Numeric_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_Invalid_Numeric_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_Invalid_Numeric_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Change_Account_Button" button
    Then I verify error message "Telephony_Telephony_Invalid_Numeric_SIM_Postpaid.csv' has too many rows which failed SIM validation, entire file rejected." on screen

  @Telephony @6_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_AlphaNumeric_SIMs
  Scenario: Testcase id = 6_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_AlphaNumeric_SIMs, description = Bulk Account Update using a Valid File Format with Invalid alphaNumeric SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "6_Bulk_Account_Update_Using_a_Valid_File_Format_with_Invalid_AlphaNumeric_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_Invalid_alphaNumeric_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_Invalid_alphaNumeric_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @7_Bulk_Account_Update_Using_a_Valid_File_Format_with_Inactive_SIMs
  Scenario: Testcase id = 7_Bulk_Account_Update_Using_a_Valid_File_Format_with_Inactive_SIMs, description = Bulk Account Update using a Valid File Format with Inactive SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "7_Bulk_Account_Update_Using_a_Valid_File_Format_with_Inactive_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_Inactive_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_Inactive_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @8_Bulk_Account_Update_Using_a_Valid_File_Format_with_SIMs_Owned_by_Other_SP
  Scenario: Testcase id = 8_Bulk_Account_Update_Using_a_Valid_File_Format_with_SIMs_Owned_by_Other_SP, description = Bulk Account Update using a Valid File Format with Valid SIMs Owned by Other SP
    Given Provisioning System Mode is set to "OFF" for testcase "8_Bulk_Account_Update_Using_a_Valid_File_Format_with_SIMs_Owned_by_Other_SP"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_other_SP_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_other_SP_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard 10 Free" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @_activate_bulk_account_pre_req
  Scenario: Testcase id = _activate_bulk_account_pre_req, description = Account activation using bulk upload with individual plan
    Given Provisioning System Mode is set to "OFF" for testcase "_activate_bulk_account_pre_req"
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

  @Telephony @9_Bulk_Account_Update_Valid_Format_File_CSV
  Scenario: Testcase id = 9_Bulk_Account_Update_Valid_Format_File_CSV, description = Bulk Account Update using a Valid Format File (.csv)
    Given Provisioning System Mode is set to "OFF" for testcase "9_Bulk_Account_Update_Valid_Format_File_CSV"
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
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @_activate_bulk_account_pre_req
  Scenario: Testcase id = _activate_bulk_account_pre_req, description = Bulk Account Activation with individual Plan using a Valid Format File (.txt)
    Given Provisioning System Mode is set to "OFF" for testcase "_activate_bulk_account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload text file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.txt" to "File_Upload"
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

  @Telephony @10_Bulk_Account_Update_Valid_Format_File_TXT
  Scenario: Testcase id = 10_Bulk_Account_Update_Valid_Format_File_TXT, description = Bulk Account Update using a Valid Format File (.txt)
    Given Provisioning System Mode is set to "OFF" for testcase "10_Bulk_Account_Update_Valid_Format_File_TXT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.txt" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard" for "Plan_Coming_From"
    Then I select "Level 1" for "Plan_Going_To"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @_activate_bulk_account_pre_req
  Scenario: Testcase id = _activate_bulk_account_pre_req, description = Account activation using bulk upload with individual plan
    Given Provisioning System Mode is set to "OFF" for testcase "_activate_bulk_account_pre_req"
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

  @Telephony @16_Bulk_Account_Update_with_Call_Forwarding_Enabled
  Scenario: Testcase id = 16_Bulk_Account_Update_with_Call_Forwarding_Enabled, description = Bulk Account Update with Call Forwarding enabled
    Given Provisioning System Mode is set to "OFF" for testcase "16_Bulk_Account_Update_with_Call_Forwarding_Enabled"
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
    Then I check "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @17_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)
  Scenario: Testcase id = 17_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag), description = Bulk Account Update with Call Forwarding Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "17_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1" for "Plan_Coming_From"
    Then I select "Level 1" for "Plan_Going_To"
    Then I uncheck "Call_Forwarding_checkbox"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @21_Bulk_Account_Update_with_Local_Number_Enabled(without_Tag)
  Scenario: Testcase id = 21_Bulk_Account_Update_with_Local_Number_Enabled(without_Tag), description = Bulk Account Update with Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "21_Bulk_Account_Update_with_Local_Number_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1" for "Plan_Coming_From"
    Then I select "Level 1" for "Plan_Going_To"
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @22_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)
  Scenario: Testcase id = 22_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag), description = Bulk Account Update with Local Number Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "22_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1" for "Plan_Coming_From"
    Then I select "Level 1" for "Plan_Going_To"
    Then I uncheck "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @30_Bulk_Account_Update_with_RUDICS_Enabled
  Scenario: Testcase id = 30_Bulk_Account_Update_with_RUDICS_Enabled, description = Bulk Account Update with RUDICS Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "30_Bulk_Account_Update_with_RUDICS_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1" for "Plan_Coming_From"
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

  @Telephony @31_Bulk_Account_Update_with_RUDICS_Disabled_(without_Tag)
  Scenario: Testcase id = 31_Bulk_Account_Update_with_RUDICS_Disabled_(without_Tag), description = Bulk Account Update with RUDICS Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "31_Bulk_Account_Update_with_RUDICS_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.txt" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1" for "Plan_Coming_From"
    Then I select "Level 1" for "Plan_Going_To"
    Then I uncheck "RUDICS_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @57_Bulk_Account_Update_with_Call_Forwarding_Enabled_i2p
  Scenario: Testcase id = 57_Bulk_Account_Update_with_Call_Forwarding_Enabled_i2p, description = Bulk Account Update with Call Forwarding Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "57_Bulk_Account_Update_with_Call_Forwarding_Enabled_i2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Level 1" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @58_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_i2p
  Scenario: Testcase id = 58_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_i2p, description = Bulk Account Update with Call Forwarding Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "58_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_i2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I uncheck "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @62_Bulk_Account_Update_with_Local_Number_Enabled_i2p
  Scenario: Testcase id = 62_Bulk_Account_Update_with_Local_Number_Enabled_i2p, description = Bulk Account Update with Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "62_Bulk_Account_Update_with_Local_Number_Enabled_i2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @63_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_i2p
  Scenario: Testcase id = 63_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_i2p, description = Bulk Account Update with Local Number Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "63_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_i2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I uncheck "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @82_Bulk_Account_Update_with_Voicemail_Disabled_(without_Tag)_i2p
  Scenario: Testcase id = 82_Bulk_Account_Update_with_Voicemail_Disabled_(without_Tag)_i2p, description = Bulk Account Update with Voicemail Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "82_Bulk_Account_Update_with_Voicemail_Disabled_(without_Tag)_i2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Going_To"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @119_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_p2p
  Scenario: Testcase id = 119_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_p2p, description = Bulk Account Update with Call Forwarding Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "119_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_p2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Going_To"
    Then I uncheck "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @123_Bulk_Account_Update_with_Local_Number_Enabled_p2p
  Scenario: Testcase id = 123_Bulk_Account_Update_with_Local_Number_Enabled_p2p, description = Bulk Account Update with local number enabled
    Given Provisioning System Mode is set to "OFF" for testcase "123_Bulk_Account_Update_with_Local_Number_Enabled_p2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Going_To"
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @124_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_p2p
  Scenario: Testcase id = 124_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_p2p, description = Bulk Account Update with local number disabled
    Given Provisioning System Mode is set to "OFF" for testcase "124_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_p2p"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Coming_From"
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Going_To"
    Then I uncheck "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @180_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_p2i
  Scenario: Testcase id = 180_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_p2i, description = Bulk Account Update with Call Forwarding Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "180_Bulk_Account_Update_with_Call_Forwarding_Disabled_(without_Tag)_p2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Plan_Coming_From"
    Then I select "Standard" for "Plan_Going_To"
    Then I uncheck "Call_Forwarding_checkbox"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @184_Bulk_Account_Update_with_Local_Number_Enabled_p2i
  Scenario: Testcase id = 184_Bulk_Account_Update_with_Local_Number_Enabled_p2i, description = Bulk Account Update with local number enabled
    Given Provisioning System Mode is set to "OFF" for testcase "184_Bulk_Account_Update_with_Local_Number_Enabled_p2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard" for "Plan_Coming_From"
    Then I select "Standard" for "Plan_Going_To"
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @185_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_p2i
  Scenario: Testcase id = 185_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_p2i, description = Bulk Account Update with Local Number Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "185_Bulk_Account_Update_with_Local_Number_Disabled_(without_Tag)_p2i"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub_market_bulk_plan_change"
    Then I select "None" for "Demo_Trial_Bulk_Plan_change"
    Then I select "Standard" for "Plan_Coming_From"
    Then I select "Standard" for "Plan_Going_To"
    Then I uncheck "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"