Feature: This feature file tests all Account Update Scenarios for Telephony Postpaid Regression

  Background:
    * I read the data from the excel "Config_Tel_PostpaidRegression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Activate_Telephony_Postpaid_Standard_Account_Update_SMS_MO_MT
  Scenario: Testcase id = 001_Activate_Telephony_Postpaid_Standard_Account_Update_SMS_MO_MT, description = Activate a Standard Service Plan for Telephony Postpaid Account and disable SMS MO, SMS MT
    Given Provisioning System Mode is set to "OFF" for testcase "001_Activate_Telephony_Postpaid_Standard_Account_Update_SMS_MO_MT"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "SMS_MO_checkbox" is checked
    Then I validate if "SMS_MT_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
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

  @Telephony @002_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_disabled
  Scenario: Testcase id = 002_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_disabled, description = Update Telephony Postpaid Account Without 2 stage Data and Voice
    Given Provisioning System Mode is set to "OFF" for testcase "002_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_disabled"
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
    Then I verify "Data_Optional PIN" is "disabled"
    Then I verify "Voice_Optional PIN" is "disabled"
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

  @Telephony @003_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_enabled
  Scenario: Testcase id = 003_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_enabled, description = Update Telephony Postpaid Account With 2 stage Data and Voice
    Given Provisioning System Mode is set to "OFF" for testcase "003_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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

  @Telephony @004_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_enabled_update_pin
  Scenario: Testcase id = 004_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_enabled_update_pin, description = Update 2 stage data and voice PIN
    Given Provisioning System Mode is set to "OFF" for testcase "004_Activate_Telephony_Postpaid_Standard_Account_with_2_stage_voice_data_enabled_update_pin"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I enter "1357" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "2468" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
    Then I validate "1357" value is selected for "Voice_Optional PIN"
    Then I validate "2468" value is selected for "Data_Optional PIN"
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

  @Telephony @005_Activate_Telephony_Postpaid_Standard_Account_Update_No_Voicemail
  Scenario: Testcase id = 005_Activate_Telephony_Postpaid_Standard_Account_Update_No_Voicemail, description = Activate a Standard Service Plan for Telephony Postpaid Account and update voicemail to No voicemail
    Given Provisioning System Mode is set to "OFF" for testcase "005_Activate_Telephony_Postpaid_Standard_Account_Update_No_Voicemail"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "Voicemail" value is selected for "Voicemail Option"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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

  @Telephony @006_Activate_Telephony_Postpaid_Standard_Account_Validate_NO_Reset_VM_PIN
  Scenario: Testcase id = 006_Activate_Telephony_Postpaid_Standard_Account_Validate_NO_Reset_VM_PIN, description = Search a Standard Service Plan Account for Telephony Postpaid and Verify RESET VM PIN Button is not available
    Given Provisioning System Mode is set to "OFF" for testcase "006_Activate_Telephony_Postpaid_Standard_Account_Validate_NO_Reset_VM_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I validate "No Voicemail" value is selected for "Voicemail Option"
    Then I verify "Reset VM PIN" button doesn't exists

  @Telephony @007_Activate_Telephony_Postpaid_Standard_Account_Update_No_Data_Plan
  Scenario: Testcase id = 007_Activate_Telephony_Postpaid_Standard_Account_Update_No_Data_Plan, description = Activate a Standard Service Plan for Telephony Postpaid Account Without Data Plan
    Given Provisioning System Mode is set to "OFF" for testcase "007_Activate_Telephony_Postpaid_Standard_Account_Update_No_Data_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I validate if Enabled Services section is expanded
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I uncheck "Data_(BS25,BS26)_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Data_(BS25,BS26)_checkbox" is unchecked
    Then I verify "Data_Optional PIN" is "disabled"
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

  @Telephony @008_Activate_Telephony_Postpaid_Standard_Account_Update_Data_enabled
  Scenario: Testcase id = 008_Activate_Telephony_Postpaid_Standard_Account_Update_Data_enabled, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Data to enabled
    Given Provisioning System Mode is set to "OFF" for testcase "008_Activate_Telephony_Postpaid_Standard_Account_Update_Data_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Data_(BS25,BS26)_checkbox"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I select "Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Data_(BS25,BS26)_checkbox" is checked
    Then I validate "Voicemail" value is selected for "Voicemail Option"
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

  @Telephony @009_Activate_Telephony_Postpaid_Standard_Account_Update_Local_Number_enabled
  Scenario: Testcase id = 009_Activate_Telephony_Postpaid_Standard_Account_Update_Local_Number_enabled, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Local Number to enabled
    Given Provisioning System Mode is set to "OFF" for testcase "009_Activate_Telephony_Postpaid_Standard_Account_Update_Local_Number_enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I validate if "Local_Number" is unchecked
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I check "Local_Number"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Local_Number" is checked
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

  @Telephony @010_Activate_Telephony_Postpaid_Standard_Account_Update_Local_Number_disabled
  Scenario: Testcase id = 010_Activate_Telephony_Postpaid_Standard_Account_Update_Local_Number_disabled, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Local Number to disabled
    Given Provisioning System Mode is set to "OFF" for testcase "010_Activate_Telephony_Postpaid_Standard_Account_Update_Local_Number_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "Local_Number"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Local_Number" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I uncheck "Local_Number"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Local_Number" is unchecked
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

  @Telephony @011_Activate_Telephony_Postpaid_Standard_Account_Validate_Call_Forwarding_for_VoiceMail
  Scenario: Testcase id = 011_Activate_Telephony_Postpaid_Standard_Account_Validate_Call_Forwarding_for_VoiceMail, description = Activate a Standard Service Plan for Telephony Postpaid Account and verify if call forwarding is mandatory for voicemail
    Given Provisioning System Mode is set to "OFF" for testcase "011_Activate_Telephony_Postpaid_Standard_Account_Validate_Call_Forwarding_for_VoiceMail"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I uncheck "Call_Forwarding_checkbox"
    Then I click on obj repo "Activate Account" button
    Then I verify the message "Call_Forwarding_Mandatory_Error_Voicemail" for "Telephony"

  @Telephony @012_Activate_Telephony_Postpaid_Standard_Account_Update_Rudics_disabled
  Scenario: Testcase id = 012_Activate_Telephony_Postpaid_Standard_Account_Update_Rudics_disabled, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Rudics to disabled
    Given Provisioning System Mode is set to "OFF" for testcase "012_Activate_Telephony_Postpaid_Standard_Account_Update_Rudics_disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "RUDICS_checkbox" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I uncheck "RUDICS_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "RUDICS_checkbox" is unchecked
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

  @Telephony @013_Activate_Telephony_Postpaid_Standard_Account_Update_Reset_VM_Pin
  Scenario: Testcase id = 013_Activate_Telephony_Postpaid_Standard_Account_Update_Reset_VM_Pin, description = Activate a Standard Service Plan for Telephony Postpaid Account With 2 stage Data and Voice enabled and reset VM PIN
    Given Provisioning System Mode is set to "OFF" for testcase "013_Activate_Telephony_Postpaid_Standard_Account_Update_Reset_VM_Pin"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "Voicemail" value is selected for "Voicemail Option"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I click on obj repo "Reset VM PIN" button
    Then I enter "1357" for "Reset_VM_Pin_Text"
    Then I click on "Reset_VM_Pin_Submit_Button"
    Then I verify the message "Updated_VoiceMail_PIN_Successfully" for "Telephony"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
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

  @Telephony @014_Activate_Telephony_Postpaid_Standard_Account_update_Language
  Scenario: Testcase id = 014_Activate_Telephony_Postpaid_Standard_Account_update_Language, description = Search for Telephony Postpaid Account and update Language to French
    Given Provisioning System Mode is set to "OFF" for testcase "014_Activate_Telephony_Postpaid_Standard_Account_update_Language"
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

  @Telephony @015_Activate_Telephony_Postpaid_Standard_Account_Update_No_Voicemail
  Scenario: Testcase id = 015_Activate_Telephony_Postpaid_Standard_Account_Update_No_Voicemail, description = Activate a Standard Service Plan for Telephony Postpaid Account and update voicemail to No voicemail
    Given Provisioning System Mode is set to "OFF" for testcase "015_Activate_Telephony_Postpaid_Standard_Account_Update_No_Voicemail"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "Voicemail" value is selected for "Voicemail Option"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
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

  @Telephony @016_ActivateTelephony_Postpaid_Standard_Account_Validation_For_Device_Swap
  Scenario: Testcase id = 016_ActivateTelephony_Postpaid_Standard_Account_Validation_For_Device_Swap, description = Activate a Standard Telephony Postpaid Account and Swap SIM, MSISDN, MSISDN-C with invalid devices
    Given Provisioning System Mode is set to "OFF" for testcase "016_ActivateTelephony_Postpaid_Standard_Account_Validation_For_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "get_tel_sim_from_other_sp_Sim Query & get_2_3_MSISDN_Tel_Postpaid_Query & get_2_3_MSISDN-C_Tel_Postpaid_Query"

  @Telephony @017_Activate_Telephony_Postpaid_Standard_Account_Update_Provider_Reference
  Scenario: Testcase id = 017_Activate_Telephony_Postpaid_Standard_Account_Update_Provider_Reference, description = Activate a Telephony Postpaid Account and update provider reference
    Given Provisioning System Mode is set to "OFF" for testcase "017_Activate_Telephony_Postpaid_Standard_Account_Update_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I enter "Complex!123" for "Provider Reference"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
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

  @Telephony @018_Activate_Telephony_Postpaid_Standard_Account_Update_Service_Plan
  Scenario: Testcase id = 018_Activate_Telephony_Postpaid_Standard_Account_Update_Service_Plan, description = Activate a Telephony Postpaid Account and update service plan
    Given Provisioning System Mode is set to "OFF" for testcase "018_Activate_Telephony_Postpaid_Standard_Account_Update_Service_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I select "Level 1" for "Service Plan"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "Level 1" value is selected for "Service Plan"
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

  @Telephony @019_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group
  Scenario: Testcase id = 019_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Tempe Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "019_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I select "TEL_TEMPE2" for "RUDICS_select"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "TEL_TEMPE2" value is selected for "RUDICS_select"
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

  @Telephony @020_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group
  Scenario: Testcase id = 020_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Russia Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "020_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "TEL_RUSSIA1" value is selected for "RUDICS_select"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I select "TEL_RUSSIA2" for "RUDICS_select"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "TEL_RUSSIA2" value is selected for "RUDICS_select"
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

  @Telephony @021_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group_&_Update_To_Russia_Rudics
  Scenario: Testcase id = 021_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group_&_Update_To_Russia_Rudics, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Tempe Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "021_Activate_Telephony_Postpaid_Account_With_Tempe_Rudics_Group_&_Update_To_Russia_Rudics"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "TEL_RUSSIA1" value is selected for "RUDICS_select"
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

  @Telephony @022_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group_&_Update_To_Tempe_Rudics
  Scenario: Testcase id = 022_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group_&_Update_To_Tempe_Rudics, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Russia Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "022_Activate_Telephony_Postpaid_Account_With_Russia_Rudics_Group_&_Update_To_Tempe_Rudics"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "TEL_RUSSIA1" value is selected for "RUDICS_select"
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I click on the Contract ID
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "TEL_TEMPE1" value is selected for "RUDICS_select"
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