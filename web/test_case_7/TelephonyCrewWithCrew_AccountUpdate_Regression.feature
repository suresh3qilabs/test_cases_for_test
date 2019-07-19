Feature: This feature file tests all account update scenarios for Telephony crew with crew

  Background:
    * I read the data from the excel "Config_Tel_Crew_With_Crew_Regression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_SMS_MO_And_SMS_MT_Features_Enabled
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_SMS_MO_And_SMS_MT_Features_Enabled, description = Activate a Telephony Crew With Crew Account With SMS MO And SMS MT Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_SMS_MO_And_SMS_MT_Features_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "SMS_MO_checkbox"
    Then I check "SMS_MT_checkbox"
    Then I set the checkbox "Activate_Crew"
    Then I capture the enabled services
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
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @001_Update_Telephony_Crew_With_Crew_Standard_Account_With_SMS_MO_MT_Disabled
  Scenario: Testcase id = 001_Update_Telephony_Crew_With_Crew_Standard_Account_With_SMS_MO_MT_Disabled, description = Update Telephony Crew With Crew Account With SMS MO MT Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "001_Update_Telephony_Crew_With_Crew_Standard_Account_With_SMS_MO_MT_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "SMS_MO_checkbox"
    Then I uncheck "SMS_MT_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "SMS_MO_checkbox" is unchecked
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Voicemail_Enabled
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Voicemail_Enabled, description = Activate a Telephony Crew With Crew Account With Voicemail Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Voicemail_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I select "Voicemail" for "Voicemail Option"
    Then I validate if "Call_Forwarding_checkbox" is checked
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @002_Update_Telephony_Crew_With_Crew_Standard_Account_Update_No_Voicemail
  Scenario: Testcase id = 002_Update_Telephony_Crew_With_Crew_Standard_Account_Update_No_Voicemail, description = Update Telephony Crew With Crew Account With SMS MO MT Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "002_Update_Telephony_Crew_With_Crew_Standard_Account_Update_No_Voicemail"
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
    Then I wait 15 seconds
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Two_Stage_Voice_And_Data_Enabled
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Two_Stage_Voice_And_Data_Enabled, description = Activate a Telephony Crew With Crew Account With Two-stage Voice and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Two_Stage_Voice_And_Data_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Crew"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @003_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_Disabled
  Scenario: Testcase id = 003_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_Disabled, description = Update Telephony Crew With Crew Account With Two Stage Voice Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "003_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_Disabled"
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @004_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_Enabled
  Scenario: Testcase id = 004_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_Enabled, description = Update Telephony Crew With Crew Account With Two Stage Voice Data Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "004_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_Enabled"
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @005_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_PIN
  Scenario: Testcase id = 005_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_PIN, description = Update 2 stage data and voice PIN
    Given Provisioning System Mode is set to "OFF" for testcase "005_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Two_Stage_Voice_Data_PIN"
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account, description = Activate a Telephony Crew With Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @006_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Language
  Scenario: Testcase id = 006_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Language, description = Update Telephony Crew With Crew Account With Language
    Given Provisioning System Mode is set to "OFF" for testcase "006_Update_Telephony_Crew_With_Crew_Standard_Account_Update_Language"
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

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Local_Number_Disabled
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Local_Number_Disabled, description = Activate a Telephony Crew With Crew Account With Local Number Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Local_Number_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I uncheck "Local_Number_checkbox"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @007_Update_Telephony_Crew_With_Crew_Standard_Account_Enable_Local_Number
  Scenario: Testcase id = 007_Update_Telephony_Crew_With_Crew_Standard_Account_Enable_Local_Number, description = Update Telephony Crew With Crew Account With Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "007_Update_Telephony_Crew_With_Crew_Standard_Account_Enable_Local_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Local_Number"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Local_Number" is checked
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Local_Number_Enabled
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Local_Number_Enabled, description = Activate a Telephony Crew With Crew Account With Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account_With_Local_Number_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I check "Local_Number_checkbox"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Crew"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Local_Number_checkbox" is checked
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @008_Update_Telephony_Crew_With_Crew_Standard_Account_Disable_Local_Number
  Scenario: Testcase id = 008_Update_Telephony_Crew_With_Crew_Standard_Account_Disable_Local_Number, description = Update Telephony Crew With Crew Account With Local Number Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "008_Update_Telephony_Crew_With_Crew_Standard_Account_Disable_Local_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Local_Number"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate if "Local_Number" is unchecked
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @Pre_Req_Activate_Telephony_Crew_With_Crew_Account
  Scenario: Testcase id = Pre_Req_Activate_Telephony_Crew_With_Crew_Account, description = Activate a Telephony Crew With Crew Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_Req_Activate_Telephony_Crew_With_Crew_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @009_Update_Telephony_Crew_With_Crew_Standard_Account_With_Service_Plan_Update
  Scenario: Testcase id = 009_Update_Telephony_Crew_With_Crew_Standard_Account_With_Service_Plan_Update, description = Update Telephony Crew With Crew Account With Service Plan Update
    Given Provisioning System Mode is set to "OFF" for testcase "009_Update_Telephony_Crew_With_Crew_Standard_Account_With_Service_Plan_Update"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Level 1 Crew" for "Service Plan"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "Level 1 Crew" value is selected for "Service Plan"
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
    Then I validate prepaid details on the prepaid DB
    Then I verify the account is updated successfully on BRM Server

  @Telephony @010_Activate_Telephony_Crew_With_Crew_Account_With_Tempe_Rudics_Group
  Scenario: Testcase id = 010_Activate_Telephony_Crew_With_Crew_Account_With_Tempe_Rudics_Group, description = Activate a Standard Service Plan for Telephony Crew With Crew Account Update Tempe Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "010_Activate_Telephony_Crew_With_Crew_Account_With_Tempe_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @011_Activate_Telephony_Crew_With_Crew_Account_With_Russia_Rudics_Group
  Scenario: Testcase id = 011_Activate_Telephony_Crew_With_Crew_Account_With_Russia_Rudics_Group, description = Activate a Standard Service Plan for Telephony Crew With Crew Account Update Russia Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "011_Activate_Telephony_Crew_With_Crew_Account_With_Russia_Rudics_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @012_Activate_Telephony_Crew_With_Crew_Account_With_Tempe_Rudics_Group_&_Update_To_Russia_Rudics
  Scenario: Testcase id = 012_Activate_Telephony_Crew_With_Crew_Account_With_Tempe_Rudics_Group_&_Update_To_Russia_Rudics, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Tempe Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "012_Activate_Telephony_Crew_With_Crew_Account_With_Tempe_Rudics_Group_&_Update_To_Russia_Rudics"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_TEMPE1" for "RUDICS_select"
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation

  @Telephony @013_Activate_Telephony_Crew_With_Crew_Account_With_Russia_Rudics_Group_&_Update_To_Tempe_Rudics
  Scenario: Testcase id = 013_Activate_Telephony_Crew_With_Crew_Account_With_Russia_Rudics_Group_&_Update_To_Tempe_Rudics, description = Activate a Standard Service Plan for Telephony Postpaid Account Update Russia Rudics Group From 1 to 2
    Given Provisioning System Mode is set to "OFF" for testcase "013_Activate_Telephony_Crew_With_Crew_Account_With_Russia_Rudics_Group_&_Update_To_Tempe_Rudics"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_With_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "RUDICS_checkbox"
    Then I select "TEL_RUSSIA1" for "RUDICS_select"
    Then I set the checkbox "Activate_Crew"
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
    Then I validate prepaid details on the prepaid DB
    Then I validate the service order for activation
