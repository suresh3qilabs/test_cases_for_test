Feature: This feature file tests all smoke test scenarios for Russia Gateway Crew Without Crew

  Background:
    * I read the data from the excel "Config_Russia_GW_CrewWithoutCrew.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @RGW_Crew_Without_Crew_Activate_Account_Russia_Crew
  Scenario: Testcase id = RGW_Crew_Without_Crew_Activate_Account_Russia_Crew, description = Activate a Russia Crew Service Plan for RGW Crew Without Crew
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Activate_Account_Russia_Crew"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
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

  @Telephony @RGW_Crew_Without_Crew_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = RGW_Crew_Without_Crew_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_Without_Crew_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = RGW_Crew_Without_Crew_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_Without_Crew_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = RGW_Crew_Without_Crew_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_1
  Scenario: Testcase id = RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_1, description = Activate a Russia Crew Service Plan for RGW Crew Without Crew
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
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

  @Telephony @RGW_Crew_Without_Crew_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = RGW_Crew_Without_Crew_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_Without_Crew_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = RGW_Crew_Without_Crew_SUSPENDED_to_DEACTIVE, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_2
  Scenario: Testcase id = RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_2, description = Activate a Russia Crew Service Plan for RGW Crew Without Crew
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
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
    Then I validate the account details on network elements

#  @Telephony @RGW_Crew_Without_Crew_Update_Service_Plan
#  Scenario: Testcase id = RGW_Crew_Without_Crew_Update_Service_Plan, description = Update Plan for Russia GW Crew without Crew Account, Issue is: No Service Plans to update
#    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Update_Service_Plan"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID to swap device
#    Then I select "Russia Gateway Data Only" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements

  @Telephony @RGW_Crew_Without_Crew_Bulk_Activate_Account
  Scenario: Testcase id = RGW_Crew_Without_Crew_Bulk_Activate_Account, description = Activate Russia gateway Crew without crew Bulk Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Bulk_Activate_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I create the bulk upload csv file for service "Telephony" and field "Russia_Gateway_SIM_Crew_Without_Crew" and "2" items
    Then I set "Multiple SIMs" checkbox
    Then I upload the file "Telephony_Russia_Gateway_SIM_Crew_Without_Crew.csv" to "File_Upload"
    Then I select "Russia Gateway Crew" for "Sub-Market"
    Then I select "Russia Gateway Crew" for "Service Plan"
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
    Then I validate that accounts are activated with given details for bulk activation for "Russia_Gateway_SIM_Crew_Without_Crew"

  @Telephony @RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_3
  Scenario: Testcase id = RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_3, description = Activate a Russia Crew Service Plan for RGW Crew Without Crew
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
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

  @Telephony @RGW_Crew_Without_Crew_SIM_Device_Swap
  Scenario: Testcase id = RGW_Crew_Without_Crew_SIM_Device_Swap, description = Swap SIM for RGW Crew Without Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_SIM_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Crew Sim Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I verify the new Device id on BRM DB Server
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

  @Telephony @RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_5
  Scenario: Testcase id = RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_5, description = Activate a Russia Crew Service Plan for RGW Crew Without Crew
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_Activate_Account_Russia_Crew_pre_req_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Russia Gateway Crew" for "Service Plan"
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

  @Telephony @RGW_Crew_Without_Crew_MSISDN_Device_Swap
  Scenario: Testcase id = RGW_Crew_Without_Crew_MSISDN_Device_Swap, description = Swap MSISDN for RGW Crew Without Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_MSISDN_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Crew MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I verify the new Device id on BRM DB Server
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

  @Telephony @RGW_Crew_Without_Crew_MSISDN-B_Device_Swap_Not_Successful
  Scenario: Testcase id = RGW_Crew_Without_Crew_MSISDN-B_Device_Swap_Not_Successful, description = Swap MSISDN-B for RGW Crew Without Crew Account Not Successful
    Given Provisioning System Mode is set to "OFF" for testcase "RGW_Crew_Without_Crew_MSISDN-B_Device_Swap_Not_Successful"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I capture the enabled services
    Then click on swap device link and enter value based on "Russia Gateway Crew MSISDN-B Query"