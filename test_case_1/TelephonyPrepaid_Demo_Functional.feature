Feature: This feature file tests all Account activation & Account update scenarios for Telephony prepaid without prepaid Demo Functional

  Background:
    * I read the data from the excel "iridium_Demo_Functional.xlsx" and "tel_prepaid_demo" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @095_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Invalid_Format
  Scenario: Testcase id = 095_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Invalid_Format, description = Account Activation with Demo Plan with SIM with Invalid Format
    Given Provisioning System Mode is set to "OFF" for testcase "095_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Invalid_Format"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "TEST" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @096_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Non_Existing_Value
  Scenario: Testcase id = 096_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Non_Existing_Value, description = Account Activation with Demo Plan with SIM with Non Existing Value
    Given Provisioning System Mode is set to "OFF" for testcase "096_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Non_Existing_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "666" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @098_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_Inactive
  Scenario: Testcase id = 098_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_Inactive, description = Account Activation with Demo Plan with SIM Inactive
    Given Provisioning System Mode is set to "OFF" for testcase "098_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_Inactive"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "9874874886661414144" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @101_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_of_Another_SP
  Scenario: Testcase id = 101_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_of_Another_SP, description = Account Activation with Demo Plan with SIM of Another Service_Type
    Given Provisioning System Mode is set to "OFF" for testcase "101_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_of_Another_SP"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "8988169003000025399" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @102_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Valid_Value
  Scenario: Testcase id = 102_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Valid_Value, description = Account Activation with Demo Plan with SIM with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "102_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Valid_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
#    Then I verify the account is activated successfully on BRM database
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

  @Telephony @108_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SubMarket_with_Valid_Value
  Scenario: Testcase id = 108_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SubMarket_with_Valid_Value, description = Account Activation with Demo Plan with SubMarket with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "108_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SubMarket_with_Valid_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
    Then I verify the account is activated successfully on BRM database
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

  @Telephony @114_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_ServicePlanId_Valid
  Scenario: Testcase id = 114_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_ServicePlanId_Valid, description = Account Activation with Demo Plan with ServicePlanId Valid
    Given Provisioning System Mode is set to "OFF" for testcase "114_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_ServicePlanId_Valid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
    Then I verify the account is activated successfully on BRM database
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

#  @Telephony @115_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_ServicePlanId_Valid_with_0_Counts
#  Scenario: Testcase id = 115_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_ServicePlanId_Valid_with_0_Counts, description = Account Activation with Demo Plan with ServicePlanId Valid with 0 Counts
#    Given Provisioning System Mode is set to "OFF" for testcase "115_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_ServicePlanId_Valid_with_0_Counts"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Telephony" tab
#    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
#    Then I select "Demo Plan" for "Demo/Trial"
#    Then I save the number of demo_trial plans available
#    Then I select "Standard Prepaid Demo" for "Service Plan"
#    Then I select "ENABLED" for "Voice"
#    Then I enter "1234" for "Voice_Optional PIN"
#    Then I select "ENABLED" for "Data"
#    Then I enter "5678" for "Data_Optional PIN"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Activate Account" button
#    Then I wait 15 seconds
#    Then I capture the data from account activation page
#    Then I verify the account is activated successfully on BRM database
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

  @Telephony @116_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Provider_Reference
  Scenario: Testcase id = 116_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Provider_Reference, description = Account Activation with Demo Plan with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "116_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I enter "Complex!1234567" for "Provider Reference"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
    Then I verify the account is activated successfully on BRM database
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

  @Telephony @117_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Provider_Reference_Exceeding_Limit
  Scenario: Testcase id = 117_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Provider_Reference_Exceeding_Limit, description = Account Activation with Demo Plan with Provider Reference Exceeding Limit
    Given Provisioning System Mode is set to "OFF" for testcase "117_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Provider_Reference_Exceeding_Limit"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I enter "reference reference reference reference reference reference reference reference reference reference" for "Provider Reference"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
    Then I verify the account is activated successfully on BRM database
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

  @Telephony @123_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Default_Service_Option_with_Valid_Value
  Scenario: Testcase id = 123_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Default_Service_Option_with_Valid_Value, description = Account Activation with Demo Plan with Default Service Option Valid
    Given Provisioning System Mode is set to "OFF" for testcase "123_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Default_Service_Option_with_Valid_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
    Then I verify the account is activated successfully on BRM database
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

  @Telephony @124_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Call_Forwarding_Enabled
  Scenario: Testcase id = 124_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Call_Forwarding_Enabled, description = Account Activation with Demo Plan with Call Forwarding Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "124_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Call_Forwarding_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "Call_Forwarding_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @125_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Call_Forwarding_Disabled_(without_Tag)
  Scenario: Testcase id = 125_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Call_Forwarding_Disabled_(without_Tag), description = Account Activation with Demo Plan with Call Forwarding Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "125_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Call_Forwarding_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "Call_Forwarding_checkbox" is unchecked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @129_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MO_Enabled
  Scenario: Testcase id = 129_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MO_Enabled, description = Account Activation with Demo Plan with SMS MO Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "129_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MO_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "SMS_MO_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "SMS_MO_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @130_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MO_Disabled_(without_Tag)
  Scenario: Testcase id = 130_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MO_Disabled_(without_Tag), description = Account Activation with Demo Plan with SMS MO Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "130_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MO_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "SMS_MO_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "SMS_MO_checkbox" is unchecked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @134_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MT_Enabled
  Scenario: Testcase id = 134_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MT_Enabled, description = Account Activation with Demo Plan with SMS MT Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "134_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MT_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "SMS_MT_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @135_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MT_Disabled_(without_Tag)
  Scenario: Testcase id = 135_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MT_Disabled_(without_Tag), description = Account Activation with Demo Plan with SMS MT Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "135_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SMS_MT_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if "SMS_MT_checkbox" is unchecked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @139_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Voicemail_Enabled
  Scenario: Testcase id = 139_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Voicemail_Enabled, description = Account Activation with Demo Plan with Voicemail Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "139_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Voicemail_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I validate if "Call_Forwarding_checkbox" is checked
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @140_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Voicemail_Disabled_(without_Tag)
  Scenario: Testcase id = 140_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Voicemail_Disabled_(without_Tag), description = Account Activation with Demo Plan with Voicemail Disabled (without_Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "140_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Voicemail_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "No Voicemail" value is selected for "Voicemail Option"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @144_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Data_Enabled
  Scenario: Testcase id = 144_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Data_Enabled, description = Account Activation with Demo Plan with Data Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "144_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Data_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @145_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Data_Disabled_(without_Tag)
  Scenario: Testcase id = 145_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Data_Disabled_(without_Tag), description = Account Activation with Demo Plan with Data Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "145_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_Data_Disabled_(without_Tag)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "Data_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I validate if "Data_(BS25,BS26)_checkbox" is unchecked
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @149_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 149_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled No PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "149_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @150_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 150_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled No PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "150_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @151_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled
  Scenario: Testcase id = 151_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled, description = Account Activation with Demo Plan with 2 Stage Voice Enabled No PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "151_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @152_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 152_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled with PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "152_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @153_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 153_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Enabled with PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "153_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @154_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled
  Scenario: Testcase id = 154_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled, description = Account Activation with Demo Plan with 2 Stage Voice Enabled with PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "154_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I uncheck "Data_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @155_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 155_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Disabled and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "155_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I enter "" for "Data_Optional PIN"
    Then I verify "Data_Optional PIN" is "enabled"
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
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @156_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 156_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN, description = Account Activation with Demo Plan with 2 Stage Voice Disabled and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "156_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

  @Telephony @157_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled
  Scenario: Testcase id = 157_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled, description = Account Activation with Demo Plan with 2 Stage Voice Disabled and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "157_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I verify the account is activated successfully on BRM database
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I verify charges for Telephony Demo Account

          #### Note: Tel Demo Functional - Account Update Scenarios

  @Telephony @_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Valid_Value_pre_req1
  Scenario: Testcase id = _Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Valid_Value_pre_req1, description = Account Activation with Demo Plan with SIM with Valid Value
    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Activation_with_Telephony_prepaid_without_prepaid_Demo_Plan_with_SIM_with_Valid_Value_pre_req1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_Without_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Prepaid" value is selected for "Sub-Market"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "Standard Prepaid Demo" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "Voicemail" for "Voicemail Option"
    Then I validate if Enabled Services section is expanded
    Then I check "Call_Forwarding_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Call_Forwarding_checkbox" is checked
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

  @Telephony @290_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Provider_Reference
  Scenario: Testcase id = 290_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Provider_Reference, description = Account Update with Demo Plan by Adding Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "290_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "reference" for "Provider Reference"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "reference" value is selected for "Provider Reference"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @291_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Provider_Reference
  Scenario: Testcase id = 291_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Provider_Reference, description =Account Update with Demo Plan by Changing Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "291_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "Complex!123456" for "Provider Reference"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "Complex!123456" value is selected for "Provider Reference"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @292_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Provider_Reference
  Scenario: Testcase id = 292_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Provider_Reference, description = Account Update with Demo Plan by Removing Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "292_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "blank" for "Provider Reference"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "Provider Reference" is empty
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @293_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Language
  Scenario: Testcase id = 293_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Language, description = Account Update with Demo Plan by Changing Language
    Given Provisioning System Mode is set to "OFF" for testcase "293_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Language"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "French" for "Language"
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "French" value is selected for "Language"
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @294_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Call_Forwarding
  Scenario: Testcase id = 294_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Call_Forwarding, description = Account Update with Demo Plan by Disabling Call Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "294_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Call_Forwarding"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Call_Forwarding_checkbox"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Call_Forwarding_checkbox" is unchecked
    Then I validate "No Voicemail" value is selected for "Voicemail Option"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @295_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Call_Forwarding
  Scenario: Testcase id = 295_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Call_Forwarding, description = Account Update with Demo Plan by Enabling Call Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "295_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Call_Forwarding"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Call_Forwarding_checkbox"
    Then I select "Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Call_Forwarding_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @296_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_SMS_MO
  Scenario: Testcase id = 296_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_SMS_MO, description = Account Update with Demo Plan by Disabling SMS MO
    Given Provisioning System Mode is set to "OFF" for testcase "296_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_SMS_MO"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "SMS_MO_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "SMS_MO_checkbox" is unchecked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @297_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_SMS_MO
  Scenario: Testcase id = 297_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_SMS_MO, description = Account Update with Demo Plan by Enabling SMS MO
    Given Provisioning System Mode is set to "OFF" for testcase "297_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_SMS_MO"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "SMS_MO_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "SMS_MO_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @298_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_SMS_MT
  Scenario: Testcase id = 298_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_SMS_MT, description = Account Update with Demo Plan by Disabling SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "298_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_SMS_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "SMS_MT_checkbox" is unchecked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @299_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_SMS_MT
  Scenario: Testcase id = 299_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_SMS_MT, description = Account Update with Demo Plan by Enabling SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "299_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_SMS_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "SMS_MT_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @300_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Data
  Scenario: Testcase id = 300_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Data, description = Account Update with Demo Plan by Disabling Data
    Given Provisioning System Mode is set to "OFF" for testcase "300_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Data_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Data_(BS25,BS26)_checkbox" is unchecked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @301_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Data
  Scenario: Testcase id = 301_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Data, description = Account Update with Demo Plan by Enabling Data
    Given Provisioning System Mode is set to "OFF" for testcase "301_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Data_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Data_(BS25,BS26)_checkbox" is checked
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

   @Telephony @302_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Voicemail_Option
  Scenario: Testcase id = 302_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Voicemail_Option, description = Account Update with Demo Plan by Changing Voicemail Option
    Given Provisioning System Mode is set to "OFF" for testcase "302_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Voicemail_Option"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @303_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Two_Stage_Voice
  Scenario: Testcase id = 303_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Two_Stage_Voice, description = Account Update with Demo Plan by Enabling Two Stage Voice
    Given Provisioning System Mode is set to "OFF" for testcase "303_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Two_Stage_Voice"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
     Then I select "Voicemail" for "Voicemail Option"
    Then I select "ENABLED" for "Voice"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Voice"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @304_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Two_Stage_Voice
  Scenario: Testcase id = 304_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Two_Stage_Voice, description = Account Update with Demo Plan by Disabling Two Stage Voice
    Given Provisioning System Mode is set to "OFF" for testcase "304_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Two_Stage_Voice"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Voice"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "DISABLED" value is selected for "Voice"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @305_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Two_Stage_Voice_PIN
  Scenario: Testcase id = 305_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Two_Stage_Voice_PIN, description = Account Update with Demo Plan by Adding Two Stage Voice PIN
    Given Provisioning System Mode is set to "OFF" for testcase "305_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Two_Stage_Voice_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "1234" value is selected for "Voice_Optional PIN"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @306_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Two_Stage_Voice_PIN
  Scenario: Testcase id = 306_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Two_Stage_Voice_PIN, description = Account Update with Demo Plan by Changing Two Stage Voice PIN
    Given Provisioning System Mode is set to "OFF" for testcase "306_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Two_Stage_Voice_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Voicemail" for "Voicemail Option"
    Then I check "Call_Forwarding_checkbox"
    Then I enter "3456" for "Voice_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "3456" value is selected for "Voice_Optional PIN"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @307_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Two_Stage_Voice_PIN
  Scenario: Testcase id = 307_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Two_Stage_Voice_PIN, description = Account Update with Demo Plan by Removing Two Stage Voice PIN
    Given Provisioning System Mode is set to "OFF" for testcase "307_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Two_Stage_Voice_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @308_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Two_Stage_Data
  Scenario: Testcase id = 308_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Two_Stage_Data, description = Account Update with Demo Plan by Enabling Two Stage Data
    Given Provisioning System Mode is set to "OFF" for testcase "308_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Enabling_Two_Stage_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @309_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Two_Stage_Data
  Scenario: Testcase id = 309_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Two_Stage_Data, description = Account Update with Demo Plan by Disabling Two Stage Data
    Given Provisioning System Mode is set to "OFF" for testcase "309_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Disabling_Two_Stage_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "DISABLED" value is selected for "Data"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @310_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Two_Stage_Data_PIN
  Scenario: Testcase id = 310_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Two_Stage_Data_PIN, description = Account Update with Demo Plan by Adding Two Stage Data PIN
    Given Provisioning System Mode is set to "OFF" for testcase "310_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Adding_Two_Stage_Data_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Data"
    Then I validate "5678" value is selected for "Data_Optional PIN"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @311_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Two_Stage_Data_PIN
  Scenario: Testcase id = 311_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Two_Stage_Data_PIN, description = Account Update with Demo Plan by Changing Two Stage Data PIN
    Given Provisioning System Mode is set to "OFF" for testcase "311_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_Two_Stage_Data_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "2334" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "2334" value is selected for "Data_Optional PIN"
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @312_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Two_Stage_Data_PIN
  Scenario: Testcase id = 312_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Two_Stage_Data_PIN, description = Account Update with Demo Plan by Removing Two Stage Data PIN
    Given Provisioning System Mode is set to "OFF" for testcase "312_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Removing_Two_Stage_Data_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account

  @Telephony @313_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_to_Commercial
  Scenario: Testcase id = 313_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_to_Commercial, description = Account Update with Demo Plan by Changing to Commercial
    Given Provisioning System Mode is set to "OFF" for testcase "313_Account_Update_with_Telephony_prepaid_without_prepaid_Demo_Plan_by_Changing_to_Commercial"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "None" for "Demo/Trial"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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
    Then I verify the account is updated successfully on BRM Server
    Then I verify charges for Telephony Demo Account