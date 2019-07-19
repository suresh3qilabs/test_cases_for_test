Feature: This feature file tests all the bulk scenarios for SBD

  Background:
    * I read the data from the excel "Config_SBD.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @SBD @Account_Activation_With_Bulk
  Scenario: Testcase id = Account_Activation_With_Bulk, description = Account activation using bulk upload
    Given Provisioning System Mode is set to "OFF" for testcase "Account_Activation_With_Bulk"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I set "Multiple_IMEIs" checkbox
    Then I create the bulk upload csv file for service "SBD" and field "NEW_SBD_IMEI" and "2" items
    Then I cleanup the SBD device on network element
    Then I upload the file "SBD_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "Delivery Destination" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I click on "MT_Filters_Expand"
    Then I enter "MT_Filter_Email" for "MT_Filter_1"
    Then I select "Email" for "MT_Filter_Type_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "150" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "NEW_SBD_IMEI"

  @SBD @Bulk_Plan_Change_individual_to_individual
  Scenario: Testcase id = Bulk_Plan_Change_individual_to_individual, description = Bulk plan change individual to individual
    Given Provisioning System Mode is set to "OFF" for testcase "Bulk_Plan_Change_individual_to_individual"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I scroll into view of the element "SBD_tab"
    Then I hover over "SBD_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "SBD_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "SBD 0" for "Plan_Coming_From"
    Then I select "SBD 12" for "Plan_Going_To"
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "150" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "NEW_SBD_IMEI"

  @SBD @Bulk_Plan_Change_individual_to_pool
  Scenario: Testcase id = Bulk_Plan_Change_individual_to_pool, description = Bulk plan change individual to pool
    Given Provisioning System Mode is set to "OFF" for testcase "Bulk_Plan_Change_individual_to_pool"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I scroll into view of the element "SBD_tab"
    Then I hover over "SBD_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "SBD_NEW_SBD_IMEI.csv" to "File_Upload"
    Then I select "Individual" for "contract_type_from"
    Then I select "SBD 12" for "Plan_Coming_From"
    Then I select "Shared" for "contract_type_to"
    Then I select "Static Shared Group" for "shared_type_to"
    Then I check if the pool group "Automation_default_static" is present and create it if it is not present
    Then I select "Automation_default_static" for "shared_group_to"
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "200" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "NEW_SBD_IMEI"

  @SBD @Bulk_Plan_Change_pool_to_pool
  Scenario: Testcase id = Bulk_Plan_Change_pool_to_pool, description = Bulk plan change pool to pool
    Given Provisioning System Mode is set to "OFF" for testcase "Bulk_Plan_Change_pool_to_pool"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I scroll into view of the element "SBD_tab"
    Then I hover over "SBD_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "SBD_NEW_SBD_IMEI.csv" to "File_Upload"
    #Then I check if the pool group "Automation_default_static" is present and create it if it is not present
    Then I check if the pool group "Automation_default_dynamic" is present and create it if it is not present
    Then I select "Shared" for "contract_type_from"
    Then I select "Static Shared Group" for "shared_type_from"
    Then I select "Automation_default_static" for "shared_group_from"
    Then I select "Shared" for "contract_type_to"
    Then I select "Dynamic Shared Group" for "shared_type_to"
    Then I select "Automation_default_dynamic" for "shared_group_to"
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "150" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "NEW_SBD_IMEI"

  @SBD @Bulk_Plan_Change_pool_to_individual
  Scenario: Testcase id = Bulk_Plan_Change_pool_to_individual, description = Bulk plan change pool to individual, bug id = BDEV-33449
    Given Provisioning System Mode is set to "OFF" for testcase "Bulk_Plan_Change_pool_to_individual"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I scroll into view of the element "SBD_tab"
    Then I hover over "SBD_tab" tab
    Then I click on "Bulk_Plan_Change"
    Then I upload the file "SBD_NEW_SBD_IMEI.csv" to "File_Upload"
    #Then I check if the pool group "Automation_default_dynamic" is present and create it if it is not present
    Then I select "Shared" for "contract_type_from"
    Then I select "Dynamic Shared Group" for "shared_type_from"
    Then I select "Automation_default_dynamic" for "shared_group_from"
    Then I select "Individual" for "contract_type_to"
    Then I select "SBD 0" for "Plan_Going_To"
    Then I click on obj repo "Change_Account_Button" button
    Then I click on bulk request ID
    Then I wait for the bulk request to be processed with a threshold of "150" seconds
    Then I capture contract IDs from "Search_Results_Table"
    Then I validate the success count and errors count on Bulk Request Status page
    Then I verify all the results are "success"
    Then I click on "Search" tab
    Then I validate that accounts are activated with given details for bulk activation for "NEW_SBD_IMEI"

  @SBD @Account_Activation_With_Bulk_Without_Attachment
  Scenario: Testcase id = Account_Activation_With_Bulk_Without_Attachment, description = Account activation using bulk upload without attaching file
    Given Provisioning System Mode is set to "OFF" for testcase "Account_Activation_With_Bulk_Without_Attachment"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I set "Multiple_IMEIs" checkbox
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "Delivery Destination" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Bulk_Activate_Without_Attachment_Error" for "SBD"

  @SBD @Account_Activation_Incorrect_File_Format
  Scenario: Testcase id = Account_Activation_Incorrect_File_Format, description = Account activation using bulk upload with incorrect file format
    Given Provisioning System Mode is set to "OFF" for testcase "Account_Activation_Incorrect_File_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I set "Multiple_IMEIs" checkbox
    Then I create incorrect file format "rtf" for service "SBD" and field "NEW_SBD_IMEI" and "4" items
    Then I upload the file "SBD_NEW_SBD_IMEI" to "File_Upload"
    Then I verify the message "Bulk_Activate_Incorrect_File_Format_Error" for "SBD"
#    Then I select "SBD 0" for "Service_Plan"
#    Then I enter "Delivery Destination" for "Delivery_Destination_1"
#    Then I select "Email" for "Delivery_Method_1"
#    Then I click on obj repo "Activate Account" button
#    Then I verify the message "Bulk_Activate_Incorrect_File_Format_Error" for "SBD"



#  contract_type_from
#  shared_type_from
#  shared_group_from
#  contract_type_to
#  shared_type_to
#  shared_group_to



#  @SBD @Contract_Type_Individual_2
#  Scenario: Testcase id = Contract_Type_Individual_2, description = Contract_Type_Individual_2
#    Given Provisioning System Mode is set to "OFF" for testcase "Contract_Type_Individual_2"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "SBD" tab
#    Then I enter "SBD_IMEI" for "IMEI"
#    Then I select "NAL Unl" for "Service_Plan"
#    Then I enter "Delivery Destination" for "Delivery_Destination_1"
#    Then I select "Email" for "Delivery_Method_1"
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify that actual result displayed on search page has expected values
#
#  @SBD @Contract_Type_Shared_1
#  Scenario: Testcase id = Contract_Type_Shared_1, description = Contract_Type_Shared_1
#    Given Provisioning System Mode is set to "OFF" for testcase "Contract_Type_Shared_1"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "SBD" tab
#    Then I enter "SBD_IMEI" for "IMEI"
#    Then I select "NAL Unl" for "Service_Plan"
#    Then I enter "Delivery Destination" for "Delivery_Destination_1"
#    Then I select "Email" for "Delivery_Method_1"
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify that actual result displayed on search page has expected values