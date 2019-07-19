Feature: This feature file tests all the scenarios from Tel_Pooling_Group tab on iridium_service_Functional_Account_Pooling_Group.xlsx

  Background:
    * I read the data from the excel "iridium_service_Functional_Account_Pooling_Group.xlsx" and "Tel_Pooling_Group" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @001_Account_Activation_with_Pooling_Plan_with_SIM_with_Invalid_Value
  Scenario:Testcase id = 001_Account_Activation_with_Pooling_Plan_with_SIM_with_Invalid_Value, description = Account Activation with Pooling Plan with SIM with Invalid Format,
    Given Provisioning System Mode is set to "OFF" for testcase "001_Account_Activation_with_Pooling_Plan_with_SIM_with_Invalid_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "TEST" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @002_Account_Activation_with_Pooling_Plan_with_SIM_with_Valid_Value
  Scenario:Testcase id = 002_Account_Activation_with_Pooling_Plan_with_SIM_with_Valid_Value, description = Account Activation with Pooling Plan with SIM with Valid Value,
    Given Provisioning System Mode is set to "OFF" for testcase "002_Account_Activation_with_Pooling_Plan_with_SIM_with_Valid_Value"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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
    Then I verify the account is activated successfully on BRM database

  @Telephony @003_Account_Activation_with_Pooling_Plan_without_Selecting_Stage_Voice_and_Data
  Scenario:Testcase id = 003_Account_Activation_with_Pooling_Plan_without_Selecting_Stage_Voice_and_Data, description = Account Activation with Pooling Plan without Selecting 2 Stage and Data,
    Given Provisioning System Mode is set to "OFF" for testcase "003_Account_Activation_with_Pooling_Plan_without_Selecting_Stage_Voice_and_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I validate if Enabled Services section is expanded
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "DISABLED" value is selected for "Voice"
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
    Then I validate the service order for activation
    Then I verify the account is activated successfully on BRM database

  @Telephony @004_Account_Activation_with_Pooling_Plan_Selecting_Only_2_Stage_Voice
  Scenario:Testcase id = 004_Account_Activation_with_Pooling_Plan_Selecting_Only_2_Stage_Voice, description = Account Activation with Pooling Plan with Selecting Only 2 Stage Voice,
    Given Provisioning System Mode is set to "OFF" for testcase "004_Account_Activation_with_Pooling_Plan_Selecting_Only_2_Stage_Voice"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I validate if Enabled Services section is expanded
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
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
    Then I validate the service order for activation
    Then I verify the account is activated successfully on BRM database

  @Telephony @005_Account_Activation_with_Pooling_Plan_Selecting_Only_2_Stage_Data
  Scenario:Testcase id = 005_Account_Activation_with_Pooling_Plan_Selecting_Only_2_Stage_Data, description = Account Activation with Pooling Plan with Selecting Only 2 Stage Data,
    Given Provisioning System Mode is set to "OFF" for testcase "005_Account_Activation_with_Pooling_Plan_Selecting_Only_2_Stage_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "DISABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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
    Then I verify the account is activated successfully on BRM database

  @Telephony @006_Account_Activation_with_Pooling_Plan_Selecting_Stage_Voice_and_Data
  Scenario:Testcase id = 006_Account_Activation_with_Pooling_Plan_Selecting_Stage_Voice_and_Data, description = Account Activation with Pooling Plan with Selecting Only 2 Stage Voice and Data,
    Given Provisioning System Mode is set to "OFF" for testcase "006_Account_Activation_with_Pooling_Plan_Selecting_Stage_Voice_and_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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
    Then I verify the account is activated successfully on BRM database

  @Telephony @telephony_account_with_individual_plan
  Scenario: Testcase id = telephony_account_with_individual_plan, description = Activate a Standard Service Plan for Telephony Postpaid Account
    Given Provisioning System Mode is set to "OFF" for testcase "telephony_account_with_individual_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
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
    Then I verify the account is activated successfully on BRM database

  @Telephony @007_Account_Update_with_Pooling_Plan
  Scenario:Testcase id = 007_Account_Update_with_Pooling_Plan, description = Account Update with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "007_Account_Update_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Dynamic Share Group - Automation_default_dynamic1" for "Service Plan"
    Then I validate if Enabled Services section is expanded
    Then I select "TEL_TEMPE1" for "RUDICS_select"
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

  @Telephony @008_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Voice_and_Data
  Scenario:Testcase id = 008_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Voice_and_Data, description = Account Update with Pooling Plan by Removing 2 Stage Voice and Data,
    Given Provisioning System Mode is set to "OFF" for testcase "008_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Voice_and_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "DISABLED" value is selected for "Voice"
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

  @Telephony @009_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Voice
  Scenario:Testcase id = 009_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Voice, description = Account Update with Pooling Plan by Removing 2 Stage Voice,
    Given Provisioning System Mode is set to "OFF" for testcase "009_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Voice"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "DISABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
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

  @Telephony @010_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Data
  Scenario:Testcase id = 010_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Data, description = Account Update with Pooling Plan by Removing 2 Stage Data,
    Given Provisioning System Mode is set to "OFF" for testcase "010_Account_Update_with_Pooling_Plan_by_Removing_2_Stage_Data"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Voice"
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

  @Telephony @012_Account_Update_with_Pooling_Plan_by_Changing_to_Individual_Plan
  Scenario:Testcase id = 012_Account_Update_with_Pooling_Plan_by_Changing_to_Individual_Plan, description = Account Update with Pooling Plan by Changing to Individual Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "012_Account_Update_with_Pooling_Plan_by_Changing_to_Individual_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
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

  @Telephony @013_Account_Update_with_Pooling_Plan_by_Changing_to_Another_Pooling_Plan
  Scenario:Testcase id = 013_Account_Update_with_Pooling_Plan_by_Changing_to_Another_Pooling_Plan, description = Account Update with Pooling Plan by Changing to Another Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "013_Account_Update_with_Pooling_Plan_by_Changing_to_Another_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Dynamic Share Group - Automation_default_dynamic2" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
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

  @Telephony @015_Account_Suspension_with_Pooling_Plan
  Scenario:Testcase id = 015_Account_Suspension_with_Pooling_Plan, description = Account Suspension with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "015_Account_Suspension_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @016_Account_Un-Suspension_with_Pooling_Plan
  Scenario:Testcase id = 016_Account_Un-Suspension_with_Pooling_Plan, description = Account Un-Suspension with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "016_Account_Un-Suspension_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @Telephony @017_Account_Deactivation_with_Pooling_Plan
  Scenario:Testcase id = 017_Account_Deactivation_with_Pooling_Plan, description = Account Deactivation with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "017_Account_Deactivation_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server