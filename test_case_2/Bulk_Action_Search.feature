Feature: This feature file tests all the scenarios of Telephony Bulk action search

  Background:
    * I read the data from the excel "iridium_service_Functional_Bulk_Account.xlsx" and "bulkActionSearch" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @062_Bulk_Search_Using_Empty_Bulk_Request_ID
  Scenario: Testcase id = 062_Bulk_Search_Using_Empty_Bulk_Request_ID, description = Bulk Search Using Empty Bulk Request ID
    Given Provisioning System Mode is set to "OFF" for testcase "062_Bulk_Search_Using_Empty_Bulk_Request_ID"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "blank" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I verify error message "Please input a Bulk Request ID" on screen

  @Telephony @063_Bulk_Search_Using_an_Invalid_Bulk_Request_ID
  Scenario: Testcase id = 063_Bulk_Search_Using_an_Invalid_Bulk_Request_ID, description = Bulk Search Using Invalid Bulk Request ID
    Given Provisioning System Mode is set to "OFF" for testcase "063_Bulk_Search_Using_an_Invalid_Bulk_Request_ID"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "TEST-20941161174" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I verify error message "There was an error retrieving Bulk Action Request Status." on screen

  @Telephony @064_Bulk_Search_Using_a_Valid_Bulk_Request_ID
  Scenario: Testcase id = 064_Bulk_Search_Using_a_Valid_Bulk_Request_ID, description = Bulk Search Using a Valid Bulk Request ID
    Given Provisioning System Mode is set to "OFF" for testcase "064_Bulk_Search_Using_a_Valid_Bulk_Request_ID"
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

  @Telephony @065_Bulk_Search_of_All_Request_Types_Using_Wildcards
  Scenario: Testcase id = 065_Bulk_Search_of_All_Request_Types_Using_Wildcards, description = Bulk Search of All Request Types Using Wildcards
    Given Provisioning System Mode is set to "OFF" for testcase "065_Bulk_Search_of_All_Request_Types_Using_Wildcards"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "*" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I validate the success count and errors count after bulk action search

  @Telephony @066_Bulk_Search_of_Activation_Request_Types_Using_Wildcards
  Scenario: Testcase id = 066_Bulk_Search_of_Activation_Request_Types_Using_Wildcards, description = Bulk Search of Activation Request Types Using Wildcards
    Given Provisioning System Mode is set to "OFF" for testcase "066_Bulk_Search_of_Activation_Request_Types_Using_Wildcards"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "*" for "Bulk_request_id"
    Then I select "ACTIVATION" for "Bulk_request_type"
    Then I click on "Bulk_search_button" button
    Then I validate the success count and errors count after bulk action search

  @Telephony @067_Bulk_Search_of_Change_Plan_Request_Types_Using_Wildcards
  Scenario: Testcase id = 067_Bulk_Search_of_Change_Plan_Request_Types_Using_Wildcards, description = Bulk Search of Change Plan Request Types Using Wildcards
    Given Provisioning System Mode is set to "OFF" for testcase "067_Bulk_Search_of_Change_Plan_Request_Types_Using_Wildcards"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "*" for "Bulk_request_id"
    Then I select "CHANGE PLAN" for "Bulk_request_type"
    Then I click on "Bulk_search_button" button
    Then I validate the success count and errors count after bulk action search

  @Telephony @068_Bulk_Search_of_Transfer_Service_Request_Types_Using_Wildcards
  Scenario: Testcase id = 068_Bulk_Search_of_Transfer_Service_Request_Types_Using_Wildcards, description = Bulk Search of Transfer Service Request Types Using Wildcards
    Given Provisioning System Mode is set to "OFF" for testcase "068_Bulk_Search_of_Transfer_Service_Request_Types_Using_Wildcards"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "*" for "Bulk_request_id"
    Then I select "TRANSFER SERVICE" for "Bulk_request_type"
    Then I click on "Bulk_search_button" button
    Then I validate the success count and errors count after bulk action search