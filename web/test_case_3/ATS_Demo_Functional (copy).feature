Feature: This feature file tests all ATS Demo Functional Account Activation & Account update scenarios

  Background:
    * I read the data from the excel "iridium_Demo_Functional.xlsx" and "ATS_Demo" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @ATS @003_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Empty_Tags
  Scenario: Testcase id = 003_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Empty_Tags, description = Account Activation with Demo Plan with Registration Tail Already in Use
    Given Provisioning System Mode is set to "OFF" for testcase "003_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Empty_Tags"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "blank" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Registration tail number cannot be empty." on screen

  @ATS @004_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Valid_Value
  Scenario: Testcase id = 004_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Valid_Value, description = Account Activation with Demo Plan with Registration Tail with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "004_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Valid_Value"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @002_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_Already_in_Use
  Scenario: Testcase id = 002_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_Already_in_Use, description = Account Activation with Demo Plan with Registration Tail Already in Use
    Given Provisioning System Mode is set to "OFF" for testcase "002_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_Already_in_Use"
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
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Registration tail number is already in use" on screen

  @ATS @006_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Invalid_Format
  Scenario: Testcase id = 006_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Invalid_Format, description = Account Activation with Demo Plan with ICAO ID with Invalid Format
    Given Provisioning System Mode is set to "OFF" for testcase "006_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Invalid_Format"
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
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric" on screen

  @ATS @008_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Empty_Tags
  Scenario: Testcase id = 008_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Empty_Tags, description = Account Activation with Demo Plan with ICAO ID with Empty Tags
    Given Provisioning System Mode is set to "OFF" for testcase "008_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Empty_Tags"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "blank" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "NEW_ATS_IMEI" for "ATS_IMEI_1"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric." on screen

  @ATS @009_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Valid_Value
  Scenario: Testcase id = 009_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Valid_Value, description = Account Activation with Demo Plan with ICAO ID Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "009_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_with_Valid_Value"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @007_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_Already_in_Use
  Scenario: Testcase id = 007_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_Already_in_Use, description = Account Activation with Demo Plan with ICAO ID Already in Use
    Given Provisioning System Mode is set to "OFF" for testcase "007_ATS_Account_Activation_with_Demo_Plan_with_ICAO_ID_Already_in_Use"
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
    Then I verify error message "Requested ICAO number is already in use." on screen

  @ATS @014_ATS_Account_Activation_with_Demo_Plan_with_Airline_with_Valid_Value
  Scenario: Testcase id = 014_ATS_Account_Activation_with_Demo_Plan_with_Airline_with_Valid_Value, description = Account Activation with Demo Plan with Airline with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "014_ATS_Account_Activation_with_Demo_Plan_with_Airline_with_Valid_Value"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @016_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Invalid_Format
  Scenario: Testcase id = 016_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Invalid_Format, description = Account Activation with Demo Plan with SIM with Invalid Format
    Given Provisioning System Mode is set to "OFF" for testcase "016_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Invalid_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "TEST" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @017_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Non_Existing_Value
  Scenario: Testcase id = 016_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Invalid_Format, description = Account Activation with Demo Plan with SIM with Invalid Format
    Given Provisioning System Mode is set to "OFF" for testcase "016_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Invalid_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "777" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @019_ATS_Account_Activation_with_Demo_Plan_with_SIM_Inactive
  Scenario: Testcase id = 019_ATS_Account_Activation_with_Demo_Plan_with_SIM_Inactive, description = Account Activation with Demo Plan with SIM Inactive
    Given Provisioning System Mode is set to "OFF" for testcase "019_ATS_Account_Activation_with_Demo_Plan_with_SIM_Inactive"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "98887898788888" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @020_ATS_Account_Activation_with_Demo_Plan_with_SIM_of_Another_Service_Type
  Scenario: Testcase id = 019_ATS_Account_Activation_with_Demo_Plan_with_SIM_Inactive, description = Account Activation with Demo Plan with SIM of Another Service_Type
    Given Provisioning System Mode is set to "OFF" for testcase "019_ATS_Account_Activation_with_Demo_Plan_with_SIM_Inactive"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "8988169214000807372" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @021_ATS_Account_Activation_with_Demo_Plan_with_SIM_of_Another_SP
  Scenario: Testcase id = 019_ATS_Account_Activation_with_Demo_Plan_with_SIM_Inactive, description = Account Activation with Demo Plan with SIM Owned by Another SP
    Given Provisioning System Mode is set to "OFF" for testcase "019_ATS_Account_Activation_with_Demo_Plan_with_SIM_Inactive"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "8988169700000409458" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS @022_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Valid_Value
  Scenario: Testcase id = 022_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Valid_Value, description = Account Activation with Demo Plan with SIM with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "022_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Valid_Value"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @028_ATS_Account_Activation_with_Demo_Plan_with_SubMarket_with_Valid_Value
  Scenario: Testcase id = 022_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Valid_Value, description = Account Activation with Demo Plan with SIM with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "022_ATS_Account_Activation_with_Demo_Plan_with_SIM_with_Valid_Value"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @034_ATS_Account_Activation_with_Demo_Plan_with_ServicePlanId_Valid
  Scenario: Testcase id = 034_ATS_Account_Activation_with_Demo_Plan_with_ServicePlanId_Valid, description = Account Activation with Demo Plan with ServicePlanId Valid
    Given Provisioning System Mode is set to "OFF" for testcase "034_ATS_Account_Activation_with_Demo_Plan_with_ServicePlanId_Valid"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @036_ATS_Account_Activation_with_Demo_Plan_with_Provider_Reference
  Scenario: Testcase id = 036_ATS_Account_Activation_with_Demo_Plan_with_Provider_Reference, description = Account Activation with Demo Plan with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "036_ATS_Account_Activation_with_Demo_Plan_with_Provider_Reference"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @037_ATS_Account_Activation_with_Demo_Plan_with_Provider_Reference_Exceeding_Limit
  Scenario: Testcase id = 037_ATS_Account_Activation_with_Demo_Plan_with_Provider_Reference_Exceeding_Limit, description = Account Activation with Demo Plan with Provider Reference Exceeding Limit
    Given Provisioning System Mode is set to "OFF" for testcase "037_ATS_Account_Activation_with_Demo_Plan_with_Provider_Reference_Exceeding_Limit"
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
    Then I enter "reference reference reference reference" for "ATS_Provider_Reference_1"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @043_ATS_Account_Activation_with_Demo_Plan_with_Default_Service_Option_with_Valid_Value
  Scenario: Testcase id = 043_ATS_Account_Activation_with_Demo_Plan_with_Default_Service_Option_with_Valid_Value, description = 043_ATS_Account_Activation_with_Demo_Plan_with_Default_Service_Option_with_Valid_Value
    Given Provisioning System Mode is set to "OFF" for testcase "043_ATS_Account_Activation_with_Demo_Plan_with_Default_Service_Option_with_Valid_Value"
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
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I verify "ATS_Demo_Trial_1" count is reduced by 1
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @044_ATS_Account_Activation_with_Demo_Plan_without_IMEI_Tag
  Scenario: Testcase id = 044_ATS_Account_Activation_with_Demo_Plan_without_IMEI_Tag, description = Account Activation with Demo Plan without IMEI tags
    Given Provisioning System Mode is set to "OFF" for testcase "044_ATS_Account_Activation_with_Demo_Plan_without_IMEI_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @045_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Invalid_Format
  Scenario: Testcase id = 045_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Invalid_Format, description = Account Activation with Demo Plan with IMEI with Invalid Format
    Given Provisioning System Mode is set to "OFF" for testcase "045_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Invalid_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "TEST" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @046_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Non_Existing_Value
  Scenario: Testcase id = 046_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Non_Existing_Value, description = Account Activation with Demo Plan with IMEI with Non Existing Value
    Given Provisioning System Mode is set to "OFF" for testcase "046_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Non_Existing_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "6666" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @048_ATS_Account_Activation_with_Demo_Plan_with_IMEI_Inactive
  Scenario: Testcase id = 048_ATS_Account_Activation_with_Demo_Plan_with_IMEI_Inactive, description = Account Activation with Demo Plan with IMEI Inactive
    Given Provisioning System Mode is set to "OFF" for testcase "048_ATS_Account_Activation_with_Demo_Plan_with_IMEI_Inactive"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "1245355557878" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @049_ATS_Account_Activation_with_Demo_Plan_with_IMEI_of_Another_Service_Type
  Scenario: Testcase id = 049_ATS_Account_Activation_with_Demo_Plan_with_IMEI_of_Another_Service_Type, description = Account Activation with Demo Plan with IMEI of Another Service_Type
    Given Provisioning System Mode is set to "OFF" for testcase "049_ATS_Account_Activation_with_Demo_Plan_with_IMEI_of_Another_Service_Type"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I enter "987458745555" for "ATS_IMEI_1"
    Then I select "Demo Plan" for "ATS_Demo_Trial_1"
    Then I save the number of demo_trial plans available
    Then I select "ATS Demo" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS @050_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Valid_Value
  Scenario: Testcase id = 050_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Valid_Value, description = Account Activation with Demo Plan with IMEI with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "050_ATS_Account_Activation_with_Demo_Plan_with_IMEI_with_Valid_Value"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @051_ATS_Account_Activation_with_Demo_Plan_with_SMS_MO_Enabled
  Scenario: Testcase id = 051_ATS_Account_Activation_with_Demo_Plan_with_SMS_MO_Enabled, description = Account Activation with Demo Plan with SMS MO Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "051_ATS_Account_Activation_with_Demo_Plan_with_SMS_MO_Enabled"
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
    Then I validate if "Primary_SMSMO_checkbox" is checked
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @052_ATS_Account_Activation_with_Demo_Plan_with_SMS_MO_Disabled_(without_Tag)
  Scenario: Testcase id = 052_ATS_Account_Activation_with_Demo_Plan_with_SMS_MO_Disabled_(without_Tag), description = Account Activation with Demo Plan with SMS MO Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "052_ATS_Account_Activation_with_Demo_Plan_with_SMS_MO_Disabled_(without_Tag)"
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
    Then I uncheck "Primary_SMSMO_checkbox"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS
    Then I validate if "Primary_SMSMO_checkbox" is unchecked
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @056_ATS_Account_Activation_with_Demo_Plan_with_SMS_MT_Enabled
  Scenario: Testcase id = 056_ATS_Account_Activation_with_Demo_Plan_with_SMS_MT_Enabled, description = Account Activation with Demo Plan with SMS MO Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "056_ATS_Account_Activation_with_Demo_Plan_with_SMS_MT_Enabled"
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
    Then I validate if "Primary_SMSMT_checkbox" is checked
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @057_ATS_Account_Activation_with_Demo_Plan_with_SMS_MT_Disabled_(without_Tag)
  Scenario: Testcase id = 057_ATS_Account_Activation_with_Demo_Plan_with_SMS_MT_Disabled_(without_Tag), description = Account Activation with Demo Plan with SMS MO Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "057_ATS_Account_Activation_with_Demo_Plan_with_SMS_MT_Disabled_(without_Tag)"
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
    Then I uncheck "Primary_SMSMT_checkbox"
    Then I capture the enabled services for ATS
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page for ATS
    Then I validate if "Primary_SMSMT_checkbox" is unchecked
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @061_ATS_Account_Activation_with_Demo_Plan_with_Voicemail_Enabled
  Scenario: Testcase id = 061_ATS_Account_Activation_with_Demo_Plan_with_Voicemail_Enabled, description = Account Activation with Demo Plan with Voicemail Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "061_ATS_Account_Activation_with_Demo_Plan_with_Voicemail_Enabled"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @062_ATS_Account_Activation_with_Demo_Plan_with_Voicemail_Disabled_(without_Tag)
  Scenario: Testcase id = 062_ATS_Account_Activation_with_Demo_Plan_with_Voicemail_Disabled_(without_Tag), description = Account Activation with Demo Plan with Voicemail Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "062_ATS_Account_Activation_with_Demo_Plan_with_Voicemail_Disabled_(without_Tag)"
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
    Then I select "No Voicemail" for "Voicemail Option Update"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @066_ATS_Account_Activation_with_Demo_Plan_with_Data_Enabled
  Scenario: Testcase id = 066_ATS_Account_Activation_with_Demo_Plan_with_Data_Enabled, description = Account Activation with Demo Plan with Data Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "066_ATS_Account_Activation_with_Demo_Plan_with_Data_Enabled"
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
    Then I validate that checkbox "Primary_Data_checkbox" is "checked"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @067_ATS_Account_Activation_with_Demo_Plan_with_Data_Disabled_(without_Tag)
  Scenario: Testcase id = 067_ATS_Account_Activation_with_Demo_Plan_with_Data_Disabled_(without_Tag), description = Account Activation with Demo Plan with Data Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "067_ATS_Account_Activation_with_Demo_Plan_with_Data_Disabled_(without_Tag)"
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
    Then  I uncheck "Primary_Data_checkbox"
    Then I validate that checkbox "Primary_Data_checkbox" is "unchecked"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @071_ATS_Account_Activation_with_Demo_Plan_with_RUDICS_Enabled
  Scenario: Testcase id = 071_ATS_Account_Activation_with_Demo_Plan_with_RUDICS_Enabled, description =Account Activation with Demo Plan with RUDICS Enabled, bug id = BDEV-35188
    Given Provisioning System Mode is set to "OFF" for testcase "071_ATS_Account_Activation_with_Demo_Plan_with_RUDICS_Enabled"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @072_ATS_Account_Activation_with_Demo_Plan_with_RUDICS_Disabled_(without_Tag)
  Scenario: Testcase id = 072_ATS_Account_Activation_with_Demo_Plan_with_RUDICS_Disabled_(without_Tag), description =Account Activation with Demo Plan with RUDICS Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "072_ATS_Account_Activation_with_Demo_Plan_with_RUDICS_Disabled_(without_Tag)"
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
    Then I uncheck "Primary_Rudics_Checkbox"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

              ####    Note:  ATS Account Update Scenarios ####

  @ATS @_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Valid_Value_pre_req1
  Scenario: Testcase id = _ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Valid_Value_pre_req1, description = Account Activation with Demo Plan with Registration Tail with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "_ATS_Account_Activation_with_Demo_Plan_with_Registration_Tail_with_Valid_Value_pre_req1"
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
    Then I verify the account is activated successfully on BRM database
    Then I verify charges for ATS Acount

  @ATS @081_ATS_Account_Update_with_Demo_Plan_by_Changing_Registration_Tail
  Scenario: Testcase id = 081_ATS_Account_Update_with_Demo_Plan_by_Changing_Registration_Tail, description = Update Account for Reg/Tail No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "081_ATS_Account_Update_with_Demo_Plan_by_Changing_Registration_Tail"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @082_ATS_Account_Update_with_Demo_Plan_by_Removing_Registration_Tail
  Scenario: Testcase id = 082_ATS_Account_Update_with_Demo_Plan_by_Removing_Registration_Tail, description = Account Update with Demo Plan by Removing Registration Tail
    Given Provisioning System Mode is set to "OFF" for testcase "082_ATS_Account_Update_with_Demo_Plan_by_Removing_Registration_Tail"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "blank" for "Registration_Tail_Number" of length "10"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Registration tail number cannot be empty." on screen

  @ATS @083_ATS_Account_Update_with_Demo_Plan_by_Changing_ICAO_ID
  Scenario: Testcase id = 083_ATS_Account_Update_with_Demo_Plan_by_Changing_ICAO_ID, description = Update Account for ICAO No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "083_ATS_Account_Update_with_Demo_Plan_by_Changing_ICAO_ID"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @084_ATS_Account_Update_with_Demo_Plan_by_Removing_ICAO_ID
  Scenario: Testcase id = 084_ATS_Account_Update_with_Demo_Plan_by_Removing_ICAO_ID, description = Account Update with Demo Plan by Removing ICAO ID
    Given Provisioning System Mode is set to "OFF" for testcase "084_ATS_Account_Update_with_Demo_Plan_by_Removing_ICAO_ID"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter random "blank" for "ICAO Identifier" of length "8"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "ICAO must be numeric." on screen

  @ATS @085_ATS_Account_Update_with_Demo_Plan_by_Changing_Airline
  Scenario: Testcase id = 085_ATS_Account_Update_with_Demo_Plan_by_Changing_Airline, description = Account Update with Demo Plan by Changing Airline
    Given Provisioning System Mode is set to "OFF" for testcase "085_ATS_Account_Update_with_Demo_Plan_by_Changing_Airline"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @087_ATS_Account_Update_with_Demo_Plan_by_Changing_IMEI
  Scenario: Testcase id = 087_ATS_Account_Update_with_Demo_Plan_by_Changing_IMEI, description = Account Update with Demo Plan by Changing IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "087_ATS_Account_Update_with_Demo_Plan_by_Changing_IMEI"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @088_ATS_Account_Update_with_Demo_Plan_by_Removing_IMEI
  Scenario: Testcase id = 088_ATS_Account_Update_with_Demo_Plan_by_Removing_IMEI, description = Account Update with Demo Plan by Removing IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "088_ATS_Account_Update_with_Demo_Plan_by_Removing_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "EMPTY_TAG" for "ATS_IMEI_1"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI." on screen

  @ATS @089_ATS_Account_Update_with_Demo_Plan_by_Adding_Provider_Reference
  Scenario: Testcase id = 089_ATS_Account_Update_with_Demo_Plan_by_Adding_Provider_Reference, description = Account Update with Demo Plan by adding Provider reference
    Given Provisioning System Mode is set to "OFF" for testcase "089_ATS_Account_Update_with_Demo_Plan_by_Adding_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "Primary_Provider_Ref" for "ATS_Provider_Reference_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @090_ATS_Account_Update_with_Demo_Plan_by_Changing_Provider_Reference
  Scenario: Testcase id = 090_ATS_Account_Update_with_Demo_Plan_by_Changing_Provider_Reference, description = Account Update with Demo Plan by Changing Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "090_ATS_Account_Update_with_Demo_Plan_by_Changing_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "Reference12345" for "ATS_Provider_Reference_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @091_ATS_Account_Update_with_Demo_Plan_by_Removing_Provider_Reference
  Scenario: Testcase id = 091_ATS_Account_Update_with_Demo_Plan_by_Removing_Provider_Reference, description = Account Update with Demo Plan by Removing Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "091_ATS_Account_Update_with_Demo_Plan_by_Removing_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "blank" for "ATS_Provider_Reference_1"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
    Then I validate "ATS_Provider_Reference_1" is empty
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @092_ATS_Account_Update_with_Demo_Plan_by_Changing_Language
  Scenario: Testcase id = 092_ATS_Account_Update_with_Demo_Plan_by_Changing_Language, description = Account Update with Demo Plan by Changing Language
    Given Provisioning System Mode is set to "OFF" for testcase "092_ATS_Account_Update_with_Demo_Plan_by_Changing_Language"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "French" for "ATS_Language_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @093_ATS_Account_Update_with_Demo_Plan_by_Disabling_SMS_MO
  Scenario: Testcase id = 093_ATS_Account_Update_with_Demo_Plan_by_Disabling_SMS_MO, description = Account Update with Demo Plan by Disabling SMS MO
    Given Provisioning System Mode is set to "OFF" for testcase "093_ATS_Account_Update_with_Demo_Plan_by_Disabling_SMS_MO"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Primary_SMSMO_checkbox"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @094_ATS_Account_Update_with_Demo_Plan_by_Enabling_SMS_MO
  Scenario: Testcase id = 094_ATS_Account_Update_with_Demo_Plan_by_Enabling_SMS_MO, description = Account Update with Demo Plan by Enabling SMS MO
    Given Provisioning System Mode is set to "OFF" for testcase "094_ATS_Account_Update_with_Demo_Plan_by_Enabling_SMS_MO"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Primary_SMSMO_checkbox"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
    Then I validate if "Primary_SMSMO_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @095_ATS_Account_Update_with_Demo_Plan_by_Disabling_SMS_MT
  Scenario: Testcase id = 095_ATS_Account_Update_with_Demo_Plan_by_Disabling_SMS_MT, description = Account Update with Demo Plan by Disabling SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "095_ATS_Account_Update_with_Demo_Plan_by_Disabling_SMS_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Primary_SMSMT_checkbox"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
    Then I validate if "Primary_SMSMT_checkbox" is unchecked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @096_ATS_Account_Update_with_Demo_Plan_by_Enabling_SMS_MT
  Scenario: Testcase id = 096_ATS_Account_Update_with_Demo_Plan_by_Enabling_SMS_MT, description = Account Update with Demo Plan by Enabling SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "096_ATS_Account_Update_with_Demo_Plan_by_Enabling_SMS_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Primary_SMSMT_checkbox"
    Then I capture the data from account activation page for ATS
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the enabled services for ATS
    Then I validate if "Primary_SMSMT_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @097_ATS_Account_Update_with_Demo_Plan_by_Disabling_Data
  Scenario: Testcase id = 097_ATS_Account_Update_with_Demo_Plan_by_Disabling_Data, description = Account Update with Demo Plan by Disabling Data
    Given Provisioning System Mode is set to "OFF" for testcase "097_ATS_Account_Update_with_Demo_Plan_by_Disabling_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Primary_Data_checkbox"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @098_ATS_Account_Update_with_Demo_Plan_by_Enabling_Data
  Scenario: Testcase id = 098_ATS_Account_Update_with_Demo_Plan_by_Enabling_Data, description = Account Update with Demo Plan by Enabling Data
    Given Provisioning System Mode is set to "OFF" for testcase "098_ATS_Account_Update_with_Demo_Plan_by_Enabling_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Primary_Data_checkbox"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

  @ATS @099_ATS_Account_Update_with_Demo_Plan_by_Changing_Voicemail_Option
  Scenario: Testcase id = 099_ATS_Account_Update_with_Demo_Plan_by_Changing_Voicemail_Option, description = Account Update with Demo Plan by Changing Voicemail Option
    Given Provisioning System Mode is set to "OFF" for testcase "099_ATS_Account_Update_with_Demo_Plan_by_Changing_Voicemail_Option"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Follow Me Paging \(VM on Pager\)" for "Voicemail Option Update"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount

#  @ATS @100_ATS_Account_Update_with_Demo_Plan_by_Enabling_RUDICS
#  Scenario: Testcase id = 100_ATS_Account_Update_with_Demo_Plan_by_Enabling_RUDICS, description = Account Update with Demo Plan by Enabling RUDICS, bug id = BDEV-35188
#    Given Provisioning System Mode is set to "OFF" for testcase "100_ATS_Account_Update_with_Demo_Plan_by_Enabling_RUDICS"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Primary_Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I check "Primary_Rudics_Checkbox"
#    Then I select "TEL_TEMPE1" for "Primary_Rudics"
#    Then I capture the data from account activation page for ATS
#    Then I click on obj repo "Update Account" button
#    Then I wait 5 seconds
#    Then I capture the enabled services for ATS
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Primary_Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for ATS Acount
#
#  @ATS @101_ATS_Account_Update_with_Demo_Plan_by_Changing_Rudics_Group
#  Scenario: Testcase id = 101_ATS_Account_Update_with_Demo_Plan_by_Changing_Rudics_Group, description = Account Update with Demo Plan by Changing Rudics Group BDEV-35188
#    Given Provisioning System Mode is set to "OFF" for testcase "101_ATS_Account_Update_with_Demo_Plan_by_Changing_Rudics_Group"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Primary_Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "TEL_RUSSIA1" for "Primary_Rudics"
#    Then I capture the data from account activation page for ATS
#    Then I click on obj repo "Update Account" button
#    Then I wait 5 seconds
#    Then I capture the enabled services for ATS
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Primary_Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for ATS Acount
#
#  @ATS @102_ATS_Account_Update_with_Demo_Plan_by_Disabling_RUDICS
#  Scenario: Testcase id = 102_ATS_Account_Update_with_Demo_Plan_by_Disabling_RUDICS, description = Account Update with Demo Plan by disabling rudics BDEV-35188
#    Given Provisioning System Mode is set to "OFF" for testcase "102_ATS_Account_Update_with_Demo_Plan_by_Disabling_RUDICS"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Primary_Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I uncheck "Primary_Rudics_Checkbox"
#    Then I capture the data from account activation page for ATS
#    Then I click on obj repo "Update Account" button
#    Then I wait 5 seconds
#    Then I click on "Search" tab
#    Then I capture the enabled services for ATS
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Primary_Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for ATS Acount

  @ATS @103_ATS_Account_Update_with_Demo_Plan_by_Changing_to_Commercial
  Scenario: Testcase id = 103_ATS_Account_Update_with_Demo_Plan_by_Changing_to_Commercial, description = Account Update with Demo Plan by Changing to Commercial
    Given Provisioning System Mode is set to "OFF" for testcase "103_ATS_Account_Update_with_Demo_Plan_by_Changing_to_Commercial"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
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
    Then I verify "Registration_Tail_Number" and "ICAO Identifier" on the prepaid DB
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for ATS Acount