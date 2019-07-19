Feature: This feature file tests all the scenarios from ATS_AccountUpdate tab on iridium_service_Functional_Activation_Update.xlsx

  Background:
    * I read the data from the excel "iridium_service_Functional_Activation_Update.xlsx" and "ATS_AccountUpdate" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @ATS @pre_req_ATS_Activate_Account
  Scenario:Testcase id = pre_req_ATS_Activate_Account, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "pre_req_ATS_Activate_Account"
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

  @ATS @001_Account_Update_with_Numeric_Registration_Tail_Number
  Scenario:Testcase id = 001_Account_Update_with_Numeric_Registration_Tail_Number, description = Account Update with Numeric Registration Tail Number
    Given Provisioning System Mode is set to "OFF" for testcase "001_Account_Update_with_Numeric_Registration_Tail_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @002_Account_Update_with_Invalid_Alphanumeric_Registration_Tail_Number
  Scenario:Testcase id = 002_Account_Update_with_Invalid_Alphanumeric_Registration_Tail_Number, description = Account Update with Invalid Alphanumeric Registration Tail Number
    Given Provisioning System Mode is set to "OFF" for testcase "002_Account_Update_with_Invalid_Alphanumeric_Registration_Tail_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "STRING_ALPHA_NUMERIC" for "Registration_Tail_Number" of length "10"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @004_Account_Update_with_Empty_Registration_Tail_Number_Tag
  Scenario:Testcase id = 004_Account_Update_with_Empty_Registration_Tail_Number_Tag, description = Account Update with Empty Registration Tail Number Tag
    Given Provisioning System Mode is set to "OFF" for testcase "004_Account_Update_with_Empty_Registration_Tail_Number_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "" for "Registration_Tail_Number" of length "10"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Registration tail number cannot be empty." on screen

  @ATS @006_Account_Update_with_Numeric_ICAO_Identifier
  Scenario:Testcase id = 006_Account_Update_with_Numeric_ICAO_Identifier, description = Account Update with Numeric ICAO Identifier
    Given Provisioning System Mode is set to "OFF" for testcase "006_Account_Update_with_Numeric_ICAO_Identifier"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @007_Account_Update_with_Invalid_Alphanumeric_ICAO_Identifier
  Scenario:Testcase id = 007_Account_Update_with_Invalid_Alphanumeric_ICAO_Identifier, description = Account Update with Invalid Alphanumeric ICAO Identifier
    Given Provisioning System Mode is set to "OFF" for testcase "007_Account_Update_with_Invalid_Alphanumeric_ICAO_Identifier"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "STRING_ALPHA_NUMERIC" for "ICAO Identifier" of length "8"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric" on screen

  @ATS @009_Account_Update_with_Empty_ICAO_Identifier_Tag
  Scenario:Testcase id = 009_Account_Update_with_Empty_ICAO_Identifier_Tag, description = Account Update with Empty ICAO Identifier Tag
    Given Provisioning System Mode is set to "OFF" for testcase "009_Account_Update_with_Empty_ICAO_Identifier_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "" for "ICAO Identifier" of length "8"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric" on screen

  @ATS @024_Account_Update_with_Primary_Channel_with_Empty_ServicePlanID_Tag
  Scenario:Testcase id = 024_Account_Update_with_Primary_Channel_with_Empty_ServicePlanID_Tag, description = Account Update with Primary Channel with Empty ServicePlanID Tag
    Given Provisioning System Mode is set to "OFF" for testcase "024_Account_Update_with_Primary_Channel_with_Empty_ServicePlanID_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "" for "ATS_Service_Plan_1"
    Then I wait 5 seconds
    Then I verify "Update Account" is not available

  @ATS @035_Account_Update_with_Invalid_Numeric_Primary_Channel_IMEI
  Scenario:Testcase id = 035_Account_Update_with_Invalid_Numeric_Primary_Channel_IMEI, description = Account Update with Invalid Numeric Primary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "035_Account_Update_with_Invalid_Numeric_Primary_Channel_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "INVALID_IMEI" for "ATS_IMEI_1"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI." on screen

  @ATS @036_Account_Update_with_Invalid_Alphanumeric_Primary_Channel_IMEI
  Scenario:Testcase id = 036_Account_Update_with_Invalid_Alphanumeric_Primary_Channel_IMEI, description = Account Update with Invalid Primary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "036_Account_Update_with_Invalid_Alphanumeric_Primary_Channel_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "ALPHA_NUMERIC" for "ATS_IMEI_1"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI." on screen

  @ATS @038_Account_Update_with_Primary_Channel_IMEI_with_Empty_tag
  Scenario:Testcase id = 038_Account_Update_with_Primary_Channel_IMEI_with_Empty_tag, description = Account Update with Primary Channel IMEI with Empty tag
    Given Provisioning System Mode is set to "OFF" for testcase "038_Account_Update_with_Primary_Channel_IMEI_with_Empty_tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "EMPTY_TAG" for "ATS_IMEI_1"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI." on screen

  @ATS @039_Account_Update_with_Primary_Channel_with_Provider_Reference
  Scenario: Testcase id = 039_Account_Update_with_Primary_Channel_with_Provider_Reference, description = Account Update with Primary Channel with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "039_Account_Update_with_Primary_Channel_with_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "TEST" for "ATS_Provider_Reference_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @044_Account_Update_without_Data_as_Primary_Channel_Enabled_Services
  Scenario: Testcase id = 044_Account_Update_without_Data_as_Primary_Channel_Enabled_Services, description = Account Update with Empty Primary Channel Services tag
    Given Provisioning System Mode is set to "OFF" for testcase "044_Account_Update_without_Data_as_Primary_Channel_Enabled_Services"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Primary_Data_checkbox"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @pre_req_1_ATS_Activate_Account
  Scenario:Testcase id = pre_req_1_ATS_Activate_Account, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "pre_req_1_ATS_Activate_Account"
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
    Then I uncheck "Primary_Data_checkbox"
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

  @ATS @pre_req_2_ATS_Activate_Account
  Scenario: Testcase id = pre_req_2_ATS_Activate_Account, description = Activate a ATS Account with secondary - No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "pre_req_2_ATS_Activate_Account"
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
    Then I uncheck "Secondary_Data_checkbox"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @055_Account_Update_with_Secondary_Channel_with_Empty_ServicePlanID_Tag
  Scenario:Testcase id = 055_Account_Update_with_Secondary_Channel_with_Empty_ServicePlanID_Tag, description = Account Update with Secondary Channel with Empty ServicePlanID Tag
    Given Provisioning System Mode is set to "OFF" for testcase "055_Account_Update_with_Secondary_Channel_with_Empty_ServicePlanID_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "" for "ATS_Service_Plan_2"
    Then I wait 5 seconds
    Then I verify "Update Account" is not available

  @ATS @066_Account_Update_with_Invalid_Numeric_Secondary_Channel_IMEI
  Scenario: Testcase id = 066_Account_Update_with_Invalid_Numeric_Secondary_Channel_IMEI, description = Account Update with Invalid Numeric Secondary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "066_Account_Update_with_Invalid_Numeric_Secondary_Channel_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "INVALID_IMEI" for "ATS_IMEI_2"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @067_Account_Update_with_Invalid_alphanumeric_Secondary_Channel_IMEI
  Scenario: Testcase id = 067_Account_Update_with_Invalid_alphanumeric_Secondary_Channel_IMEI, description = Account Update with Invalid Alphanumeric Secondary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "067_Account_Update_with_Invalid_alphanumeric_Secondary_Channel_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "ALPHA_NUMERIC" for "ATS_IMEI_2"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @069_Account_Update_with_Secondary_Channel_IMEI_with_Empty_tag
  Scenario: Testcase id = 069_Account_Update_with_Secondary_Channel_IMEI_with_Empty_tag, description = Account Update with Secondary Channel IMEI with Empty tag
    Given Provisioning System Mode is set to "OFF" for testcase "069_Account_Update_with_Secondary_Channel_IMEI_with_Empty_tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "EMPTY_TAG" for "ATS_IMEI_2"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @070_ATS_Account_Update_with_Secondary_Channel_with_Provider_Reference
  Scenario: Testcase id = 070_ATS_Account_Update_with_Secondary_Channel_with_Provider_Reference, description = Account Update with Secondary Channel with Provider Reference No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "070_ATS_Account_Update_with_Secondary_Channel_with_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "TEST" for "ATS_Provider_Reference_2"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @075_ATS_Account_Update_without_Data_as_Secondary_Channel_Enabled_Services
  Scenario: Testcase id = 075_ATS_Account_Update_without_Data_as_Secondary_Channel_Enabled_Services, description = Account Update with Empty Primary Channel Services tag
    Given Provisioning System Mode is set to "OFF" for testcase "075_ATS_Account_Update_without_Data_as_Secondary_Channel_Enabled_Services"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Secondary_Data_checkbox"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @077_ATS_Account_Update_with_Primary_Channel_IMEI_used_as_Secondary_Channel_IMEI
  Scenario: Testcase id = 077_ATS_Account_Update_with_Primary_Channel_IMEI_used_as_Secondary_Channel_IMEI, description = Account Update with Primary Channel IMEI used as Secondary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "077_ATS_Account_Update_with_Primary_Channel_IMEI_used_as_Secondary_Channel_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "EXISTING_ATS_IMEI1" for "ATS_IMEI_2"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB

  @ATS @078_Cancel_Account_Update
  Scenario: Testcase id = 078_Cancel_Account_Update, description = Cancel Account Update
    Given Provisioning System Mode is set to "OFF" for testcase "078_Cancel_Account_Update"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I capture the enabled services for ATS
    Then I click on obj repo "Cancel" button