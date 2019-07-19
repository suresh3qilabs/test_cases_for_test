Feature: This feature file tests all activations for ATS Regression Test

  Background:
    * I read the data from the excel "Config_ATS_Regression.xlsx" and "Account_Activation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @ATS  @001_ATS_Activate_Account
  Scenario: Testcase id = 001_ATS_Activate_Account, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "001_ATS_Activate_Account"
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
    Then I validate the service order for activation

  @ATS  @002_ATS_Account_Update_Secondary
  Scenario: Testcase id = 002_ATS_Account_Update_Secondary, description = Update Account with secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "002_ATS_Account_Update_Secondary"
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
    Then I validate the service order for activation

  @ATS  @003_ATS_Activate_Account_with_MSISDN_MSISDN_C
  Scenario: Testcase id = 003_ATS_Activate_Account_with_MSISDN_MSISDN_C, description = Activate a ATS Primary Account with MSISDN and MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "003_ATS_Activate_Account_with_MSISDN_MSISDN_C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter "ATS MSISDN1" for "ATS_MSISDN_1"
    Then I validate the check mark for "Valid_MSISDN1_check_mark" is "valid"
    Then I enter "ATS MSISDN-C1" for "ATS_MSISDN-C_1"
    Then I validate the check mark for "Valid_MSISDN-C1_check_mark" is "valid"
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

    Then I validate the service order for activation

  @ATS  @00004_ATS_Activate_Account_with_MSISDN_MSISDN_C_Secondary
  Scenario: Testcase id = 004_ATS_Activate_Account_with_MSISDN_MSISDN_C_Secondary, description = Activate a ATS Secondary Account with MSISDN and MSISDN-C
    Given Provisioning System Mode is set to "OFF" for testcase "002_ATS_Account_Update_Secondary"
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
    Then I enter "ATS MSISDN2" for "ATS_MSISDN_2"
    Then I validate the check mark for "Valid_MSISDN2_check_mark" is "valid"
    Then I enter "ATS MSISDN-C2" for "ATS_MSISDN-C_2"
    Then I validate the check mark for "Valid_MSISDN-C2_check_mark" is "valid"
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
    Then I validate the service order for activation


  @ATS  @005_ATS_Activate_Account_without_Data
  Scenario: Testcase id = 005_ATS_Activate_Account_without_Data, description = Activate a ATS Account without data
    Given Provisioning System Mode is set to "OFF" for testcase "005_ATS_Activate_Account_without_Data"
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
    Then I verify the account is updated successfully on BRM Server
    Then I validate the service order for activation

  @ATS  @006_ATS_Activate_Account_without_Data_Secondary
  Scenario: Testcase id = 006_ATS_Activate_Account_without_Data_Secondary, description = Activate a ATS Account Secondary without data No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "006_ATS_Activate_Account_without_Data_Secondary"
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
    Then I enter "Secondary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the account is updated successfully on BRM Server
    Then I validate the service order for activation

    @ATS  @007_ATS_Activate_Account_Validate_Data_Checked_By_Default_Primary
  Scenario: Testcase id = 007_ATS_Activate_Account_Validate_Data_Checked_By_Default_Primary, description = Activate a ATS Account and validate Data is checked by default for Primary Account
    Given Provisioning System Mode is set to "OFF" for testcase "007_ATS_Activate_Account_Validate_Data_Checked_By_Default_Primary"
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
    Then I validate that checkbox "Primary_Data_checkbox" is "checked"
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
      Then I validate the service order for activation


  @ATS  @008_ATS_Activate_Account_Validate_Data_Checked_By_Default_Secondary
  Scenario: Testcase id = 008_ATS_Activate_Account_Validate_Data_Checked_By_Default_Secondary, description = Activate a ATS Account without voicemail No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "008_ATS_Activate_Account_Validate_Data_Checked_By_Default_Secondary"
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
    Then I validate that checkbox "Secondary_Data_checkbox" is "checked"


    @ATS  @009_ATS_Account_Activate_AlphaNumeric_Reg_Tail_Number
  Scenario: Testcase id = 009_ATS_Account_Activate_AlphaNumeric_Reg_Tail_Number, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "009_ATS_Account_Activate_AlphaNumeric_Reg_Tail_Number"
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

      Then I validate the service order for activation


  @ATS  @010_ATS_Account_Activate_AlphaNumeric_ICAO_Number
  Scenario: Testcase id = 010_ATS_Account_Activate_AlphaNumeric_ICAO_Number, description = Activate a ATS Account with Alphanumeric ICAO Number No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "010_ATS_Account_Activate_AlphaNumeric_ICAO_Number"
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


  @ATS  @011_ATS_Account_Activate_Invalid_Sim
  Scenario: Testcase id = 011_ATS_Account_Activate_Invalid_Sim, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "011_ATS_Account_Activate_Invalid_Sim"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
   Then I enter "NEW_ATS_IMEI" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS  @012_ATS_Account_Activate_Invalid_Sim_Secondary
  Scenario: Testcase id = 012_ATS_Account_Activate_Invalid_Sim_Secondary, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "012_ATS_Account_Activate_Invalid_Sim_Secondary"
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
    Then I enter "NEW_ATS_IMEI1" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "invalid"


    @ATS  @013_ATS_Account_Activate_Other_SP_Sim
  Scenario: Testcase id = 013_ATS_Account_Activate_Other_SP_Sim, description = Activate a ATS Account with other SP Sim
    Given Provisioning System Mode is set to "OFF" for testcase "013_ATS_Account_Activate_Other_SP_Sim"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
   Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "invalid"

  @ATS  @014_ATS_Activate_Account_Pre_Req_1
  Scenario: Testcase id = 014_ATS_Activate_Account_Pre_Req_1, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "014_ATS_Activate_Account_Pre_Req_1"
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
    Then I validate the service order for activation

  @ATS  @015_ATS_Account_Activate_Other_SP_Sim_Secondary
  Scenario: Testcase id = 015_ATS_Account_Activate_Other_SP_Sim_Secondary, description = Activate a ATS Account with other SP Sim for Secondary No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "015_ATS_Account_Activate_Other_SP_Sim_Secondary"
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
    Then I validate the check mark for "Valid_SIM2_check_mark" is "invalid"

    @ATS  @016_ATS_Account_Activate_Invalid_MSISDN_Secondary
  Scenario: Testcase id = 016_ATS_Account_Activate_Invalid_MSISDN_Secondary, description = Activate a ATS Account with In valid MSISDN No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "016_ATS_Account_Activate_Invalid_MSISDN_Secondary"
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
    Then I enter "NEW_ATS_SIM" for "ATS_MSISDN_2"
    Then I validate the check mark for "Valid_MSISDN2_check_mark" is "invalid"

  @ATS  @017_ATS_Account_Activate_Invalid_MSISDN_C_Secondary
  Scenario: Testcase id = 017_ATS_Account_Activate_Invalid_MSISDN_C_Secondary, description = Activate a ATS Secondary Account with In valid MSISDN C No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "017_ATS_Account_Activate_Invalid_MSISDN_C_Secondary"
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
    Then I enter "NEW_ATS_SIM" for "ATS_MSISDN-C_2"
    Then I validate the check mark for "Valid_MSISDN-C2_check_mark" is "invalid"
#
  @ATS  @018_ATS_Account_Activate_Invalid_MSISDN
  Scenario: Testcase id = 018_ATS_Account_Activate_Invalid_MSISDN, description = Activate a ATS Account with In valid MSISDN Primary
    Given Provisioning System Mode is set to "OFF" for testcase "018_ATS_Account_Activate_Invalid_MSISDN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter "NEW_ATS_SIM" for "ATS_MSISDN_1"
    Then I validate the check mark for "Valid_MSISDN1_check_mark" is "invalid"


  @ATS  @019_ATS_Account_Activate_Invalid_MSISDN_C
  Scenario: Testcase id = 019_ATS_Account_Activate_Invalid_MSISDN_C, description = Activate a ATS Account with In valid MSISDN C Primary
    Given Provisioning System Mode is set to "OFF" for testcase "019_ATS_Account_Activate_Invalid_MSISDN_C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter "NEW_ATS_SIM" for "ATS_MSISDN-C_1"
    Then I validate the check mark for "Valid_MSISDN-C1_check_mark" is "invalid"


  @ATS  @020_ATS_Activate_Account_Pre_Req_1
  Scenario: Testcase id = 020_ATS_Activate_Account_Pre_Req_1, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "020_ATS_Activate_Account_Pre_Req_1"
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
    Then I validate the service order for activation


  @ATS  @021_ATS_Account_Activate_Duplicate_MSISDN
  Scenario: Testcase id = 021_ATS_Account_Activate_Duplicate_MSISDN, description = Activate a ATS Account with Duplicate MSISDN No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "021_ATS_Account_Activate_Duplicate_MSISDN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter "ATS MSISDN1" for "ATS_MSISDN_1"
    Then I validate the check mark for "Valid_MSISDN1_check_mark" is "invalid"


  @ATS  @022_ATS_Account_Activate_Duplicate_MSISDN_C
  Scenario: Testcase id = 022_ATS_Account_Activate_Duplicate_MSISDN_C, description = Activate a ATS Account with Duplicate MSISDN C  No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "022_ATS_Account_Activate_Duplicate_MSISDN_C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter "ATS MSISDN-C1" for "ATS_MSISDN-C_1"
    Then I validate the check mark for "Valid_MSISDN-C1_check_mark" is "invalid"


  @ATS  @023_ATS_Account_Activate_Duplicate_MSISDN_Secondary
  Scenario: Testcase id = 023_ATS_Account_Activate_Duplicate_MSISDN_Secondary, description = Activate a ATS Secondary Account with Duplicate MSISDN No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "023_ATS_Account_Activate_Duplicate_MSISDN_Secondary"
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
    Then I enter "ATS MSISDN2" for "ATS_MSISDN_2"
    Then I validate the check mark for "Valid_MSISDN2_check_mark" is "invalid"


  @ATS  @024_ATS_Account_Activate_Duplicate_MSISDN_C_Secondary
  Scenario: Testcase id = 024_ATS_Account_Activate_Duplicate_MSISDN_C_Secondary, description = Activate a ATS Secondary Account with Duplicate MSISDN C  No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "024_ATS_Account_Activate_Duplicate_MSISDN_C_Secondary"
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
    Then I enter "ATS MSISDN-C2" for "ATS_MSISDN-C_2"
    Then I validate the check mark for "Valid_MSISDN-C2_check_mark" is "invalid"

  @ATS  @025_ATS_Account_Activate_Without_IMEI
  Scenario: Testcase id = 025_ATS_Account_Activate_Without_IMEI, description = Activate a ATS Account with primary
    Given Provisioning System Mode is set to "OFF" for testcase "025_ATS_Account_Activate_Without_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "ATS" tab
    Then I enter "NEW_ATS_SIM" for "ATS_SIM1(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM1_check_mark" is "valid"
    Then I enter random "STRING_NUMERIC" for "Registration_Tail_Number" of length "10"
    Then I enter random "STRING_NUMERIC" for "ICAO Identifier" of length "8"
    Then I select "Air New Zealand" for "Airline"
    Then I select "None" for "ATS_Demo_Trial_1"
    Then I select "ATS" for "ATS_Service_Plan_1"
    Then I select "English" for "ATS_Language_1"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen


  @ATS  @026_ATS_Account_Activate_Without_IMEI_Secondary
  Scenario: Testcase id = 026_ATS_Account_Activate_Without_IMEI_Secondary, description = Activate a ATS Account without IMEI for secondary
    Given Provisioning System Mode is set to "OFF" for testcase "026_ATS_Account_Activate_Without_IMEI_Secondary"
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
    Then I select "None" for "ATS_Demo_Trial_2"
    Then I select "ATS" for "ATS_Service_Plan_2"
    Then I select "English" for "ATS_Language_2"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid IMEI" on screen

  @ATS  @027_ATS_Account_Activate_Provider_Reference
  Scenario: Testcase id = 027_ATS_Account_Activate_Provider_Reference, description = Activate a ATS Account with Provider reference
    Given Provisioning System Mode is set to "OFF" for testcase "027_ATS_Account_Activate_Provider_Reference"
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
    Then I validate the service order for activation

  @ATS  @028_ATS_Account_Activate_Provider_Reference_Secondary
  Scenario: Testcase id = 028_ATS_Account_Activate_Provider_Reference_Secondary, description = Activate a ATS Account with Provider reference for secondary  No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "028_ATS_Account_Activate_Provider_Reference_Secondary"
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
    Then I validate the service order for activation


  @ATS  @029_ATS_Activate_Account_Pre_Req_2
  Scenario: Testcase id = 029_ATS_Activate_Account_Pre_Req_2, description = Activate a ATS Account primary
   Given Provisioning System Mode is set to "OFF" for testcase "029_ATS_Activate_Account_Pre_Req_2"
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
    Then I validate the service order for activation


  @ATS  @030_ATS_Account_Activate_Primary_with_Same_SIM_with_secondary_checked
  Scenario: Testcase id = 030_ATS_Account_Activate_Primary_with_Same_SIM_with_secondary_checked, description = Activate a ATS Secondary Account with same SIM Number
    Given Provisioning System Mode is set to "OFF" for testcase "030_ATS_Account_Activate_Primary_with_Same_SIM_with_secondary_checked"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Primary_Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Enable_Secondary_Account"
    Then I enter "primary_sim" for "ATS_SIM2(ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM2_check_mark" is "invalid"


  @ATS  @031_ATS_Account_Update_Primary_with_Same_IMEI_with_secondary_checked
  Scenario: Testcase id = 031_ATS_Account_Update_Primary_with_Same_IMEI_with_secondary_checked, description = Activate a ATS Secondary Account with Same imei Number No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "031_ATS_Account_Update_Primary_with_Same_IMEI_with_secondary_checked"
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
    Then I enter "EXISTING_ATS_IMEI1" for "ATS_IMEI_2"
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
    Then I validate the service order for activation

  @ATS  @032_ATS_Activate_Account_pre_req_3
  Scenario: Testcase id = 032_ATS_Activate_Account_pre_req_3, description = Activate ATS Account
    Given Provisioning System Mode is set to "OFF" for testcase "032_ATS_Activate_Account_pre_req_3"
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
    Then I validate the service order for activation

  @ATS  @033_ATS_Account_Activate_Duplicate_Reg_Tail_Number
  Scenario: Testcase id = 033_ATS_Account_Activate_Duplicate_Reg_Tail_Number, description = Activate a  ATS Account with duplicate Reg/Tail Number No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "033_ATS_Account_Activate_Duplicate_Reg_Tail_Number"
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

  @ATS  @034_ATS_Activate_Account_pre_req_4
  Scenario: Testcase id = 034_ATS_Activate_Account_pre_req_4, description = Activate ATS Account
    Given Provisioning System Mode is set to "OFF" for testcase "034_ATS_Activate_Account_pre_req_4"
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
    Then I validate the service order for activation

  @ATS  @035_ATS_Account_Activate_Duplicate_ICAO_Number
  Scenario: Testcase id = 035_ATS_Account_Activate_Duplicate_ICAO_Number, description = Activate a ATS Account with duplicate ICAO Number No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "035_ATS_Account_Activate_Duplicate_ICAO_Number"
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
