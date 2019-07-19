Feature: This feature file tests all Status Change Scenarios for Telephony Crew Without Crew Regression

  Background:
    * I read the data from the excel "Config_Telephony_Crew_Without_Crew_Regression.xlsx" and "Status_Change" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Telephony_Crew_Without_Crew_Telephony_Crew_Activate_Account_Standard
  Scenario: Testcase id = 001_Telephony_Crew_Without_Crew_Telephony_Crew_Activate_Account_Standard, description = Activate a Standard Crew Service Plan Telephony Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Crew_Without_Crew_Telephony_Crew_Activate_Account_Standard"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Level 1 Crew" for "Service Plan"
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

  @Telephony @002_Telephony_Crew_Without_Crew_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = 002_Telephony_Crew_Without_Crew_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Crew_Without_Crew_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @003_Telephony_Crew_Without_Crew_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = 003_Telephony_Crew_Without_Crew_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Crew_Without_Crew_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @004_Telephony_Crew_Without_Crew_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = 004_Telephony_Crew_Without_Crew_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Crew_Without_Crew_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I cleanup the system

  @Telephony @005_Telephony_Crew_Without_Crew_Activate_Account_Standard_pre_req_1
  Scenario: Testcase id = 005_Telephony_Crew_Without_Crew_Activate_Account_Standard_pre_req_1, description = Activate a Standard Crew Service Plan Telephony Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Crew_Without_Crew_Activate_Account_Standard_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Level 1 Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1357" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "2648" for "Data_Optional PIN"
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

  @Telephony @006_Telephony_Crew_Without_Crew_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = 006_Telephony_Crew_Without_Crew_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Crew_Without_Crew_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @007_Telephony_Crew_Without_Crew_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = 007_Telephony_Crew_Without_Crew_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "007_Telephony_Crew_Without_Crew_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I cleanup the system