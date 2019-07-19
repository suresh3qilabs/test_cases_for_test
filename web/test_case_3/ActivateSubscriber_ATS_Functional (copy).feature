Feature: This feature file tests all the scenarios from ATS_ActivateSubscriber tab on iridium_service_Functional_Activation_Update.xlsx

  Background:
    * I read the data from the excel "iridium_service_Functional_Activation_Update.xlsx" and "ATS_ActivateSubscriber" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @ATS @pre_req_Registration_Tail_Number_ATS_Activate_Account
  Scenario:Testcase id = pre_req_Registration_Tail_Number_ATS_Activate_Account, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "pre_req_Registration_Tail_Number_ATS_Activate_Account"
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

  @ATS @001_Account_Activation_with_Duplicated_Numeric_Registration_Tail_Number
  Scenario:Testcase id = 001_Account_Activation_with_Duplicated_Numeric_Registration_Tail_Number, description = Account Activation with Duplicated Numeric Registration Tail Number - No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "001_Account_Activation_with_Duplicated_Numeric_Registration_Tail_Number"
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

  @ATS @002_Account_Activation_with_Invalid_Alphanumeric_Registration_Tail_Number
  Scenario:Testcase id = 002_Account_Activation_with_Invalid_Alphanumeric_Registration_Tail_Number, description = Account Activation with Invalid Alphanumeric Registration Tail Number
    Given Provisioning System Mode is set to "OFF" for testcase "002_Account_Activation_with_Invalid_Alphanumeric_Registration_Tail_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_ALPHA_NUMERIC" for "Registration_Tail_Number" of length "10"
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

  @ATS @004_Account_Activation_with_Empty_Registration_Tail_Number_Tag
  Scenario:Testcase id = 004_Account_Activation_with_Empty_Registration_Tail_Number_Tag, description = Account Activation with Empty Registration Tail Number Tag
    Given Provisioning System Mode is set to "OFF" for testcase "004_Account_Activation_with_Empty_Registration_Tail_Number_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "EMPTY_TAG" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Registration tail number cannot be empty." on screen

  @ATS @pre_req_ICAO_ATS_Activate_Account
  Scenario:Testcase id = pre_req_ICAO_ATS_Activate_Account, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "pre_req_ICAO_ATS_Activate_Account"
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

  @ATS @006_Account_Activation_with_Duplicated_Numeric_ICAO_Identifier
  Scenario:Testcase id = 006_Account_Activation_with_Duplicated_Numeric_ICAO_Identifier, description = Account Activation with Duplicated Numeric ICAO Identifier - No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "006_Account_Activation_with_Duplicated_Numeric_ICAO_Identifier"
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

  @ATS @007_Account_Activation_with_Invalid_Alphanumeric_ICAO_Identifier
  Scenario:Testcase id = 007_Account_Activation_with_Invalid_Alphanumeric_ICAO_Identifier, description = Account Activation with Individual Plan using Another Service Type
    Given Provisioning System Mode is set to "OFF" for testcase "007_Account_Activation_with_Invalid_Alphanumeric_ICAO_Identifier"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter "STRING_ALPHA_NUMERIC" for "ICAO Identifier"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric" on screen

  @ATS @009_Account_Activation_with_Empty_ICAO_Identifier_Tag
  Scenario:Testcase id = 009_Account_Activation_with_Empty_ICAO_Identifier_Tag, description = Account Activation with Empty ICAO Identifier Tag
    Given Provisioning System Mode is set to "OFF" for testcase "009_Account_Activation_with_Empty_ICAO_Identifier_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "EMPTY_TAG" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric." on screen

  @ATS @014_Account_Activation_with_Invalid_Numeric_Primary_Channel_SIM
  Scenario: Testcase id = 014_Account_Activation_with_Invalid_Numeric_Primary_Channel_SIM, description = Account Activation with Invalid Numeric Primary Channel SIM
    Given Provisioning System Mode is set to "OFF" for testcase "014_Account_Activation_with_Invalid_Numeric_Primary_Channel_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "INVALID_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @015_Account_Activation_with_Invalid_Alphanumeric_Primary_Channel_SIM
  Scenario: Testcase id = 015_Account_Activation_with_Invalid_Alphanumeric_Primary_Channel_SIM, description = Account Activation with Invalid Alphanumeric Primary Channel SIM
    Given Provisioning System Mode is set to "OFF" for testcase "015_Account_Activation_with_Invalid_Alphanumeric_Primary_Channel_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "ALPHA_NUMERIC" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @017_Account_Activation_with_Primary_Channel_SIM_Owned_by_Other_SP
  Scenario: Testcase id = 017_Account_Activation_with_Primary_Channel_SIM_Owned_by_Other_SP, description = Account Activation with Primary Channel SIM Owned by Other SP
    Given Provisioning System Mode is set to "OFF" for testcase "017_Account_Activation_with_Primary_Channel_SIM_Owned_by_Other_SP"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @019_Account_Activation_with_Primary_Channel_SIM_with_Empty_tag
  Scenario: Testcase id = 019_Account_Activation_with_Primary_Channel_SIM_with_Empty_tag, description = Account Activation with Primary Channel SIM with Empty tag
    Given Provisioning System Mode is set to "OFF" for testcase "019_Account_Activation_with_Primary_Channel_SIM_with_Empty_tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "EMPTY_TAG" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @024_Account_Activation_with_Primary_Channel_with_Empty_ServicePlanID_Tag
  Scenario:Testcase id = 024_Account_Activation_with_Primary_Channel_with_Empty_ServicePlanID_Tag, description = Account Activation with Primary Channel with Empty ServicePlanID Tag
    Given Provisioning System Mode is set to "OFF" for testcase "024_Account_Activation_with_Primary_Channel_with_Empty_ServicePlanID_Tag"
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
    Then I select "" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I wait 5 seconds
    Then I verify "Activate Account" is not available

  @ATS @029_Account_Activation_with_Primary_Channel_invalid_MSISDN
  Scenario: Testcase id = 029_Account_Activation_with_Primary_Channel_invalid_MSISDN, description = Account Activation with Invalid Primary Channel MSISDN
    Given Provisioning System Mode is set to "OFF" for testcase "029_Account_Activation_with_Primary_Channel_invalid_MSISDN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter "INVALID_MSISDN" for "ATS_MSISDN_1"
    Then I validate the check mark for "Valid_MSISDN1_check_mark" is "invalid"

  @ATS @032_Account_Activation_with_Primary_Channel_invalid_msisdn_c
  Scenario: Testcase id = 032_Account_Activation_with_Primary_Channel_invalid_msisdn_c, description = AAccount Activation with Invalid Primary Channel MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "032_Account_Activation_with_Primary_Channel_invalid_msisdn_c"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter "INVALID_MSISDN" for "ATS_MSISDN-C_1"
    Then I validate the check mark for "Valid_MSISDN-C1_check_mark" is "invalid"

  @ATS @035_Account_Activation_with_Invalid_Numeric_Primary_Channel_IMEI
  Scenario:Testcase id = 035_Account_Activation_with_Invalid_Numeric_Primary_Channel_IMEI, description = Account Activation with Invalid Numeric Primary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "035_Account_Activation_with_Invalid_Numeric_Primary_Channel_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "INVALID_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI." on screen

  @ATS @036_Account_Activation_with_Invalid_Alphanumeric_Primary_Channel_IMEI
  Scenario:Testcase id = 036_Account_Activation_with_Invalid_Alphanumeric_Primary_Channel_IMEI, description = Account Activation with Invalid Primary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "036_Account_Activation_with_Invalid_Alphanumeric_Primary_Channel_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "ALPHA_NUMERIC" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI." on screen

  @ATS @038_Account_Activation_with_Primary_Channel_IMEI_with_Empty_tag
  Scenario:Testcase id = 038_Account_Activation_with_Primary_Channel_IMEI_with_Empty_tag, description = Account Activation with Primary Channel IMEI with Empty tag
    Given Provisioning System Mode is set to "OFF" for testcase "038_Account_Activation_with_Primary_Channel_IMEI_with_Empty_tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "EMPTY_TAG" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI." on screen

  @ATS @039_Account_Activation_with_Primary_Channel_with_Provider_Reference
  Scenario: Testcase id = 039_Account_Activation_with_Primary_Channel_with_Provider_Reference, description = Account Activation with Primary Channel with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "039_Account_Activation_with_Primary_Channel_with_Provider_Reference"
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

  @ATS @044_Account_Activation_without_Data_as_Primary_Channel_Enabled_Services
  Scenario: Testcase id = 044_Account_Activation_without_Data_as_Primary_Channel_Enabled_Services, description = Account Activation with Empty Primary Channel Services tag
    Given Provisioning System Mode is set to "OFF" for testcase "044_Account_Activation_without_Data_as_Primary_Channel_Enabled_Services"
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

  @ATS @045_Account_Activation_with_Invalid_Numeric_Secondary_Channel_SIM
  Scenario: Testcase id = 045_Account_Activation_with_Invalid_Numeric_Secondary_Channel_SIM, description = Account Activation with Invalid Numeric Secondary Channel SIM
    Given Provisioning System Mode is set to "OFF" for testcase "045_Account_Activation_with_Invalid_Numeric_Secondary_Channel_SIM"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "INVALID_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "invalid"

  @ATS @046_Account_Activation_with_Invalid_Alphanumeric_Secondary_Channel_SIM
  Scenario: Testcase id = 046_Account_Activation_with_Invalid_Alphanumeric_Secondary_Channel_SIM, description = Account Activation with Invalid Alphanumeric Secondary Channel SIM
    Given Provisioning System Mode is set to "OFF" for testcase "046_Account_Activation_with_Invalid_Alphanumeric_Secondary_Channel_SIM"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "ALPHA_NUMERIC" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "invalid"

  @ATS @048_Account_Activation_with_Secondary_Channel_SIM_Owned_by_Different_SP
  Scenario: Testcase id = 048_Account_Activation_with_Secondary_Channel_SIM_Owned_by_Different_SP, description = Account Activation with Secondary Channel SIM Owned by Different SP
    Given Provisioning System Mode is set to "OFF" for testcase "048_Account_Activation_with_Secondary_Channel_SIM_Owned_by_Different_SP"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "OTHER_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "invalid"

  @ATS @050_Account_Activation_with_Secondary_Channel_SIM_with_Empty_tag
  Scenario: Testcase id = 050_Account_Activation_with_Secondary_Channel_SIM_with_Empty_tag, description = Account Activation with Secondary Channel SIM with Empty tag - No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "050_Account_Activation_with_Secondary_Channel_SIM_with_Empty_tag"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "EMPTY_TAG" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "invalid"

  @ATS @055_Account_Activation_with_Secondary_Channel_with_Empty_ServicePlanID_Tag
  Scenario:Testcase id = 055_Account_Activation_with_Secondary_Channel_with_Empty_ServicePlanID_Tag, description = Account Activation with Secondary Channel with Empty ServicePlanID Tag
    Given Provisioning System Mode is set to "OFF" for testcase "055_Account_Activation_with_Secondary_Channel_with_Empty_ServicePlanID_Tag"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_2"
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I wait 5 seconds
    Then I verify "Activate Account" is not available

  @ATS @060_Account_Activation_with_Secondary_Channel_Invalid_MSISDN
  Scenario: Testcase id = 060_Account_Activation_with_Secondary_Channel_Invalid_MSISDN, description = Account Activation with Invalid Secondary Channel MSISDN - No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "060_Account_Activation_with_Secondary_Channel_Invalid_MSISDN"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "INVALID_MSISDN" for "ATS_MSISDN_2"
    Then I validate the check mark for "Valid_MSISDN2_check_mark" is "invalid"

  @ATS @063_Account_Activation_with_Secondary_Channel_Invalid_MSISDN_C
  Scenario: Testcase id = 063_Account_Activation_with_Secondary_Channel_Invalid_MSISDN_C, description = Account Activation with Invalid Secondary Channel MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "063_Account_Activation_with_Secondary_Channel_Invalid_MSISDN_C"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "INVALID_MSISDN" for "ATS_MSISDN-C_2"
    Then I validate the check mark for "Valid_MSISDN-C2_check_mark" is "invalid"

  @ATS @066_Account_Activation_with_Invalid_Numeric_Secondary_Channel_IMEI
  Scenario: Testcase id = 066_Account_Activation_with_Invalid_Numeric_Secondary_Channel_IMEI, description = Account Activation with Invalid Numeric Secondary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "066_Account_Activation_with_Invalid_Numeric_Secondary_Channel_IMEI"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "INVALID_IMEI" for "ATS_IMEI_2"
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "ATS" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @067_Account_Activation_with_Invalid_Alphanumeric_Secondary_Channel_IMEI
  Scenario: Testcase id = 067_Account_Activation_with_Invalid_Alphanumeric_Secondary_Channel_IMEI, description = Account Activation with Invalid Secondary Channel IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "067_Account_Activation_with_Invalid_Alphanumeric_Secondary_Channel_IMEI"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "ALPHA_NUMERIC" for "ATS_IMEI_2"
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "ATS" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @069_Account_Activation_with_Secondary_Channel_IMEI_with_Empty_tag
  Scenario: Testcase id = 069_Account_Activation_with_Secondary_Channel_IMEI_with_Empty_tag, description = Account Activation with Secondary Channel IMEI with Empty tag
    Given Provisioning System Mode is set to "OFF" for testcase "069_Account_Activation_with_Secondary_Channel_IMEI_with_Empty_tag"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "EMPTY_TAG" for "ATS_IMEI_2"
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "ATS" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @070_Account_Activation_with_Secondary_Channel_with_Provider_Reference
  Scenario: Testcase id = 070_Account_Activation_with_Secondary_Channel_with_Provider_Reference, description = Account Activation with Secondary Channel with Provider Reference, Issue: Sometimes it doesn't work for both primary and secondary activated together on SPNet
    Given Provisioning System Mode is set to "OFF" for testcase "070_Account_Activation_with_Secondary_Channel_with_Provider_Reference"
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

  @ATS @075_Account_Activation_without_Data_as_Secondary_Channel_Enabled_Services
  Scenario: Testcase id = 075_Account_Activation_without_Data_as_Secondary_Channel_Enabled_Services, description = Account Activation with Empty Primary Channel Services tag, Issue: Sometimes it doesn't work for both primary and secondary activated together on SPNet
    Given Provisioning System Mode is set to "OFF" for testcase "075_Account_Activation_without_Data_as_Secondary_Channel_Enabled_Services"
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

  @ATS @076_Account_Activation_with_Primary_Channel_SIM_used_as_Secondary_Channel_SIM
  Scenario: Testcase id = 076_Account_Activation_with_Primary_Channel_SIM_used_as_Secondary_Channel_SIM, description = Account Activation with Primary Channel SIM used as Secondary Channel SIM, Issue: Sometimes it doesn't work for both primary and secondary activated together on SPNet
    Given Provisioning System Mode is set to "OFF" for testcase "076_Account_Activation_with_Primary_Channel_SIM_used_as_Secondary_Channel_SIM"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "EXISTING_ATS_SIM1" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_2"
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "ATS" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Error in commit customer." on screen

  @ATS @077_Account_Activation_with_Primary_Channel_IMEI_used_as_Secondary_Channel_IMEI
  Scenario: Testcase id = 077_Account_Activation_with_Primary_Channel_IMEI_used_as_Secondary_Channel_IMEI, description = Account Activation with Primary Channel IMEI used as Secondary Channel IMEI, Issue: Sometimes it doesn't work for both primary and secondary activated together on SPNet
    Given Provisioning System Mode is set to "OFF" for testcase "077_Account_Activation_with_Primary_Channel_IMEI_used_as_Secondary_Channel_IMEI"
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
    Then I check "Enable_Secondary_Account"
    Then I enter "NEW_ATS_SIM" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "valid"
    Then I enter "EXISTING_ATS_IMEI1" for "ATS_IMEI_2"
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "ATS" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
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

  @ATS @078_Cancel_Account_Activation
  Scenario: Testcase id = 078_Cancel_Account_Activation, description = Account Activation with Empty Primary Channel Services tag, Issue: Sometimes it doesn't work for both primary and secondary activated together on SPNet
    Given Provisioning System Mode is set to "OFF" for testcase "078_Cancel_Account_Activation"
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
    Then I click on obj repo "Cancel" button

