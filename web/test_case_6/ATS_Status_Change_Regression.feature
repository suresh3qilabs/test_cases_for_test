Feature: This feature file tests all status  for ATS Regression Test

  Background:
    * I read the data from the excel "Config_ATS_Regression.xlsx" and "Status_Change" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab


@ATS  @001_ATS_Account_Activate_Primary_Account_pre_req_3
Scenario: Testcase id = 001_ATS_Account_Activate_Primary_Account_pre_req_3, description = Activate a ATS Account with primary
Given Provisioning System Mode is set to "OFF" for testcase "001_ATS_Account_Activate_Primary_Account_pre_req_3"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "ATS" tab
Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
Then I wait 5 seconds
Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
Then I select "Air New Zealand" for "Airline"
Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
Then I select "None" for "ATS_Demo_Trial_1"
Then I select "ATS" for "ATS_Service_Plan_1"
Then I select "English" for "ATS_Language_1"
Then I capture the enabled services for ATS
Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements

#Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

@ATS  @002_ATS_Update_Account_Secondary_Account_pre_req_3
Scenario: Testcase id = 002_ATS_Update_Account_Secondary_Account_pre_req_3, description = Update Account with secondary No Unquarantine
Given Provisioning System Mode is set to "OFF" for testcase "002_ATS_Update_Account_Secondary_Account_pre_req_3"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I click on the Contract ID
Then I check "Enable_Secondary_Account"
Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
Then I wait 5 seconds
Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_2"
Then I select "None" for "ATS_Demo_Trial_2"
Then I select "ATS" for "ATS_Service_Plan_2"
Then I select "English" for "ATS_Language_2"
Then I capture the enabled services for ATS
Then I click on obj repo "Update Account" button
Then I wait 5 seconds
Then I capture the data from account activation page for ATS
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Secondary_Contract ID" for "Search"
Then I click on "Search" button
Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
Then I verify the account is updated successfully on BRM Server
#Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

@ATS @003_ATS_Status_Change_Suspend_Primary_Secondary_Active
Scenario: Testcase id = 003_ATS_Status_Change_Suspend_Primary_Secondary_Active, description = Suspend Primary account when secondary if ACTIVE
Given Provisioning System Mode is set to "OFF" for testcase "003_ATS_Status_Change_Suspend_Primary_Secondary_Active"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "SUSPENDED"
Then I verify error message on screen for ATS status change


@ATS @004_ATS_Status_Change_Deactivate_Primary_Secondary_Active
Scenario: Testcase id = 004_ATS_Status_Change_Deactivate_Primary_Secondary_Active, description = Deactivate Primary account when secondary if ACTIVE
Given Provisioning System Mode is set to "OFF" for testcase "004_ATS_Status_Change_Deactivate_Primary_Secondary_Active"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "DEACTIVE"
Then I verify error message on screen for ATS status change


@ATS @005_ATS_Status_Change_Suspend_Secondary_Primary_Active
Scenario: Testcase id = 005_ATS_Status_Change_Suspend_Secondary_Primary_Active, description = Suspend Secondary account when the primary account is active
Given Provisioning System Mode is set to "OFF" for testcase "005_ATS_Status_Change_Suspend_Secondary_Primary_Active"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Secondary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "SUSPENDED"
Then I verify the status is updated successfully on BRM Server
Then I verify the lifecycle state and service state on BRM DB Server

@ATS @006_ATS_Status_Change_Deactivate_Primary_Secondary_Suspended
Scenario: Testcase id = 006_ATS_Status_Change_Deactivate_Primary_Secondary_Suspended, description = Deactivate Primary when Secondary is Suspended
Given Provisioning System Mode is set to "OFF" for testcase "006_ATS_Status_Change_Deactivate_Primary_Secondary_Suspended"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "DEACTIVE"
Then I verify error message on screen for ATS status change


@ATS @007_ATS_Status_Change_Suspend_Primary_Secondary_Suspended
Scenario: Testcase id = 007_ATS_Status_Change_Suspend_Primary_Secondary_Suspended, description = Suspend Primary account when the Secondary account is Suspended
Given Provisioning System Mode is set to "OFF" for testcase "007_ATS_Status_Change_Suspend_Primary_Secondary_Suspended"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "SUSPENDED"
Then I verify the status is updated successfully on BRM Server
Then I verify the lifecycle state and service state on BRM DB Server

@ATS @008_ATS_Status_Change_Un_Suspend_Primary_Secondary_Suspended
Scenario: Testcase id = 008_ATS_Status_Change_Un_Suspend_Primary_Secondary_Suspended, description = Un_Suspend Primary account when the Secondary is suspended
Given Provisioning System Mode is set to "OFF" for testcase "008_ATS_Status_Change_Un_Suspend_Primary_Secondary_Suspended"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "ACTIVE"
Then I verify the status is updated successfully on BRM Server
Then I verify the lifecycle state and service state on BRM DB Server

@ATS @009_ATS_Status_Change_UnSuspend_Secondary_Primary_Active
Scenario: Testcase id = 009_ATS_Status_Change_UnSuspend_Secondary_Primary_Active, description = UnSuspend secondary when Primary Active
Given Provisioning System Mode is set to "OFF" for testcase "009_ATS_Status_Change_UnSuspend_Secondary_Primary_Active"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Secondary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "ACTIVE"
Then I verify the status is updated successfully on BRM Server
Then I verify the lifecycle state and service state on BRM DB Server

@ATS @010_ATS_Status_Change_Deactivate_Secondary_Primary_Active
Scenario: Testcase id = 010_ATS_Status_Change_Deactivate_Secondary_Primary_Active, description = Deactivate secondary when primary if ACTIVE
Given Provisioning System Mode is set to "OFF" for testcase "010_ATS_Status_Change_Deactivate_Secondary_Primary_Active"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Secondary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "DEACTIVE"
Then I verify the status is updated successfully on BRM Server
Then I verify the lifecycle state and service state on BRM DB Server

@ATS @011_ATS_Status_Change_Deactivate_Primary_Secondary_Deactivated
Scenario: Testcase id = 011_ATS_Status_Change_Deactivate_Primary_Secondary_Deactivated, description = Deactivate Primar when Secondary is Deactivated
Given Provisioning System Mode is set to "OFF" for testcase "011_ATS_Status_Change_Deactivate_Primary_Secondary_Deactivated"
Given I am logged into Iridium with flag "Run" and SpAccount number
Then I click on "Search" tab
Then I select the value "Contract ID" for "filterType"
Then I select the value "Equals" for "filterCond"
Then I enter "Primary_Contract ID" for "Search"
Then I click on "Search" button
Then I change the status to "DEACTIVE"
Then I verify the status is updated successfully on BRM Server
Then I verify the lifecycle state and service state on BRM DB Server