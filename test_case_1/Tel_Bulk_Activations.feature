Feature: This feature file tests all the scenarios of Telephony Bulk activations

  Background:
    * I read the data from the excel "iridium_service_Functional_Bulk_Account.xlsx" and "TEL_Bulk_Activations" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @1_Bulk_Account_Activation_with_Individual_Plan_with_No_File_Attached
  Scenario: Testcase id = 1_Bulk_Account_Activation_with_Individual_Plan_with_No_File_Attached, description = Bulk Account Activation with Individual Plan with No File attached
    Given Provisioning System Mode is set to "OFF" for testcase "1_Bulk_Account_Activation_with_Individual_Plan_with_No_File_Attached"
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
    Then I verify error message "Multiple SIMs check box is selected but no file was chosen" on screen

  @Telephony @2_Bulk_Account_Activation_with_Individual_Plan_Using_an_Invalid_Format_File
  Scenario: Testcase id = 2_Bulk_Account_Activation_with_Individual_Plan_Using_an_Invalid_Format_File, description = Bulk Account Activation with individual Plan using an Invalid Format File (.jpg)
    Given Provisioning System Mode is set to "OFF" for testcase "2_Bulk_Account_Activation_with_Individual_Plan_Using_an_Invalid_Format_File"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create incorrect file format "rtf" for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.rtf" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I verify error message "This file is improperly formatted or is an unsupported file type." on screen

  @Telephony @3_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_with_No_SIMs
  Scenario: Testcase id = 3_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_with_No_SIMs, description = Bulk Account Activation with Individual Plan using a Valid File Format with no SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "3_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_with_No_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "0" items
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I verify error message " The bulk details are empty but the bulk action flag is set to true." on screen

  @Telephony @4_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_Header
  Scenario: Testcase id = 4_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_Header, description = Bulk Account Activation with Individual Plan using a Valid File Format with Invalid Header
    Given Provisioning System Mode is set to "OFF" for testcase "4_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_Header"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create the bulk upload csv file for service "Telephony" and field "NEW_SBD_IMEI" and "2" items
    Then I upload the file "Telephony_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I verify error message "The document submitted 'Telephony_NEW_SBD_IMEI.csv' failed upload validation. Header row must be 'SIM'." on screen

  @Telephony @5_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_Numeric_SIMs
  Scenario: Testcase id = 5_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_Numeric_SIMs, description = Bulk Account Activation with Individual Plan using a Valid File Format with Invalid Numeric SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "5_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_Numeric_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_Invalid_Numeric_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_Invalid_Numeric_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I verify error message "Telephony_Telephony_Invalid_Numeric_SIM_Postpaid.csv' has too many rows which failed SIM validation, entire file rejected." on screen

  @Telephony @6_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_AlphaNumeric_SIMs
  Scenario: Testcase id = 6_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_AlphaNumeric_SIMs, description = Bulk Account Activation with Individual Plan using a Valid File Format with Invalid AlphaNumeric SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "6_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Invalid_AlphaNumeric_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_Invalid_alphaNumeric_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_Invalid_alphaNumeric_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @7_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Inactive_SIMs
  Scenario: Testcase id = 7_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Inactive_SIMs, description = Bulk Account Activation with Individual Plan using a Valid File Format with Inactive SIMs
    Given Provisioning System Mode is set to "OFF" for testcase "7_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_Inactive_SIMs"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_Inactive_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_Inactive_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @8_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_of_Another_Sub-Market
  Scenario: Testcase id = 8_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_of_Another_Sub-Market, description = Bulk Account Activation with Individual Plan using a Valid File Format with Valid SIMs of Another Sub-Market
    Given Provisioning System Mode is set to "OFF" for testcase "8_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_of_Another_Sub-Market"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Prepaid_With_Prepaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Prepaid_With_Prepaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @9_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_of_Another_Service_Type
  Scenario: Testcase id = 9_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_of_Another_Service_Type, description = Bulk Account Activation with Individual Plan using a Valid File Format with Valid SIMs of Another Service Type
    Given Provisioning System Mode is set to "OFF" for testcase "9_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_of_Another_Service_Type"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "OpenPort_other_service_SIM" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_OpenPort_other_service_SIM.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @10_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_Owned_by_Other_SP
  Scenario: Testcase id = 10_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_Owned_by_Other_SP, description = Bulk Account Activation with Individual Plan using a Valid File Format with Valid SIMs Owned by Other SP
    Given Provisioning System Mode is set to "OFF" for testcase "10_Bulk_Account_Activation_with_Individual_Plan_Using_a_Valid_File_Format_with_SIMs_Owned_by_Other_SP"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I set "Multiple SIMs" checkbox
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_other_SP_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_other_SP_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I verify error message "Bulk request failed" on screen

  @Telephony @11_Bulk_Account_Activation_with_Individual_Plan_Valid_Format_File_CSV
  Scenario: Testcase id = 11_Bulk_Account_Activation_with_Individual_Plan_Valid_Format_File_CSV, description = Bulk Account Activation with individual Plan using a Valid Format File (.csv)
    Given Provisioning System Mode is set to "OFF" for testcase "11_Bulk_Account_Activation_with_Individual_Plan_Valid_Format_File_CSV"
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

  @Telephony @12_Bulk_Account_Activation_with_Individual_Plan_Valid_Format_File_TXT
  Scenario: Testcase id = 12_Bulk_Account_Activation_with_Individual_Plan_Valid_Format_File_TXT, description = Bulk Account Activation with individual Plan using a Valid Format File (.txt)
    Given Provisioning System Mode is set to "OFF" for testcase "12_Bulk_Account_Activation_with_Individual_Plan_Valid_Format_File_TXT"
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

  @Telephony @17_Bulk_Account_Activation_with_Individual_Plan_with_Provider_Reference
  Scenario: Testcase id = 17_Bulk_Account_Activation_with_Individual_Plan_with_Provider_Reference, description = Bulk Account Activation with individual Plan with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "17_Bulk_Account_Activation_with_Individual_Plan_with_Provider_Reference"
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
    Then I enter "Complex!1234567" for "Provider Reference"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I validate "Complex!1234567" value is selected for "Provider Reference"
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @23_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 23_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Enabled No PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "23_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @24_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 24_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Enabled No PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "24_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @25_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled
  Scenario: Testcase id = 25_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Enabled No PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "25_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @26_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 26_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Enabled with PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "26_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN"
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
    Then I enter "" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @27_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 27_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Enabled with PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "27_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN"
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

  @Telephony @28_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled
  Scenario: Testcase id = 28_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Enabled with PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "28_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @29_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 29_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Disabled and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "29_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @30_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 30_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Disabled and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "30_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @31_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled
  Scenario: Testcase id = 31_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled, description = Bulk Account Activation with Individual Plan with 2 Stage Voice Disabled and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "31_Bulk_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @42_Bulk_Account_Activation_with_Shared_Plan_Valid_Format_File_CSV
  Scenario: Testcase id = 42_Bulk_Account_Activation_with_Shared_Plan_Valid_Format_File_CSV, description = Bulk Account Activation with Shared Plan using a Valid Format File (.csv)
    Given Provisioning System Mode is set to "OFF" for testcase "42_Bulk_Account_Activation_with_Shared_Plan_Valid_Format_File_CSV"
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

  @Telephony @43_Bulk_Account_Activation_with_Shared_Plan_Valid_Format_File_TXT
  Scenario: Testcase id = 43_Bulk_Account_Activation_with_Shared_Plan_Valid_Format_File_TXT, description = Bulk Account Activation with Shared Plan using a Valid Format File (.txt)
    Given Provisioning System Mode is set to "OFF" for testcase "43_Bulk_Account_Activation_with_Shared_Plan_Valid_Format_File_TXT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.txt" to "File_Upload"
    Then I create incorrect file format "txt" for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I upload the file "Telephony_Telephony_SIM_Postpaid" to "File_Upload"
    Then I verify the message "Bulk_Activate_Incorrect_File_Format_Error" for "Telephony"

  @Telephony @44_Bulk_Account_Activation_with_Shared_Plan_with_Call_Forwarding_Enabled
  Scenario: Testcase id = 44_Bulk_Account_Activation_with_Shared_Plan_with_Call_Forwarding_Enabled, description = Bulk Account Activation with Shared Plan with Call Forwarding Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "44_Bulk_Account_Activation_with_Shared_Plan_with_Call_Forwarding_Enabled"
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
    Then I validate if "Call_Forwarding_checkbox" is checked
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @45_Bulk_Account_Activation_with_Shared_Plan_with_Call_Forwarding_Disabled_(without_Tag)
  Scenario: Testcase id = 45_Bulk_Account_Activation_with_Shared_Plan_with_Call_Forwarding_Disabled_(without_Tag), description = Bulk Account Activation with Shared Plan with Call Forwarding Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "45_Bulk_Account_Activation_with_Shared_Plan_with_Call_Forwarding_Disabled_(without_Tag)"
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
    Then I uncheck "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I validate if "Call_Forwarding_checkbox" is unchecked
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @49_Bulk_Account_Activation_with_Shared_Plan_with_Local_Number_Enabled
  Scenario: Testcase id = 49_Bulk_Account_Activation_with_Shared_Plan_with_Local_Number_Enabled, description = Bulk Account Activation with Shared Plan with Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "49_Bulk_Account_Activation_with_Shared_Plan_with_Local_Number_Enabled"
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
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I validate if "Local_Number_checkbox" is checked
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @50_Bulk_Account_Activation_with_Shared_Plan_with_Local_Number_Disabled_(without_Tag)
  Scenario: Testcase id = 50_Bulk_Account_Activation_with_Shared_Plan_with_Local_Number_Disabled_(without_Tag), description = Bulk Account Activation with Shared Plan with Local Number Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "50_Bulk_Account_Activation_with_Shared_Plan_with_Local_Number_Disabled_(without_Tag)"
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
    Then I uncheck "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I validate if "Local_Number_checkbox" is unchecked
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @59_Bulk_Account_Activation_with_Shared_Plan_with_RUDICS_Disabled_(without_Tag)
  Scenario: Testcase id = 59_Bulk_Account_Activation_with_Shared_Plan_with_RUDICS_Disabled_(without_Tag), description = Bulk Account Activation with Shared Plan with RUDICS Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "59_Bulk_Account_Activation_with_Shared_Plan_with_RUDICS_Disabled_(without_Tag)"
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
    Then I validate if "RUDICS_checkbox" is unchecked
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @67_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 67_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Enabled No PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "67_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "blank" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "blank" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @68_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 68_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Enabled No PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "68_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "blank" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @69_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled
  Scenario: Testcase id = 69_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Enabled No PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "69_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "blank" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @70_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 70_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Enabled with PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "70_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN"
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
    Then I enter "blank" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @71_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 71_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Enabled with PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "71_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN"
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

  @Telephony @72_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled
  Scenario: Testcase id = 72_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Enabled with PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "72_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @73_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 73_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Disabled and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "73_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "blank" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @74_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 74_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Disabled and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "74_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"

  @Telephony @75_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled
  Scenario: Testcase id = 75_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled, description = Bulk Account Activation with Shared Plan with 2 Stage Voice Disabled and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "75_Bulk_Account_Activation_with_Shared_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Telephony_SIM_Postpaid" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Telephony_SIM_Postpaid.csv" to "File_Upload"
    Then I select "Standard Postpaid" for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "Telephony_SIM_Postpaid"
