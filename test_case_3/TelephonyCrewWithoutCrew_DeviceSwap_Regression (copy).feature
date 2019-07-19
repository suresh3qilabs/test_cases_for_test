Feature: This feature file tests all the deviceSwap scenarios for Telephony Crew Without Crew Regression

  Background:
    * I read the data from the excel "Config_Telephony_Crew_Without_Crew_Regression.xlsx" and "Device_Swap" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

#  @Telephony @Telephony_Crew_Without_Crew_Activate_Account_Standard
#  Scenario: Testcase id = Telephony_Crew_Without_Crew_Activate_Account_Standard, description = Activate a Standard Service Plan Telephony Crew Account
#    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Crew_Without_Crew_Activate_Account_Standard"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Crew" value is selected for "Sub-Market"
#    Then I select "Standard Crew" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#
#  @Telephony @Telephony_Crew_Without_Crew_SIM_Swap_On_Active_Account
#  Scenario: Testcase id = Telephony_Crew_Without_Crew_SIM_Swap_On_Active_Account, description = Sim swap on a Telephony Crew Without Crew account
#    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Crew_Without_Crew_SIM_Swap_On_Active_Account"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then click on swap device link and enter value based on "Telephony Crew Sim Query"
#    Then I verify the status of the account is not pending
#    Then I verify the status is updated followed by check on BRM Server
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I verify the new Device id on BRM DB Server
#    Then I validate the account details on network elements
#
#  @Telephony @Telephony_Crew_Without_Crew_MSISDN_AND_MSISDNC_Swap_On_Active_Account
#  Scenario: Testcase id = Telephony_Crew_Without_Crew_MSISDN_AND_MSISDNC_Swap_On_Active_Account, description = Swap MSISDN & MSISDN-C on a Telephony Crew Without Crew Account
#    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Crew_Without_Crew_MSISDN_AND_MSISDNC_Swap_On_Active_Account"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then click on swap device link and enter value based on "get_MSISDN_Tel & get_MSISDN-C_Tel"
#    Then I verify the status of the account is not pending
#    Then I verify the status is updated followed by check on BRM Server
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I verify the new Device id on BRM DB Server
#    Then I validate the account details on network elements
#
#  @Telephony @Telephony_Crew_Without_Crew_SIM_MSISDN_AND_MSISDNC_Swap_On_Active_Account
#  Scenario: Testcase id = Telephony_Crew_Without_Crew_SIM_MSISDN_AND_MSISDNC_Swap_On_Active_Account, description = Swap SIM, MSISDN & MSISDN-C on a Telephony Crew Without Crew Account
#    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Crew_Without_Crew_SIM_MSISDN_AND_MSISDNC_Swap_On_Active_Account"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then click on swap device link and enter value based on "Telephony Crew Sim Query & get_MSISDN_Tel & get_MSISDN-C_Tel"
#    Then I verify the status of the account is not pending
#    Then I verify the status is updated followed by check on BRM Server
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I verify the new Device id on BRM DB Server
#    Then I validate the account details on network elements

  @Telephony @Telephony_Crew_Without_Crew_Activate_Account_Standard_pre_req_FMP
  Scenario: Testcase id = Telephony_Crew_Without_Crew_Activate_Account_Standard_pre_req_FMP, description = Activate a Standard Service Plan Telephony Crew Without Crew FMP account Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Crew_Without_Crew_Activate_Account_Standard_pre_req_FMP"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "Follow Me Paging \(VM on Pager\)" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
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

  @Telephony @Telephony_Crew_Without_Crew_MSISDN_Swap_On_Active_FMP_Account
  Scenario: Testcase id = Telephony_Crew_Without_Crew_MSISDN_Swap_On_Active_FMP_Account, description = Swap MSISDN on a Crew Without Crew FMP account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_Crew_Without_Crew_MSISDN_Swap_On_Active_FMP_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "get_MSISDN_Tel"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements
#
#  @Telephony @SIM_MSISDN_AND_MSISDNC_Swap_Telephony_Crew_Without_Crew_Account_With_Russia_Rudics_Group
#  Scenario: Testcase id = SIM_MSISDN_AND_MSISDNC_Swap_Telephony_Crew_Without_Crew_Account_With_Russia_Rudics_Group, description =  SIM, MSISDN & MSISDN-C swap on Telephony Crew Without Crew Account with Russia Rudics Group
#    Given Provisioning System Mode is set to "OFF" for testcase "SIM_MSISDN_AND_MSISDNC_Swap_Telephony_Crew_Without_Crew_Account_With_Russia_Rudics_Group"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Crew" value is selected for "Sub-Market"
#    Then I select "Standard Crew" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_RUSSIA1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_RUSSIA1" value is selected for "RUDICS_select"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I click on the Contract ID
#    Then click on swap device link and enter value based on "Telephony Crew Sim Query & get_MSISDN_Tel & get_MSISDN-C_Tel"
#    Then I verify the status of the account is not pending
#    Then I verify the status is updated followed by check on BRM Server
#    Then I verify the new Device id on BRM DB Server
#    Then I validate the account details on network elements
#
#  @Telephony @SIM_MSISDN_AND_MSISDNC_Swap_Telephony_Crew_Without_Crew_Account_With_Tempe_Rudics_Group
#  Scenario: Testcase id = SIM_MSISDN_AND_MSISDNC_Swap_Telephony_Crew_Without_Crew_Account_With_Tempe_Rudics_Group, description = SIM, MSISDN & MSISDN-C swap Telephony Crew Account with Tempe Rudics Group
#    Given Provisioning System Mode is set to "OFF" for testcase "SIM_MSISDN_AND_MSISDNC_Swap_Telephony_Crew_Without_Crew_Account_With_Tempe_Rudics_Group"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Crew" value is selected for "Sub-Market"
#    Then I select "Standard Crew" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I click on the Contract ID
#    Then click on swap device link and enter value based on "Telephony Crew Sim Query & get_MSISDN_Tel & get_MSISDN-C_Tel"
#    Then I verify the status of the account is not pending
#    Then I verify the status is updated followed by check on BRM Server
#    Then I verify the new Device id on BRM DB Server
#    Then I validate the account details on network elements