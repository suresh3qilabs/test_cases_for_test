Feature: This feature file tests all Demo Account Validation scenarios scenarios for Telephony crew Without Crew Regression

  Background:
    * I read the data from the excel "Config_Telephony_Crew_Without_Crew_Regression.xlsx" and "Demo_Validation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Activate_Telephony_Crew_Without_Crew_Demo_account_validate_Demo_count
  Scenario: Testcase id = 001_Activate_Telephony_Crew_Without_Crew_Demo_account_validate_Demo_count, description = Activate Telephony Crew Without Crew Demo account validate Demo count
    Given Provisioning System Mode is set to "OFF" for testcase "001_Activate_Telephony_Crew_Without_Crew_Demo_account_validate_Demo_count"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew" for "Service Plan"
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
#
#  @Telephony @002_Update_Telephony_Crew_Without_Crew_demo_account_by_Disabling_additional_services
#  Scenario: Testcase id = 002_Update_Telephony_Crew_Without_Crew_demo_account_by_Disabling_additional_services, description = Update the demo Crew account by Disabling additional services
#    Given Provisioning System Mode is set to "OFF" for testcase "002_Update_Telephony_Crew_Without_Crew_demo_account_by_Disabling_additional_services"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I search for the contract id
#    Then I click on the Contract ID to go to account edit page
#    Then I save the number of demo_trial plans available
#    Then I uncheck "SMS_MO_checkbox"
#    Then I uncheck "SMS_MT_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 5 seconds
#    Then I validate if "SMS_MO_checkbox" is unchecked
#    Then I validate if "SMS_MT_checkbox" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I search for the contract id
#    Then I click on the Contract ID to go to account edit page
#    Then I verify "Demo/Trial" no change in Demo count
#    Then I verify the account is updated successfully on BRM Server
#
#  @Telephony @003_Update_Telephony_Crew_Without_Crew_demo_account_by_enable_additional_services
#  Scenario: Testcase id = 003_Update_Telephony_Crew_Without_Crew_demo_account_by_enable_additional_services, description = Update the demo Crew account by enable additional services
#    Given Provisioning System Mode is set to "OFF" for testcase "003_Update_Telephony_Crew_Without_Crew_demo_account_by_enable_additional_services"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    When I select the value "Telephony" for "ServiceType"
#    When I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I check "SMS_MO_checkbox"
#    Then I check "SMS_MT_checkbox"
#    Then I capture the enabled services
#    Then I save the number of demo_trial plans available
#    Then I click on obj repo "Update_Account" button
#    Then I wait 5 seconds
#    Then I validate if "SMS_MO_checkbox" is checked
#    Then I validate if "SMS_MT_checkbox" is checked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I search for the contract id
#    Then I click on the Contract ID to go to account edit page
#    Then I verify "Demo/Trial" no change in Demo count
#    Then I verify the account is updated successfully on BRM Server
#
  @Telephony @004_Sim_Swap_on_Telephony_Crew_Without_Crew_Demo_Account
  Scenario: Testcase id = 004_Sim_Swap_on_Telephony_Crew_Without_Crew_Demo_Account, description = Sim Swap on Telephony Demo Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "004_Sim_Swap_on_Telephony_Crew_Without_Crew_Demo_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew" for "Service Plan"
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
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Telephony Crew Sim Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I verify the new Device id on BRM DB Server

#  @Telephony @005_Telephony_Crew_Without_Crew_Demo_Account_Transition_To_Standard_Telephony_Postpaid
#  Scenario: Testcase id = 005_Telephony_Crew_Without_Crew_Demo_Account_Transition_To_Standard_Telephony_Postpaid, description = Transition the Demo Crew account to any commercial plan and validate demo count in increased
#    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Crew_Without_Crew_Demo_Account_Transition_To_Standard_Telephony_Postpaid"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    When I select the value "Telephony" for "ServiceType"
#    When I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I save the number of demo_trial plans available
#    Then I select "NONE" for "Demo/Trial"
#    Then I select "Standard Crew" for "Service Plan"
#    Then I capture the enabled services
#    Then I click on obj repo "Update Account" button
#    Then I verify the account is updated successfully on BRM Server
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I verify "Demo/Trial" count is increased by 1
#
#  @Telephony @006_Telephony_Crew_Without_Crew_change_the_commercial_account_back_to_Demo_Crew_Validate_cannot_be_transitioned_to_Demo_plan
#  Scenario: Testcase id = 006_Telephony_Crew_Without_Crew_change_the_commercial_account_back_to_Demo_Crew_Validate_cannot_be_transitioned_to_Demo_plan, description = change the commercial account back to Demo Crew Validate cannot be transitioned to Demo Crew plan
#    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Crew_Without_Crew_change_the_commercial_account_back_to_Demo_Crew_Validate_cannot_be_transitioned_to_Demo_plan"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I verify "Demo/Trial" plan is not available
#
#  @Telephony @007_Activate_Telephony_Crew_Without_Crew_Demo_account_pre_req_1
#  Scenario: Testcase id = 007_Activate_Telephony_Crew_Without_Crew_Demo_account_pre_req_1, description = Activate Telephony Demo Crew account pre req 1
#    Given Provisioning System Mode is set to "OFF" for testcase "007_Activate_Telephony_Crew_Without_Crew_Demo_account_pre_req_1"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Crew" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo Crew" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I verify "Demo/Trial" count is reduced by 1
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#
#  @Telephony @008_Telephony_Crew_Without_Crew_Demo_Account_Active_to_Suspend_Validated_demo_count_not_changed
#  Scenario: Testcase id = 008_Telephony_Crew_Without_Crew_Demo_Account_Active_to_Suspend_Validated_demo_count_not_changed, description = Suspend the Demo Crew Validated demo count not changed
#    Given Provisioning System Mode is set to "OFF" for testcase "008_Telephony_Crew_Without_Crew_Demo_Account_Active_to_Suspend_Validated_demo_count_not_changed"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I save the number of demo_trial plans available
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I change the status to "SUSPENDED"
#    Then I verify the status is updated successfully on BRM Server
#    Then I verify the lifecycle state and service state on BRM DB Server
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I verify "Demo/Trial" no change in Demo count
#
#  @Telephony @009_Telephony_Crew_Without_Crew_Demo_Account_Suspend_to_Active_Validate_no_change_in_demo_count
#  Scenario: Testcase id = 009_Telephony_Crew_Without_Crew_Demo_Account_Suspend_to_Active_Validate_no_change_in_demo_count, description = Suspend to Active Demo Crew Account Validate no change in demo count
#    Given Provisioning System Mode is set to "OFF" for testcase "009_Telephony_Crew_Without_Crew_Demo_Account_Suspend_to_Active_Validate_no_change_in_demo_count"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "SUSPENDED" for "Status"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I save the number of demo_trial plans available
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "SUSPENDED" for "Status"
#    Then I click on "Search" button
#    Then I change the status to "ACTIVE"
#    Then I verify the status is updated successfully on BRM Server
#    Then I verify the lifecycle state and service state on BRM DB Server
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I verify "Demo/Trial" no change in Demo count
#
#  @Telephony @010_Telephony_Crew_Without_Crew_Demo_Account_Active_to_Deactive_Validate_demo_count_increased_after_deactivation
#  Scenario: Testcase id = 010_Telephony_Crew_Without_Crew_Demo_Account_Active_to_Deactive_Validate_demo_count_increased_after_deactivation, description = Active to Deactive Demo Crew Account Validate demo count increased after deactivation
#    Given Provisioning System Mode is set to "OFF" for testcase "010_Telephony_Crew_Without_Crew_Demo_Account_Active_to_Deactive_Validate_demo_count_increased_after_deactivation"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I save the number of demo_trial plans available
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I change the status to "DEACTIVE"
#    Then I verify the status is updated successfully on BRM Server
#    Then I verify the lifecycle state and service state on BRM DB Server
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I verify "Demo/Trial" count is increased by 1
#    Then I cleanup the system
#
#  @Telephony @011_Activate_Telephony_Crew_Without_Crew_Demo_Account_pre_req_2
#  Scenario: Testcase id = 011_Activate_Telephony_Crew_Without_Crew_Demo_Account_pre_req_2, description = Activate Telephony Demo Crew account pre req 2
#    Given Provisioning System Mode is set to "OFF" for testcase "011_Activate_Telephony_Crew_Without_Crew_Demo_Account_pre_req_2"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Crew" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo Crew" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I verify "Demo/Trial" count is reduced by 1
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#
#  @Telephony @012_Telephony_Crew_Without_Crew_Demo_Account_Active_To_Suspend_pre_req_1
#  Scenario: Testcase id = 012_Telephony_Crew_Without_Crew_Demo_Account_Active_To_Suspend_pre_req_1, description = Active To Suspend Demo Crew account pre req 1
#    Given Provisioning System Mode is set to "OFF" for testcase "012_Telephony_Crew_Without_Crew_Demo_Account_Active_To_Suspend_pre_req_1"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I save the number of demo_trial plans available
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "ACTIVE" for "Status"
#    Then I click on "Search" button
#    Then I change the status to "SUSPENDED"
#    Then I verify the status is updated successfully on BRM Server
#    Then I verify the lifecycle state and service state on BRM DB Server
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I verify "Demo/Trial" no change in Demo count
#
#  @Telephony @013_Telephony_Crew_Without_Crew_Demo_Account_Suspended_to_Deactive_Validate_count_decreased
#  Scenario: Testcase id = 013_Telephony_Crew_Without_Crew_Demo_Account_Suspended_to_Deactive_Validate_count_decreased, description = Suspended to Deactive Demo Crew account Validate count decreased
#    Given Provisioning System Mode is set to "OFF" for testcase "013_Telephony_Crew_Without_Crew_Demo_Account_Suspended_to_Deactive_Validate_count_decreased"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "SUSPENDED" for "Status"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I save the number of demo_trial plans available
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I select the value "Telephony" for "ServiceType"
#    Then I select the value "SUSPENDED" for "Status"
#    Then I click on "Search" button
#    Then I change the status to "DEACTIVE"
#    Then I verify the status is updated successfully on BRM Server
#    Then I verify the lifecycle state and service state on BRM DB Server
#    Then I click on "Search" tab
#    Then I click on "Clear" button
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I verify "Demo/Trial" count is increased by 1
#    Then I cleanup the system

  @Telephony @014_Telephony_Crew_Without_Crew_Demo_Account_Activate_pre_req_3
  Scenario: Testcase id = 014_Telephony_Crew_Without_Crew_Demo_Account_Activate_pre_req_3, description = Activate Telephony Demo Crew Account pre req 3
    Given Provisioning System Mode is set to "OFF" for testcase "014_Telephony_Crew_Without_Crew_Demo_Account_Activate_pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo Crew" for "Service Plan"
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

  @Telephony @015_Demo_count_is_shared_with_Telephony_Postpaid_accounts
  Scenario: Testcase id = 015_Demo_count_is_shared_with_Telephony_Postpaid_accounts, description = Transition the Demo Crew account to any commercial plan and validate demo count in increased
    Given Provisioning System Mode is set to "OFF" for testcase "015_Demo_count_is_shared_with_Telephony_Postpaid_accounts"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo" for "Service Plan"
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
