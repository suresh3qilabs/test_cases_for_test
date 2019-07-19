Feature: This feature file tests all Smoke Test Scenarios for ATS

  Background:
    * I read the data from the excel "Config_ATS_SmokeTest.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @ATS @TC001_ATS_Activate_Account
  Scenario: Testcase id = TC001_ATS_Activate_Account, description = Activate a ATS Account Primary
    Given Provisioning System Mode is set to "OFF" for testcase "TC001_ATS_Activate_Account"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC003_ATS_Activate_Account_pre_req_1
  Scenario: Testcase id = TC003_ATS_Activate_Account_pre_req_1, description = Activate ATS Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC003_ATS_Activate_Account_pre_req_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC004_ATS_Account_Activate_Duplicate_Reg_Tail_Number
  Scenario: Testcase id = TC004_ATS_Account_Activate_Duplicate_Reg_Tail_Number, description = Activate a  ATS Account with duplicate Reg/Tail Number
    Given Provisioning System Mode is set to "OFF" for testcase "TC004_ATS_Account_Activate_Duplicate_Reg_Tail_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "EXISTING" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Registration tail number is already in use" on screen

  @ATS @TC005_ATS_Account_Activate_Duplicate_ICAO_Number
  Scenario: Testcase id = TC005_ATS_Account_Activate_Duplicate_ICAO_Number, description = Activate a ATS Account with duplicate ICAO Number
    Given Provisioning System Mode is set to "OFF" for testcase "TC005_ATS_Account_Activate_Duplicate_ICAO_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "EXISTING" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Requested ICAO number is already in use" on screen

  @ATS @TC006_ATS_Account_Activate_AlphaNumeric_ICAO_Number
  Scenario: Testcase id = TC006_ATS_Account_Activate_AlphaNumeric_ICAO_Number, description = Activate a ATS Account with Alphanumeric ICAO Number
    Given Provisioning System Mode is set to "OFF" for testcase "TC006_ATS_Account_Activate_AlphaNumeric_ICAO_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_ALPHA_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric" on screen

  @ATS @TC007_ATS_Activate_Account_pre_req_2
  Scenario: Testcase id = TC007_ATS_Activate_Account_pre_req_2, description = Activate ATS Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC007_ATS_Activate_Account_pre_req_2"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC008_ATS_Account_Update_Airline
  Scenario: Testcase id = TC008_ATS_Account_Update_Airline, description = Update ATS Account for Airline
    Given Provisioning System Mode is set to "OFF" for testcase "TC008_ATS_Account_Update_Airline"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Air Transat" for "Airline"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @TC009_ATS_Account_Update_Reg_Tail_Number_Update
  Scenario: Testcase id = TC009_ATS_Account_Update_Reg_Tail_Number_Update, description = Update ATS Account for Reg/Tail
    Given Provisioning System Mode is set to "OFF" for testcase "TC009_ATS_Account_Update_Reg_Tail_Number_Update"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @TC010_ATS_Account_Update_ICAO_Update
  Scenario: Testcase id = TC010_ATS_Account_Update_ICAO_Update, description = Update ATS Account for ICAO
    Given Provisioning System Mode is set to "OFF" for testcase "TC010_ATS_Account_Update_ICAO_Update"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @TC011_ATS_Account_Activate_Primary_Account_pre_req_2
  Scenario: Testcase id = TC011_ATS_Account_Activate_Primary_Account_pre_req_2, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "TC011_ATS_Account_Activate_Primary_Account_pre_req_2"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC012_ATS_Update_Account_Secondary_Account_pre_req_2
  Scenario: Testcase id = TC012_ATS_Update_Account_Secondary_Account_pre_req_2, description = Update Account with secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC012_ATS_Update_Account_Secondary_Account_pre_req_2"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC013_ATS_Account_Update_IMEI_Primary
  Scenario: Testcase id = TC013_ATS_Account_Update_IMEI_Primary, description = Update IMEI in ATS primary account
    Given Provisioning System Mode is set to "OFF" for testcase "TC013_ATS_Account_Update_IMEI_Primary"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @TC014_ATS_Account_Update_IMEI_Secondary
  Scenario: Testcase id = TC014_ATS_Account_Update_IMEI_Secondary, description = Update IMEI in ATS secondary account
    Given Provisioning System Mode is set to "OFF" for testcase "TC014_ATS_Account_Update_IMEI_Secondary"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @TC015_ATS_Account_Update_Language_Primary
  Scenario: Testcase id = TC015_ATS_Account_Update_Language_Primary, description = Update Language in ATS Primary account
    Given Provisioning System Mode is set to "OFF" for testcase "TC015_ATS_Account_Update_Language_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "French" for "ATS_Language_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @TC016_ATS_Account_Update_Language_Secondary
  Scenario: Testcase id = TC016_ATS_Account_Update_Language_Secondary, description = Update Language in ATS secondary account
    Given Provisioning System Mode is set to "OFF" for testcase "TC016_ATS_Account_Update_Language_Secondary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "French" for "ATS_Language_2"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @TC017_ATS_Account_Activate_Primary_Account_pre_req_3
  Scenario: Testcase id = TC017_ATS_Account_Activate_Primary_Account_pre_req_3, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "TC017_ATS_Account_Activate_Primary_Account_pre_req_3"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC018_ATS_Update_Account_Secondary_Account_pre_req_3
  Scenario: Testcase id = TC018_ATS_Update_Account_Secondary_Account_pre_req_3, description = Update Account with secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC018_ATS_Update_Account_Secondary_Account_pre_req_3"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC019_ATS_Status_Change_Suspend_Primary_Secondary_Active
  Scenario: Testcase id = TC019_ATS_Status_Change_Suspend_Primary_Secondary_Active, description = Suspend Primary account when secondary if ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "TC019_ATS_Status_Change_Suspend_Primary_Secondary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify error message on screen for ATS status change

  @ATS @TC020_ATS_Status_Change_Deactivate_Primary_Secondary_Active
  Scenario: Testcase id = TC020_ATS_Status_Change_Deactivate_Primary_Secondary_Active, description = Deactivate Primary account when secondary if ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "TC020_ATS_Status_Change_Deactivate_Primary_Secondary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify error message on screen for ATS status change

  @ATS @TC021_ATS_Status_Change_Suspend_Secondary_Primary_Active
  Scenario: Testcase id = TC021_ATS_Status_Change_Suspend_Secondary_Primary_Active, description = Suspend Secondary account when the primary account is active
    Given Provisioning System Mode is set to "OFF" for testcase "TC021_ATS_Status_Change_Suspend_Secondary_Primary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @ATS @TC022_ATS_Status_Change_Deactivate_Primary_Secondary_Suspended
  Scenario: Testcase id = TC022_ATS_Status_Change_Deactivate_Primary_Secondary_Suspended, description = Deactivate Primary when Secondary is Suspended
    Given Provisioning System Mode is set to "OFF" for testcase "TC022_ATS_Status_Change_Deactivate_Primary_Secondary_Suspended"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify error message on screen for ATS status change

  @ATS @TC023_ATS_Status_Change_Suspend_Primary_Secondary_Suspended
  Scenario: Testcase id = TC023_ATS_Status_Change_Suspend_Primary_Secondary_Suspended, description = Suspend Primary account when the Secondary account is Suspended
    Given Provisioning System Mode is set to "OFF" for testcase "TC023_ATS_Status_Change_Suspend_Primary_Secondary_Suspended"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @ATS @TC024_ATS_Status_Change_Un_Suspend_Primary_Secondary_Suspended
  Scenario: Testcase id = TC024_ATS_Status_Change_Un_Suspend_Primary_Secondary_Suspended, description = Un_Suspend Primary account when the Secondary is suspended
    Given Provisioning System Mode is set to "OFF" for testcase "TC024_ATS_Status_Change_Un_Suspend_Primary_Secondary_Suspended"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @ATS @TC025_ATS_Status_Change_UnSuspend_Secondary_Primary_Active
  Scenario: Testcase id = TC025_ATS_Status_Change_UnSuspend_Secondary_Primary_Active, description = UnSuspend secondary when Primary Active
    Given Provisioning System Mode is set to "OFF" for testcase "TC025_ATS_Status_Change_UnSuspend_Secondary_Primary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @ATS @TC026_ATS_Status_Change_Deactivate_Secondary_Primary_Active
  Scenario: Testcase id = TC026_ATS_Status_Change_Deactivate_Secondary_Primary_Active, description = Deactivate secondary when primary if ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "TC026_ATS_Status_Change_Deactivate_Secondary_Primary_Active"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @ATS @TC027_ATS_Status_Change_Deactivate_Primary_Secondary_Deactivated
  Scenario: Testcase id = TC027_ATS_Status_Change_Deactivate_Primary_Secondary_Deactivated, description = Deactivate Primar when Secondary is Deactivated
    Given Provisioning System Mode is set to "OFF" for testcase "TC027_ATS_Status_Change_Deactivate_Primary_Secondary_Deactivated"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @ATS @TC028_ATS_Account_Activation_Demo_Plan_Primary
  Scenario: Testcase id = TC028_ATS_Account_Activation_Demo_Plan_Primary, description = Activate a ATS Account Primary with demo plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC028_ATS_Account_Activation_Demo_Plan_Primary"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC029_ATS_Account_Activation_Demo_Plan_Secondary
  Scenario: Testcase id = TC029_ATS_Account_Activation_Demo_Plan_Secondary, description = Activate a ATS Account Secondary with demo plan No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC029_ATS_Account_Activation_Demo_Plan_Secondary"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC030_ATS_Account_Activation_Provider_Reference_Primary
  Scenario: Testcase id = TC030_ATS_Account_Activation_Provider_Reference_Primary, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "TC030_ATS_Account_Activation_Provider_Reference_Primary"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I enter "Primary_Provider_Ref" for "ATS_Provider_Reference_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC031_ATS_Account_Activation_Provider_Reference_Secondary
  Scenario: Testcase id = TC031_ATS_Account_Activation_Provider_Reference_Secondary, description = Update Account with secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC031_ATS_Account_Activation_Provider_Reference_Secondary"
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
    Then I enter "Secondary_Provider_Ref" for "ATS_Provider_Reference_2"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC032_ATS_Account_Activation_Demo_Plan_Primary_RUDICS
  Scenario: Testcase id = TC032_ATS_Account_Activation_Demo_Plan_Primary_RUDICS, description = Activate a ATS Account Primary with Rudics plan, BDEV-35188
    Given Provisioning System Mode is set to "OFF" for testcase "TC032_ATS_Account_Activation_Demo_Plan_Primary_RUDICS"
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
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I check "Primary_Rudics_Checkbox"
    Then I select "TEL TEMPE1" for "Primary_Rudics"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation

  @ATS @TC033_ATS_Account_Activation_Demo_Plan_Secondary_RUDICS
  Scenario: Testcase id = TC033_ATS_Account_Activation_Demo_Plan_Secondary_RUDICS, description = Activate a ATS Account Secondary with demo plan No Unquarantine, BDEV-35188
    Given Provisioning System Mode is set to "OFF" for testcase "TC033_ATS_Account_Activation_Demo_Plan_Secondary_RUDICS"
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
    Then I select "ATS Demo" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I check "Secondary_Rudics_Checkbox"
    Then I select "TEL TEMPE1" for "Secondary_Rudics"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I validate the service order for activation