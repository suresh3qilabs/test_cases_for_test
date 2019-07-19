Feature: This feature file tests all scenarios for Russia Gateway Crew Without Crew End to End Demo validations

  Background:
    * I read the data from the excel "Config_Russia_GW_Crew_Without_Crew_Regression.xlsx" and "End_To_End" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Activate_RGW_Crew_without_Crew_Demo_account_validate_Demo_count
  Scenario: Testcase id = 001_Activate_RGW_Crew_without_Crew_Demo_account_validate_Demo_count, description = Activate RGW Crew without Crew Demo account validate Demo count
    Given Provisioning System Mode is set to "OFF" for testcase "001_Activate_RGW_Crew_without_Crew_Demo_account_validate_Demo_count"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1
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

  @Telephony @002_Update_RGW_Crew_without_Crew_Demo_account_by_Disabling_additional_services
  Scenario: Testcase id = 002_Update_RGW_Crew_without_Crew_Demo_account_by_Disabling_additional_services, description = Update RGW Crew without Crew Demo account by Disabling additional services SMS MO and SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "002_Update_RGW_Crew_without_Crew_Demo_account_by_Disabling_additional_services"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I search for the contract id
    Then I click on the Contract ID to go to account edit page
    Then I save the number of demo_trial plans available
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I validate if "SMS_MO_checkbox" is unchecked
    Then I validate if "SMS_MT_checkbox" is unchecked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I search for the contract id
    Then I click on the Contract ID to go to account edit page
    Then I verify "Demo/Trial" no change in Demo count
    Then I verify the account is updated successfully on BRM Server

  @Telephony @003_Update_RGW_Crew_without_Crew_Demo_account_by_enable_additional_services
  Scenario: Testcase id = 003_Update_RGW_Crew_without_Crew_Demo_account_by_enable_additional_services, description = Update RGW Crew without Crew Demo account by enable additional services SMS MO and SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "003_Update_RGW_Crew_without_Crew_Demo_account_by_enable_additional_services"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I save the number of demo_trial plans available
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I validate if "SMS_MO_checkbox" is checked
    Then I validate if "SMS_MT_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I search for the contract id
    Then I click on the Contract ID to go to account edit page
    Then I verify "Demo/Trial" no change in Demo count
    Then I verify the account is updated successfully on BRM Server

  @Telephony @004_Sim_Swap_on_RGW_Crew_without_Crew_Demo_Account
  Scenario: Testcase id = 004_Sim_Swap_on_RGW_Crew_without_Crew_Demo_Account, description = Sim Swap on RGW Crew without Crew Demo Account
    Given Provisioning System Mode is set to "OFF" for testcase "004_Sim_Swap_on_RGW_Crew_without_Crew_Demo_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1
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
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then click on swap device link and enter value based on "Russia Gateway Crew Sim Query"
    Then I verify "Demo/Trial" no change in Demo count
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I verify the new Device id on BRM DB Server

  @Telephony @005_Activate_RGW_Crew_without_Crew_Demo_account_pre_req
  Scenario: Testcase id = 005_Activate_RGW_Crew_without_Crew_Demo_account_pre_req, description = Activate RGW Crew without Crew Demo account validate Demo count
    Given Provisioning System Mode is set to "OFF" for testcase "005_Activate_RGW_Crew_without_Crew_Demo_account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1
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

  @Telephony @006_RGW_Crew_without_Crew_Demo_Transition
  Scenario: Testcase id = 006_RGW_Crew_without_Crew_Demo_Transition, description = Transition RGW Crew without Crew Demo account to any commercial plan and validate demo count in increased
    Given Provisioning System Mode is set to "OFF" for testcase "006_RGW_Crew_without_Crew_Demo_Transition"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I select "NONE" for "Demo/Trial"
    Then I select "Russia Gateway Crew" for "Service Plan"
    Then I capture the enabled services
    Then I click on obj repo "Update Account" button
    Then I verify the account is updated successfully on BRM Server
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I verify "Demo/Trial" count is increased by 1

  @Telephony @007_RGW_Crew_without_Crew_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan
  Scenario: Testcase id = 007_RGW_Crew_without_Crew_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan, description = RGW Crew without Crew commercial account back to Demo Validate cannot be transitioned to Demo plan
    Given Provisioning System Mode is set to "OFF" for testcase "007_RGW_Crew_without_Crew_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo/Trial" plan is not available

  @Telephony @008_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_1
  Scenario: Testcase id = 008_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_1, description = Activate Crew without Crew Demo account pre req 1
    Given Provisioning System Mode is set to "OFF" for testcase "008_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1
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

  @Telephony @009_RGW_Crew_without_Crew_Demo_Account_Active_to_Suspend_Validated_demo_count_not_changed
  Scenario: Testcase id = 009_RGW_Crew_without_Crew_Demo_Account_Active_to_Suspend_Validated_demo_count_not_changed, description = RGW Crew without Crew Demo Account Active to Suspend Validated demo count not changed
    Given Provisioning System Mode is set to "OFF" for testcase "009_RGW_Crew_without_Crew_Demo_Account_Active_to_Suspend_Validated_demo_count_not_changed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo/Trial" no change in Demo count

  @Telephony @010_RGW_Crew_without_Crew_Suspend_to_Active_Demo_count_Validated_no_change_in_demo_count
  Scenario: Testcase id = 010_RGW_Crew_without_Crew_Suspend_to_Active_Demo_count_Validated_no_change_in_demo_count, description = RGW Crew without Crew Suspend to Active Demo count Validated no change in demo count
    Given Provisioning System Mode is set to "OFF" for testcase "010_RGW_Crew_without_Crew_Suspend_to_Active_Demo_count_Validated_no_change_in_demo_count"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo/Trial" no change in Demo count

  @Telephony @011_RGW_Crew_without_Crew_Active_to_Deactivation_Demo_Account_Validate_demo_count_increased_after_deactivation
  Scenario: Testcase id = 011_RGW_Crew_without_Crew_Active_to_Deactivation_Demo_Account_Validate_demo_count_increased_after_deactivation, description = RGW Crew without Crew Active to Deactivation Demo Account Validate demo count increased after deactivation
    Given Provisioning System Mode is set to "OFF" for testcase "011_RGW_Crew_without_Crew_Active_to_Deactivation_Demo_Account_Validate_demo_count_increased_after_deactivation"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo/Trial" count is increased by 1
    Then I cleanup the system

  @Telephony @012_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_2
  Scenario: Testcase id = 012_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_2, description = Activate RGW Crew without Crew Demo Account pre req 2
    Given Provisioning System Mode is set to "OFF" for testcase "012_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1
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

  @Telephony @013_RGW_Crew_without_Crew_Demo_account_Active_To_Suspend_pre_req_1
  Scenario: Testcase id = 013_RGW_Crew_without_Crew_Demo_account_Active_To_Suspend_pre_req_1, description = RGW Crew without Crew Demo account  Active To Suspend pre req 1
    Given Provisioning System Mode is set to "OFF" for testcase "013_RGW_Crew_without_Crew_Demo_account_Active_To_Suspend_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo/Trial" no change in Demo count

  @Telephony @014_RGW_Crew_without_Crew_Demo_account_Suspended_to_Deactivate_Validate_count_increased
  Scenario: Testcase id = 014_RGW_Crew_without_Crew_Demo_account_Suspended_to_Deactivate_Validate_count_increased, description = RGW Crew without Crew Demo account  Suspend to Deactivate Validate count increased
    Given Provisioning System Mode is set to "OFF" for testcase "014_RGW_Crew_without_Crew_Demo_account_Suspended_to_Deactivate_Validate_count_increased"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "Telephony" for "ServiceType"
    Then I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo/Trial" count is increased by 1
    Then I cleanup the system

  @Telephony @015_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_3
  Scenario: Testcase id = 015_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_3, description = Activate RGW Crew without Crew Demo Account pre req 3
    Given Provisioning System Mode is set to "OFF" for testcase "015_Activate_RGW_Crew_without_Crew_Demo_account_pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Russia Gateway Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1
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

  @Telephony @016_Demo_count_is_shared_with_RGW_Crew_Without_Crew_Demo_accounts
  Scenario: Testcase id = 016_Demo_count_is_shared_with_RGW_Crew_Without_Crew_Demo_accounts, description = RGW Demo count is shared by postpaid and Crew accounts
    Given Provisioning System Mode is set to "OFF" for testcase "016_Demo_count_is_shared_with_RGW_Crew_Without_Crew_Demo_accounts"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Russia_Gateway_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Russia Gateway" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1