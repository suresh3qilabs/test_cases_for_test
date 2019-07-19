Feature: This feature file tests all End to end demo validation for ATS Regression Test

  Background:
    * I read the data from the excel "Config_ATS_Regression.xlsx" and "End_To_End_Demo_Validations" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab


   @ATS  @TC001_ATS_Account_Activation_Demo_Plan_Primary
  Scenario: Testcase id = TC001_ATS_Account_Activation_Demo_Plan_Primary, description = Activate a ATS Account Primary with demo plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC001_ATS_Account_Activation_Demo_Plan_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS
    Then I verify "ATS_Demo_Trial_1" count is reduced by 1
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify charges for ATS Acount
    #Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

   @ATS  @TC002_ATS_Account_Activation_Demo_Plan_Secondary
  Scenario: Testcase id = TC002_ATS_Account_Activation_Demo_Plan_Secondary, description = Activate a ATS Account Secondary with demo plan No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC002_ATS_Account_Activation_Demo_Plan_Secondary"
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
    Then I select "Demo Plan" for "ATS_Demo_Trial_2"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS
    Then I verify "ATS_Demo_Trial_2" count is reduced by 1
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
    Then I verify charges for ATS Acount
    #Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

   @ATS @TC003_ATS_Demo_Suspend_Secondary_Primary_Active
  Scenario: Testcase id = TC003_ATS_Demo_Suspend_Secondary_Primary_Active, description = Suspend Secondary account when the primary account is active
    Given Provisioning System Mode is set to "OFF" for testcase "TC003_ATS_Demo_Suspend_Secondary_Primary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_2" no change in Demo count
    Then I verify charges for ATS Acount

   @ATS @TC004_ATS_Demo_Suspend_Primary_Secondary_Suspended
  Scenario: Testcase id = TC004_ATS_Demo_Suspend_Primary_Secondary_Suspended, description = Suspend Primary account when the Secondary account is suspended
    Given Provisioning System Mode is set to "OFF" for testcase "TC004_ATS_Demo_Suspend_Primary_Secondary_Suspended"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_1" no change in Demo count
    Then I verify charges for ATS Acount

   @ATS @TC005_ATS_Demo_Un_Suspend_Primary_Secondary_Suspended
  Scenario: Testcase id = TC005_ATS_Demo_Un_Suspend_Primary_Secondary_Suspended, description = Un_Suspend Primary account when the Secondary is suspended
    Given Provisioning System Mode is set to "OFF" for testcase "TC005_ATS_Demo_Un_Suspend_Primary_Secondary_Suspended"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_1" no change in Demo count
    Then I verify charges for ATS Acount

   @ATS @TC006_ATS_Demo_UnSuspend_Secondary_Primary_Active
  Scenario: Testcase id = TC006_ATS_Demo_UnSuspend_Secondary_Primary_Active, description = UnSuspend secondary when Primary Active
    Given Provisioning System Mode is set to "OFF" for testcase "TC006_ATS_Demo_UnSuspend_Secondary_Primary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_2" no change in Demo count
    Then I verify charges for ATS Acount

   @ATS @TC007_ATS_Demo_Deactivate_Secondary_Primary_Active
  Scenario: Testcase id = TC007_ATS_Demo_Deactivate_Secondary_Primary_Active, description = Deactivate secondary when primary if ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "TC007_ATS_Demo_Deactivate_Secondary_Primary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_2" count is increased by 1
    Then I verify charges for ATS Acount

   @ATS @TC008_ATS_Demo_Deactivate_Primary_Secondary_Deactivated
  Scenario: Testcase id = TC008_ATS_Demo_Deactivate_Primary_Secondary_Deactivated, description = Deactivate Primar when Secondary is Deactivated
    Given Provisioning System Mode is set to "OFF" for testcase "TC008_ATS_Demo_Deactivate_Primary_Secondary_Deactivated"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_1" count is increased by 1
    Then I verify charges for ATS Acount

   @ATS  @TC009_ATS_Activate_Account_Commercial_Plan
  Scenario: Testcase id = TC009_ATS_Activate_Account_Commercial_Plan, description = Activate a ATS Account with primary with commercial Plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC009_ATS_Activate_Account_Commercial_Plan"
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

   @ATS  @TC010_ATS_Account_Update_Secondary_Commercial_Plan
  Scenario: Testcase id = TC010_ATS_Account_Update_Secondary_Commercial_Plan, description = Update Account with secondary with Commercial Plan No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC010_ATS_Account_Update_Secondary_Commercial_Plan"
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

   @TC011_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan_Primary
  Scenario: Testcase id = TC011_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan_Primary, description = change the commercial account back to Demo Validate cannot be transitioned to Demo plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC011_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I select the value "ATS" for "ServiceType"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_1" plan is not available

   @TC012_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan_Secondary
  Scenario: Testcase id = TC012_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan_Secondary, description = change the commercial account back to Demo Validate cannot be transitioned to Demo plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC012_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan_Secondary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I select the value "ATS" for "ServiceType"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_2" plan is not available

   @ATS  @TC013_ATS_Account_Activation_Demo_Plan_Primary
  Scenario: Testcase id = TC013_ATS_Account_Activation_Demo_Plan_Primary, description = Activate a ATS Account Primary with demo plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC013_ATS_Account_Activation_Demo_Plan_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS
    Then I verify "ATS_Demo_Trial_1" count is reduced by 1
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify charges for ATS Acount
    #Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

   @ATS  @TC014_ATS_Account_Activation_Demo_Plan_Secondary
  Scenario: Testcase id = TC014_ATS_Account_Activation_Demo_Plan_Secondary, description = Activate a ATS Account Secondary with demo plan No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC014_ATS_Account_Activation_Demo_Plan_Secondary"
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
    Then I select "Demo Plan" for "ATS_Demo_Trial_2"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS
    Then I verify "ATS_Demo_Trial_2" count is reduced by 1
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
    Then I verify charges for ATS Acount
    #Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

   @TC015_Update_the_demo_primary_account_by_Disabling_additional_service
  Scenario: Testcase id = TC015_Update_the_demo_primary_account_by_Disabling_additional_service, description = update demo primary account by disabling additonal service
    Given Provisioning System Mode is set to "OFF" for testcase "TC015_Update_the_demo_primary_account_by_Disabling_additional_service"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I uncheck "Primary_SMSMO_checkbox"
    Then I uncheck "Primary_SMSMT_checkbox"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I validate if "Primary_SMSMO_checkbox" is unchecked
    Then I validate if "Primary_SMSMT_checkbox" is unchecked
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
    Then I verify the account is updated successfully on BRM Server
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_1" no change in Demo count
    Then I verify charges for ATS Acount

   @TC016_Update_the_demo_secondary_account_by_Disabling_additional_service
  Scenario: Testcase id = TC016_Update_the_demo_secondary_account_by_Disabling_additional_service, description = update demo secondary account by disabling additonal service
    Given Provisioning System Mode is set to "OFF" for testcase "TC016_Update_the_demo_secondary_account_by_Disabling_additional_service"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I uncheck "Secondary_SMSMO_checkbox"
    Then I uncheck "Secondary_SMSMT_checkbox"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I validate if "Secondary_SMSMO_checkbox" is unchecked
    Then I validate if "Secondary_SMSMT_checkbox" is unchecked
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
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_2" no change in Demo count
    Then I verify charges for ATS Acount

   @ATS @TC017_ATS_demo_Account_Update_IMEI_Primary
  Scenario: Testcase id = TC017_ATS_demo_Account_Update_IMEI_Primary, description = Update Account for IMEI for Primary and Secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC017_ATS_demo_Account_Update_IMEI_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Update Account" button
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
    Then I verify the account is updated successfully on BRM Server
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_1" no change in Demo count
    Then I verify charges for ATS Acount

   @ATS @TC018_ATS_demo_Account_Update_IMEI_Secondary
  Scenario: Testcase id = TC018_ATS_demo_Account_Update_IMEI_Secondary, description = Update Account for IMEI for Primary and Secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC018_ATS_demo_Account_Update_IMEI_Secondary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_2"
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
    Then I click on the Contract ID
    Then I verify "ATS_Demo_Trial_2" no change in Demo count
    Then I verify charges for ATS Acount

   @ATS @TC019_ATS_Demo_Plan_Transition_To_None_Primary
  Scenario: Testcase id = TC019_ATS_Demo_Plan_Transition_To_None_Primary, description = Transition the Demo primary account to None plan and validate demo count in increased and Validate charges
    Given Provisioning System Mode is set to "OFF" for testcase "TC019_ATS_Demo_Plan_Transition_To_None_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Update Account" button
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
    Then I verify the account is updated successfully on BRM Server
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I verify "ATS_Demo_Trial_1" count is increased by 1
    Then I verify charges for ATS Acount
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS

   @ATS @TC020_ATS_Demo_Plan_Transition_To_None_Secondary
  Scenario: Testcase id = TC020_ATS_Demo_Plan_Transition_To_None_Secondary, description = Transition the Demo primary account to None plan and validate demo count in increased and Validate charges
    Given Provisioning System Mode is set to "OFF" for testcase "TC020_ATS_Demo_Plan_Transition_To_None_Secondary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "ATS" for "ATS_Service_Plan_2"
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
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_2"
    Then I select "Demo Plan" for "ATS_Demo_Trial_2"
    Then I verify "ATS_Demo_Trial_2" count is increased by 1
    Then I verify charges for ATS Acount