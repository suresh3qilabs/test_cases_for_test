Feature: This feature file tests all the scenarios of Telephony Bulk action Request report

  Background:
    * I read the data from the excel "iridium_service_Functional_Bulk_Account.xlsx" and "getBulkActionRequestReport" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @033_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status_Belongs_Different_SP
  Scenario: Testcase id = 033_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status_Belongs_Different_SP, description = Bulk Search Using a Valid Bulk Request ID in "COMPLETED" Status that Belongs to Another SP
    Given Provisioning System Mode is set to "OFF" for testcase "033_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status_Belongs_Different_SP"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "BULK-11569796315" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I verify error message "Invalid Bulk ID" on screen

  @Telephony @035_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status_Belongs_Different_Service
  Scenario: Testcase id = 035_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status_Belongs_Different_Service, description = Bulk Search Using a Valid Bulk Request ID in "COMPLETED" Status that Belongs to Another ServiceType
    Given Provisioning System Mode is set to "OFF" for testcase "035_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status_Belongs_Different_Service"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I scroll into view of the element "SBD_tab"
    Then I hover over "SBD_tab" tab
    Then I wait 5 seconds
    Then I click on "sbd_Bulk_request_status"
    Then I enter "*" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I capture contract IDs from "Search_Results_Table"
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I click on "Bulk_request_status"
    Then I enter "completed_bulk_id" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I validate the success count and errors count after bulk action search

  @Telephony @037_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status
  Scenario: Testcase id = 037_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status, description = Bulk Search Using a Valid Bulk Request ID in "COMPLETED" Status
    Given Provisioning System Mode is set to "OFF" for testcase "037_Bulk_Search_Using_a_Valid_Bulk_Request_ID_in_COMPLETED_Status"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I scroll into view of the element "Telephony_tab"
    Then I hover over "Telephony_tab" tab
    Then I wait 5 seconds
    Then I click on "Bulk_request_status"
    Then I enter "*" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I capture contract IDs from "Search_Results_Table"
    Then I enter "completed_bulk_id" for "Bulk_request_id"
    Then I click on "Bulk_search_button" button
    Then I validate the success count and errors count after bulk action search