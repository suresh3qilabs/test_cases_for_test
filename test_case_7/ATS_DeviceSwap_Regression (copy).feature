Feature: This feature file tests all Device Swap for ATS Regression Test

  Background:
    * I read the data from the excel "Config_ATS_Regression.xlsx" and "Device_Swap" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @ATS  @001_ATS_Activate_Primary_Account_pre_req_1
  Scenario: Testcase id = 001_ATS_Activate_Primary_Account_pre_req_1, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "001_ATS_Activate_Primary_Account_pre_req_1"
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


  @ATS  @002_ATS_Account_Secondary_Account_pre_req_1
  Scenario: Testcase id = 002_ATS_Account_Secondary_Account_pre_req_1, description = Update Account with secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "002_ATS_Account_Secondary_Account_pre_req_1"
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


  @ATS @003_ATS_Account_Update_IMEI_Primary
  Scenario: Testcase id = 003_ATS_Account_Update_IMEI_Primary, description = Update Account for IMEI for Primary and Secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "003_ATS_Account_Update_IMEI_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
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

  @ATS @004_ATS_Account_Update_IMEI_Secondary
  Scenario: Testcase id = 004_ATS_Account_Update_IMEI_Secondary, description = Update Account for IMEI for Primary and Secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "004_ATS_Account_Update_IMEI_Secondary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
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

  @ATS @005_ATS_Account_Validate_MSISDN_MSISDN-C_Disabled_Primary
  Scenario: Testcase id = 005_ATS_Account_Validate_MSISDN_MSISDN-C_Disabled_Primary, description = validate MSISDN and MSISDN-C are disabled
    Given Provisioning System Mode is set to "OFF" for testcase "005_ATS_Account_Validate_MSISDN_MSISDN-C_Disabled_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "MSISDN_primary_disabled" is "readonly"
    Then I verify "MSISDN_C_primary_disabled" is "readonly"


  @ATS @006_ATS_Account_Validate_MSISDN_MSISDN-C_Disabled_Secondary
  Scenario: Testcase id = 006_ATS_Account_Validate_MSISDN_MSISDN-C_Disabled_Secondary, description = validate MSISDN and MSISDN-C are disabled
    Given Provisioning System Mode is set to "OFF" for testcase "006_ATS_Account_Validate_MSISDN_MSISDN-C_Disabled_Secondary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "MSISDN_secondary_disabled" is "readonly"
    Then I verify "MSISDN_C_secondary_disabled" is "readonly"


  @ATS @007_ATS_Account_Validate_sim_Disabled_Primary
  Scenario: Testcase id = 007_ATS_Account_Validate_sim_Disabled_Primary, description = validate sim is disabled
    Given Provisioning System Mode is set to "OFF" for testcase "007_ATS_Account_Validate_sim_Disabled_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "SIM_primary_disabled" is "readonly"


  @ATS @008_ATS_Account_Validate_sim_Disabled_Secondary
  Scenario: Testcase id = 008_ATS_Account_Validate_sim_Disabled_Secondary, description = validate sim is disabled
    Given Provisioning System Mode is set to "OFF" for testcase "008_ATS_Account_Validate_sim_Disabled_Secondary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "SIM_secondary_disabled" is "readonly"