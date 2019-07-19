Feature: This feature file tests all Account activation & Account update scenarios for Telephony postpaid Demo Functional

  Background:
    * I read the data from the excel "iridium_Demo_Functional.xlsx" and "tel_postpaid_demo" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

#   @Telephony @002_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Invalid_Format
#  Scenario: Testcase id = 002_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Invalid_Format, description = Account Activation with Demo Plan with SIM with Invalid Format
#    Given Provisioning System Mode is set to "OFF" for testcase "002_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Invalid_Format"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "TEST" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#   @Telephony @003_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Non_Existing_Value
#  Scenario: Testcase id = 003_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Non_Existing_Value, description = Account Activation with Demo Plan with SIM with Non Existing Value
#    Given Provisioning System Mode is set to "OFF" for testcase "003_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Non_Existing_Value"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "666" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#   @Telephony @005_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_Inactive
#  Scenario: Testcase id = 005_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_Inactive, description = Account Activation with Demo Plan with SIM Inactive
#    Given Provisioning System Mode is set to "OFF" for testcase "005_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_Inactive"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "9874874886661414144" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#   @Telephony @008_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_of_Another_SP
#  Scenario: Testcase id = 008_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_of_Another_SP, description = Account Activation with Demo Plan with SIM of Another Service_Type
#    Given Provisioning System Mode is set to "OFF" for testcase "008_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_of_Another_SP"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "8988169003000025399" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

   @Telephony @009_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Valid_Value
  Scenario: Testcase id = 009_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Valid_Value, description = Account Activation with Demo Plan with SIM with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "009_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Valid_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
#    Then I verify the account is activated successfully on BRM database
    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
    Then I verify "Demo/Trial" count is reduced by 1
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
    Then I verify charges for Telephony Demo Account

   @Telephony @015_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SubMarket_with_Valid_Value
  Scenario: Testcase id = 015_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SubMarket_with_Valid_Value, description = Account Activation with Demo Plan with SubMarket with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "015_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SubMarket_with_Valid_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
    #Then I verify the account is activated successfully on BRM database
    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
    Then I verify "Demo/Trial" count is reduced by 1
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
    Then I verify charges for Telephony Demo Account

#   @Telephony @021_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_ServicePlanId_Valid
#  Scenario: Testcase id = 021_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_ServicePlanId_Valid, description = Account Activation with Demo Plan with ServicePlanId Valid
#    Given Provisioning System Mode is set to "OFF" for testcase "021_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_ServicePlanId_Valid"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 15 seconds
#    Then I capture the data from account activation page
##    Then I verify the account is activated successfully on BRM database
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Demo/Trial" count is reduced by 1
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
#    Then I verify charges for Telephony Demo Account
#
##  @Telephony @022_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_ServicePlanId_Valid_with_0_Counts
##  Scenario: Testcase id = 022_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_ServicePlanId_Valid_with_0_Counts, description = Account Activation with Demo Plan with ServicePlanId Valid with 0 Counts
##    Given Provisioning System Mode is set to "OFF" for testcase "022_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_ServicePlanId_Valid_with_0_Counts"
##    Given I am logged into Iridium with flag "Run" and SpAccount number
##    Then I click on "Telephony" tab
##    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
##    Then I wait 5 seconds
##    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
##    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
##    Then I select "Demo Plan" for "Demo/Trial"
##    Then I save the number of demo_trial plans available
##    Then I select "Demo" for "Service Plan"
##    Then I select "ENABLED" for "Voice"
##    Then I enter "1234" for "Voice_Optional PIN"
##    Then I select "ENABLED" for "Data"
##    Then I enter "5678" for "Data_Optional PIN"
##    Then I validate if Enabled Services section is expanded
##    Then I check "RUDICS_checkbox"
##    Then I select "TEL_TEMPE1" for "RUDICS_select"
##    Then I capture the enabled services
##    Then I click on obj repo "Activate Account" button
##    Then I wait 15 seconds
##    Then I capture the data from account activation page
##    Then I verify the account is activated successfully on BRM database
##    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
##    Then I verify "Demo/Trial" count is reduced by 1
##    Then I click on "Search" tab
##    Then I select the value "Contract ID" for "filterType"
##    Then I select the value "Equals" for "filterCond"
##    Then I enter "Contract ID" for "Search"
##    Then I click on "Search" button
##    Then I check status and cleanup on Network Elements if activation went to Error
##    Then I validate the device IDs in DB
##    Then I validate products purchased and enabled services
##    Then I validate two stage PINs and Voicemail option
##    Then I validate the account details on network elements
##    Then I validate the service order for activation
##     Then I verify charges for Telephony Demo Account
#
#   @Telephony @023_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Provider_Reference
#  Scenario: Testcase id = 023_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Provider_Reference, description = Account Activation with Demo Plan with Provider Reference
#    Given Provisioning System Mode is set to "OFF" for testcase "023_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Provider_Reference"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I enter "Complex!1234567" for "Provider Reference"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 15 seconds
#    Then I capture the data from account activation page
#    Then I verify the account is activated successfully on BRM database
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Demo/Trial" count is reduced by 1
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
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @024_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Provider_Reference_Exceeding_Limit
#  Scenario: Testcase id = 024_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Provider_Reference_Exceeding_Limit, description = Account Activation with Demo Plan with Provider Reference Exceeding Limit
#    Given Provisioning System Mode is set to "OFF" for testcase "024_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Provider_Reference_Exceeding_Limit"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I enter "reference reference reference reference reference reference reference reference reference reference" for "Provider Reference"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 15 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify the account is activated successfully on BRM database
#    Then I verify "Demo/Trial" count is reduced by 1
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
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @030_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Default_Service_Option_with_Valid_Value
#  Scenario: Testcase id = 030_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Default_Service_Option_with_Valid_Value, description = Account Activation with Demo Plan with Default Service Option Valid
#    Given Provisioning System Mode is set to "OFF" for testcase "030_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Default_Service_Option_with_Valid_Value"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 15 seconds
#    Then I capture the data from account activation page
#    Then I verify the account is activated successfully on BRM database
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Demo/Trial" count is reduced by 1
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
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @031_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Call_Forwarding_Enabled
#  Scenario: Testcase id = 031_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Call_Forwarding_Enabled, description = Account Activation with Demo Plan with Call Forwarding Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "031_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Call_Forwarding_Enabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I check "Call_Forwarding_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "Call_Forwarding_checkbox" is checked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @032_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Call_Forwarding_Disabled_(without_Tag)
#  Scenario: Testcase id = 032_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Call_Forwarding_Disabled_(without_Tag), description = Account Activation with Demo Plan with Call Forwarding Disabled (without Tag)
#    Given Provisioning System Mode is set to "OFF" for testcase "032_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Call_Forwarding_Disabled_(without_Tag)"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I select "No Voicemail" for "Voicemail Option"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I uncheck "Call_Forwarding_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "Call_Forwarding_checkbox" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @036_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Local_Number_Enabled_and_Local_Country_with_Valid_Value
#  Scenario: Testcase id = 036_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Local_Number_Enabled_and_Local_Country_with_Valid_Value, description = Account Activation with Demo Plan with Local Number Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "036_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Local_Number_Enabled_and_Local_Country_with_Valid_Value"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I check "Local_Number_checkbox"
#    Then I select "US" for "Local_Number_Country"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "Local_Number_checkbox" is checked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @037_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Local_Number_Disabled_(without_Tag)
#  Scenario: Testcase id = 037_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Local_Number_Disabled_(without_Tag), description = Account Activation with Demo Plan with Local Number Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "037_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Local_Number_Disabled_(without_Tag)"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I uncheck "Local_Number_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "Local_Number_checkbox" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @045_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MO_Enabled
#  Scenario: Testcase id = 045_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MO_Enabled, description = Account Activation with Demo Plan with SMS MO Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "045_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MO_Enabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I check "SMS_MO_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "SMS_MO_checkbox" is checked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @046_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MO_Disabled_(without_Tag)
#  Scenario: Testcase id = 046_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MO_Disabled_(without_Tag), description = Account Activation with Demo Plan with SMS MO Disabled (without Tag)
#    Given Provisioning System Mode is set to "OFF" for testcase "046_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MO_Disabled_(without_Tag)"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I uncheck "SMS_MO_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "SMS_MO_checkbox" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @050_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MT_Enabled
#  Scenario: Testcase id = 050_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MT_Enabled, description = Account Activation with Demo Plan with SMS MT Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "050_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MT_Enabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I check "SMS_MT_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "SMS_MT_checkbox" is checked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @051_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MT_Disabled_(without_Tag)
#  Scenario: Testcase id = 051_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MT_Disabled_(without_Tag), description = Account Activation with Demo Plan with SMS MT Disabled (without Tag)
#    Given Provisioning System Mode is set to "OFF" for testcase "051_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SMS_MT_Disabled_(without_Tag)"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I uncheck "SMS_MT_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if "SMS_MT_checkbox" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @055_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Voicemail_Enabled
#  Scenario: Testcase id = 055_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Voicemail_Enabled, description = Account Activation with Demo Plan with Voicemail Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "055_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Voicemail_Enabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I select "Voicemail" for "Voicemail Option"
#    Then I validate if "Call_Forwarding_checkbox" is checked
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
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @056_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Voicemail_Disabled_(without_Tag)
#  Scenario: Testcase id = 056_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Voicemail_Disabled_(without_Tag), description = Account Activation with Demo Plan with Voicemail Disabled (without_Tag)
#    Given Provisioning System Mode is set to "OFF" for testcase "056_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Voicemail_Disabled_(without_Tag)"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I select "No Voicemail" for "Voicemail Option"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "No Voicemail" value is selected for "Voicemail Option"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @060_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Data_Enabled
#  Scenario: Testcase id = 060_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Data_Enabled, description = Account Activation with Demo Plan with Data Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "060_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Data_Enabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @061_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Data_Disabled_(without_Tag)
#  Scenario: Testcase id = 061_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Data_Disabled_(without_Tag), description = Account Activation with Demo Plan with Data Disabled (without Tag)
#    Given Provisioning System Mode is set to "OFF" for testcase "061_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_Data_Disabled_(without_Tag)"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I uncheck "Data_(BS25,BS26)_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I validate if "Data_(BS25,BS26)_checkbox" is unchecked
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @065_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_RUDICS_Enabled
#  Scenario: Testcase id = 065_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_RUDICS_Enabled, description = Account Activation with Demo Plan with RUDICS Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "065_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_RUDICS_Enabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_RUSSIA1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_RUSSIA1" value is selected for "RUDICS_select"
#    Then I validate if "RUDICS_checkbox" is checked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @066_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_RUDICS_Disabled_(without_Tag)
#  Scenario: Testcase id = 066_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_RUDICS_Disabled_(without_Tag), description = Account Activation with Demo Plan with RUDICS Disabled (without Tag)
#    Given Provisioning System Mode is set to "OFF" for testcase "066_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_RUDICS_Disabled_(without_Tag)"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @074_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN
#  Scenario: Testcase id = 074_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled No PIN and Data Enabled No PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "074_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @075_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN
#  Scenario: Testcase id = 075_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled No PIN and Data Enabled with PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "075_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @076_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled
#  Scenario: Testcase id = 076_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled, description = Account Activation with Demo Plan with 2 Stage Voice Enabled No PIN and Data Disabled
#    Given Provisioning System Mode is set to "OFF" for testcase "076_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I enter "" for "Voice_Optional PIN"
#    Then I select "DISABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "disabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I verify "Data_Optional PIN" is "disabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @077_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN
#  Scenario: Testcase id = 077_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled with PIN and Data Enabled No PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "077_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I select "ENABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I enter "" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @078_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN
#  Scenario: Testcase id = 078_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled with PIN and Data Enabled with PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "078_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @079_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled
#  Scenario: Testcase id = 079_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled, description = Account Activation with Demo Plan with 2 Stage Voice Enabled with PIN and Data Disabled
#    Given Provisioning System Mode is set to "OFF" for testcase "079_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I select "DISABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "disabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "enabled"
#    Then I verify "Data_Optional PIN" is "disabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @080_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN
#  Scenario: Testcase id = 080_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Disabled and Data Enabled No PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "080_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "DISABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "disabled"
#    Then I select "ENABLED" for "Data"
#    Then I enter "" for "Data_Optional PIN"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "disabled"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @081_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN
#  Scenario: Testcase id = 081_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Disabled and Data Enabled with PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "081_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "DISABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "disabled"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "disabled"
#    Then I verify "Data_Optional PIN" is "enabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @082_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled
#  Scenario: Testcase id = 082_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled, description = Account Activation with Demo Plan with 2 Stage Voice Disabled and Data Disabled
#    Given Provisioning System Mode is set to "OFF" for testcase "082_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "DISABLED" for "Voice"
#    Then I verify "Voice_Optional PIN" is "disabled"
#    Then I select "DISABLED" for "Data"
#    Then I verify "Data_Optional PIN" is "disabled"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I verify "Voice_Optional PIN" is "disabled"
#    Then I verify "Data_Optional PIN" is "disabled"
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I verify the account is activated successfully on BRM database
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate two stage PINs and Voicemail option
#    Then I validate the account details on network elements
#    Then I validate the service order for activation
#    Then I verify charges for Telephony Demo Account
#
#          # Note: Tel Demo Functional - Account Update Scenarios
#
#   @Telephony @_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Valid_Value_pre_req1
#  Scenario: Testcase id = _Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Valid_Value_pre_req1, description = Account Activation with Demo Plan with SIM with Valid Value
#    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Activation_with_Telephony_Postpaid_Demo_Plan_with_SIM_with_Valid_Value_pre_req1"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I select "Voicemail" for "Voicemail Option"
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
#    Then I validate "Voicemail" value is selected for "Voicemail Option"
##    Then I verify the account is activated successfully on BRM database
#    Then I verify "Demo/Trial" count is reduced by 1
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
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @261_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Provider_Reference
#  Scenario: Testcase id = 261_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Provider_Reference, description = Account Update with Demo Plan by Adding Provider Reference
#    Given Provisioning System Mode is set to "OFF" for testcase "261_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Provider_Reference"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I enter "reference" for "Provider Reference"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "reference" value is selected for "Provider Reference"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @262_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Provider_Reference
#  Scenario: Testcase id = 262_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Provider_Reference, description =Account Update with Demo Plan by Changing Provider Reference
#    Given Provisioning System Mode is set to "OFF" for testcase "262_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Provider_Reference"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I enter "Complex!123456" for "Provider Reference"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "Complex!123456" value is selected for "Provider Reference"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @263_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Provider_Reference
#  Scenario: Testcase id = 263_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Provider_Reference, description = Account Update with Demo Plan by Removing Provider Reference
#    Given Provisioning System Mode is set to "OFF" for testcase "263_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Provider_Reference"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I enter "blank" for "Provider Reference"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "Provider Reference" is empty
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @264_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Language
#  Scenario: Testcase id = 264_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Language, description = Account Update with Demo Plan by Changing Language
#    Given Provisioning System Mode is set to "OFF" for testcase "264_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Language"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "French" for "Language"
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "French" value is selected for "Language"
#
#   @Telephony @265_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Call_Forwarding
#  Scenario: Testcase id = 265_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Call_Forwarding, description = Account Update with Demo Plan by Disabling Call Forwarding
#    Given Provisioning System Mode is set to "OFF" for testcase "265_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Call_Forwarding"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "No Voicemail" for "Voicemail Option"
#    Then I uncheck "Call_Forwarding_checkbox"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "Call_Forwarding_checkbox" is unchecked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @266_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Call_Forwarding
#  Scenario: Testcase id = 266_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Call_Forwarding, description = Account Update with Demo Plan by Enabling Call Forwarding
#    Given Provisioning System Mode is set to "OFF" for testcase "266_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Call_Forwarding"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "Voicemail" for "Voicemail Option"
#    Then I check "Call_Forwarding_checkbox"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "Call_Forwarding_checkbox" is checked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @267_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Local_Number
#  Scenario: Testcase id = 267_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Local_Number, description = Account Update with Demo Plan by Enabling Local Number
#    Given Provisioning System Mode is set to "OFF" for testcase "267_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Local_Number"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I check "Local_Number_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I capture the data from account activation page
##    Then I verify the account is activated successfully on BRM database
#    Then I validate if "Local_Number_checkbox" is checked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @268_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Local_Number
#  Scenario: Testcase id = 268_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Local_Number, description = Account Update with Demo Plan by Disabling Local Number
#    Given Provisioning System Mode is set to "OFF" for testcase "268_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Local_Number"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I uncheck "Local_Number_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I capture the data from account activation page
##    Then I verify the account is activated successfully on BRM database
#    Then I validate if "Local_Number_checkbox" is unchecked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @269_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_SMS_MO
#  Scenario: Testcase id = 269_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_SMS_MO, description = Account Update with Demo Plan by Disabling SMS MO
#    Given Provisioning System Mode is set to "OFF" for testcase "269_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_SMS_MO"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I uncheck "SMS_MO_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "SMS_MO_checkbox" is unchecked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @270_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_SMS_MO
#  Scenario: Testcase id = 270_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_SMS_MO, description = Account Update with Demo Plan by Enabling SMS MO
#    Given Provisioning System Mode is set to "OFF" for testcase "270_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_SMS_MO"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I check "SMS_MO_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "SMS_MO_checkbox" is checked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @271_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_SMS_MT
#  Scenario: Testcase id = 271_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_SMS_MT, description = Account Update with Demo Plan by Disabling SMS MT
#    Given Provisioning System Mode is set to "OFF" for testcase "271_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_SMS_MT"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I uncheck "SMS_MT_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "SMS_MT_checkbox" is unchecked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @272_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_SMS_MT
#  Scenario: Testcase id = 272_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_SMS_MT, description = Account Update with Demo Plan by Disabling SMS MT
#    Given Provisioning System Mode is set to "OFF" for testcase "272_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_SMS_MT"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I check "SMS_MT_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "SMS_MT_checkbox" is checked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @273_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Data
#  Scenario: Testcase id = 273_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Data, description = Account Update with Demo Plan by Enabling Data
#    Given Provisioning System Mode is set to "OFF" for testcase "273_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Data"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I uncheck "Data_(BS25,BS26)_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "Data_(BS25,BS26)_checkbox" is unchecked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @274_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Data
#  Scenario: Testcase id = 274_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Data, description = Account Update with Demo Plan by Enabling Data
#    Given Provisioning System Mode is set to "OFF" for testcase "274_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Data"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I check "Data_(BS25,BS26)_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "Data_(BS25,BS26)_checkbox" is checked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @275_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Voicemail_Option
#  Scenario: Testcase id = 275_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Voicemail_Option, description = Account Update with Demo Plan by Changing Voicemail Option
#    Given Provisioning System Mode is set to "OFF" for testcase "275_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Voicemail_Option"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "No Voicemail" for "Voicemail Option"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "Call_Forwarding_checkbox" is checked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @276_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_RUDICS
#  Scenario: Testcase id = 276_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_RUDICS, description = Account Update with Demo Plan by Enabling RUDICS
#    Given Provisioning System Mode is set to "OFF" for testcase "276_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_RUDICS"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "Voicemail" for "Voicemail Option"
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "RUDICS_checkbox" is checked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @277_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Rudics_Group_Tempe_to_Russia
#  Scenario: Testcase id = 277_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Rudics_Group_Tempe_to_Russia, description = Account Update with Demo Plan by Changing Rudics Group Tempe to Russia
#    Given Provisioning System Mode is set to "OFF" for testcase "277_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Rudics_Group_Tempe_to_Russia"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "TEL_RUSSIA1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @278_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_RUDICS
#  Scenario: Testcase id = 278_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_RUDICS, description = Account Update with Demo Plan by Disabling RUDICS
#    Given Provisioning System Mode is set to "OFF" for testcase "278_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_RUDICS"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I uncheck "RUDICS_checkbox"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate if "RUDICS_checkbox" is unchecked
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @279_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Two_Stage_Voice
#  Scenario: Testcase id = 279_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Two_Stage_Voice, description = Account Update with Demo Plan by Enabling Two Stage Voice
#    Given Provisioning System Mode is set to "OFF" for testcase "279_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Two_Stage_Voice"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "ENABLED" for "Voice"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "ENABLED" value is selected for "Voice"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @280_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Two_Stage_Voice
#  Scenario: Testcase id = 280_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Two_Stage_Voice, description = Account Update with Demo Plan by Disabling Two Stage Voice
#    Given Provisioning System Mode is set to "OFF" for testcase "280_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Two_Stage_Voice"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "DISABLED" for "Voice"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "DISABLED" value is selected for "Voice"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @281_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Two_Stage_Voice_PIN
#  Scenario: Testcase id = 281_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Two_Stage_Voice_PIN, description = Account Update with Demo Plan by Enabling Two Stage Voice
#    Given Provisioning System Mode is set to "OFF" for testcase "281_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Two_Stage_Voice_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "ENABLED" value is selected for "Voice"
#    Then I validate "1234" value is selected for "Voice_Optional PIN"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @282_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Two_Stage_Voice_PIN
#  Scenario: Testcase id = 282_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Two_Stage_Voice_PIN, description = Account Update with Demo Plan by Changing Two Stage Voice PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "282_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Two_Stage_Voice_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I enter "2468" for "Voice_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "2468" value is selected for "Voice_Optional PIN"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @283_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Two_Stage_Voice_PIN
#  Scenario: Testcase id = 283_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Two_Stage_Voice_PIN, description = Account Update with Demo Plan by Removing Two Stage Voice PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "283_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Two_Stage_Voice_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I enter "" for "Voice_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @284_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Two_Stage_Data
#  Scenario: Testcase id = 284_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Two_Stage_Data, description = Account Update with Demo Plan by Enabling Two Stage Data
#    Given Provisioning System Mode is set to "OFF" for testcase "284_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Enabling_Two_Stage_Data"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "DISABLED" for "Voice"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "DISABLED" value is selected for "Voice"
#    Then I validate "ENABLED" value is selected for "Data"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @285_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Two_Stage_Data
#  Scenario: Testcase id = 285_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Two_Stage_Data, description = Account Update with Demo Plan by Disabling Two Stage Data
#    Given Provisioning System Mode is set to "OFF" for testcase "285_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Disabling_Two_Stage_Data"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "DISABLED" for "Data"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "DISABLED" value is selected for "Data"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @286_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Two_Stage_Data_PIN
#  Scenario: Testcase id = 286_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Two_Stage_Data_PIN, description = Account Update with Demo Plan by Adding Two Stage Data PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "286_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Adding_Two_Stage_Data_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I validate "5678" value is selected for "Data_Optional PIN"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @287_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Two_Stage_Data_PIN
#  Scenario: Testcase id = 287_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Two_Stage_Data_PIN, description = Account Update with Demo Plan by Changing Two Stage Data PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "287_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_Two_Stage_Data_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I enter "1357" for "Data_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I validate "1357" value is selected for "Data_Optional PIN"
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @288_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Two_Stage_Data_PIN
#  Scenario: Testcase id = 288_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Two_Stage_Data_PIN, description = Account Update with Demo Plan by Removing Two Stage Data PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "288_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Removing_Two_Stage_Data_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I enter "blank" for "Data_Optional PIN"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account
#
#   @Telephony @289_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_to_Commercial
#  Scenario: Testcase id = 289_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_to_Commercial, description = Account Update with Demo Plan by Changing to Commercial
#    Given Provisioning System Mode is set to "OFF" for testcase "289_Account_Update_with_Telephony_Postpaid_Demo_Plan_by_Changing_to_Commercial"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "None" for "Demo/Trial"
#    Then I select "Standard" for "Service Plan"
#    Then I select "DISABLED" for "Voice"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I select "No Voicemail" for "Voicemail Option"
#    Then I check "RUDICS_checkbox"
#    Then I select "TEL_TEMPE1" for "RUDICS_select"
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 10 seconds
#    Then I capture the data from account activation page
#    Then I validate "ENABLED" value is selected for "Data"
#    Then I validate "No Voicemail" value is selected for "Voicemail Option"
#    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
##    Then I verify the account is activated successfully on BRM database
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
#    Then I verify the account is updated successfully on BRM Server
#    Then I verify charges for Telephony Demo Account