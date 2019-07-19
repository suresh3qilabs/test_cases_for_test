Feature: This feature file tests all Status Change scenarios for Telephony crew with crew

  Background:
    * I read the data from the excel "Config_Tel_Crew_With_Crew_Regression.xlsx" and "Status_Change" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account, description = Activate a Telephony Crew With Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @001_Telephony_Crew_With_Crew_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = 001_Telephony_Crew_With_Crew_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Crew_With_Crew_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @002_Telephony_Crew_With_Crew_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = 002_Telephony_Crew_With_Crew_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Crew_With_Crew_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @003_Telephony_Crew_With_Crew_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = 003_Telephony_Crew_With_Crew_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Crew_With_Crew_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I cleanup the system

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account, description = Activate a Telephony Crew With Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @Pre_Req_Telephony_Crew_With_Crew_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = Pre_Req_Telephony_Crew_With_Crew_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Telephony_Crew_With_Crew_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @004_Telephony_Crew_With_Crew_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = 004_Telephony_Crew_With_Crew_SUSPENDED_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Crew_With_Crew_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I cleanup the system