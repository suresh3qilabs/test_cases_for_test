Feature: This feature file tests all the scenarios from Tel_Postpaid_ActivateSubscriber tab on iridium_service_Functional_Activation_Update.xlsx

  Background:
    * I read the data from the excel "iridium_service_Functional_Activation_Update.xlsx" and "Tel_Postpaid_ActivateSubscriber" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Account_Activation_with_Individual_Plan_using_Invalid_Numeric_SIM
  Scenario:Testcase id = 001_Account_Activation_with_Individual_Plan_using_Invalid_Numeric_SIM, description = Account Activation with Individual Plan using an Invalid Numeric SIM
    Given Provisioning System Mode is set to "OFF" for testcase "001_Account_Activation_with_Individual_Plan_using_Invalid_Numeric_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "INVALID_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @002_Account_Activation_with_Individual_Plan_Using_Invalid_AlphaNumeric_SIM
  Scenario:Testcase id = 002_Account_Activation_with_Individual_Plan_Using_Invalid_AlphaNumeric_SIM, description = Account Activation with Individual Plan using an Invalid AlphaNumeric SIM
    Given Provisioning System Mode is set to "OFF" for testcase "002_Account_Activation_with_Individual_Plan_Using_Invalid_AlphaNumeric_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "ALPHA_NUMERIC" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @005_Account_Activation_with_Individual_Plan_Using_SIM_of_Another_Service_Type
  Scenario:Testcase id = 005_Account_Activation_with_Individual_Plan_Using_SIM_of_Another_Service_Type, description = Account Activation with Individual Plan using Another Service Type
    Given Provisioning System Mode is set to "OFF" for testcase "005_Account_Activation_with_Individual_Plan_Using_SIM_of_Another_Service_Type"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @007_Account_Activation_with_Individual_Plan_Using_SIM_Owned_by_Other_SP
  Scenario:Testcase id = 007_Account_Activation_with_Individual_Plan_Using_SIM_Owned_by_Other_SP, description = Account Activation with Individual Plan using a Valid File Format with Valid SIMs Owned by Other SP
    Given Provisioning System Mode is set to "OFF" for testcase "007_Account_Activation_with_Individual_Plan_Using_SIM_Owned_by_Other_SP"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @010_Account_Activation_with_Individual_Plan_with_SIM_with_Empty_Tag
  Scenario:Testcase id = 010_Account_Activation_with_Individual_Plan_with_SIM_with_Empty_Tag, description = Account Activation with Individual Plan with Empty SIM,
    Given Provisioning System Mode is set to "OFF" for testcase "010_Account_Activation_with_Individual_Plan_with_SIM_with_Empty_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "EMPTY_TAG" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @011_Account_Activation_with_Individual_Plan_with_Provider_Reference
  Scenario:Testcase id = 011_Account_Activation_with_Individual_Plan_with_Provider_Reference, description = Account Activation with individual Plan with Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "011_Account_Activation_with_Individual_Plan_with_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I enter "Complex!1234567" for "Provider Reference"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
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

  @Telephony @003_Account_Telephony_Postpaid_Activation_with_Individual_Plan_Using_Inactive_SIM
  Scenario:Testcase id = 003_Account_Telephony_Postpaid_Activation_with_Individual_Plan_Using_Inactive_SIM, description = Account Activation with Individual Plan using an Inactive SIM
    Given Provisioning System Mode is set to "OFF" for testcase "003_Account_Telephony_Postpaid_Activation_with_Individual_Plan_Using_Inactive_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "ACTIVE_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @Telephony @012_Account_Activation_with_Individual_Plan_with_Provider_Reference_Empty_Tag
  Scenario:Testcase id = 012_Account_Activation_with_Individual_Plan_with_Provider_Reference_Empty_Tag, description = Account Activation with individual Plan with Empty Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "012_Account_Activation_with_Individual_Plan_with_Provider_Reference_Empty_Tag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I enter "blank" for "Provider Reference"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
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

  @Telephony @014_Account_Activation_with_Individual_Plan_with_Call_Forwarding_Enabled
  Scenario:Testcase id = 014_Account_Activation_with_Individual_Plan_with_Call_Forwarding_Enabled, description = Account Activation with individual Plan with Call Forwarding Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "014_Account_Activation_with_Individual_Plan_with_Call_Forwarding_Enabled"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @015_Account_Activation_with_Individual_Plan_with_Call_Forwarding_Disabled_(without_Tag)
  Scenario:Testcase id = 015_Account_Activation_with_Individual_Plan_with_Call_Forwarding_Disabled_(without_Tag), description = Account Activation with individual Plan with Call Forwarding Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "015_Account_Activation_with_Individual_Plan_with_Call_Forwarding_Disabled_(without_Tag)"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @019_Account_Activation_with_Individual_Plan_with_Local_Number_Enabled
  Scenario: Testcase id = 019_Account_Activation_with_Individual_Plan_with_Local_Number_Enabled, description = Account Activation with Individual Plan with Local Number Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "019_Account_Activation_with_Individual_Plan_with_Local_Number_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I check "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
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
    Then I validate the service order for activation

  @Telephony @020_Account_Activation_with_Individual_Plan_with_Local_Number_Disabled_(without_Tag)
  Scenario: Testcase id = 020_Account_Activation_with_Individual_Plan_with_Local_Number_Disabled_(without_Tag), description = Account Activation with Individual Plan with Local Number Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "020_Account_Activation_with_Individual_Plan_with_Local_Number_Disabled_(without_Tag)"
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
    Then I uncheck "Local_Number_checkbox"
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate if "Local_Number_checkbox" is unchecked
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

  @Telephony @027_Account_Activation_with_Individual_Plan_with_SMS_MO_Enabled
  Scenario: Testcase id = 027_Account_Activation_with_Individual_Plan_with_SMS_MO_Enabled, description = Account Activation with Individual Plan with SMS MO Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "027_Account_Activation_with_Individual_Plan_with_SMS_MO_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @028_Account_Activation_with_Individual_Plan_with_SMS_MO_Disabled_(without_Tag)
  Scenario: Testcase id = 028_Account_Activation_with_Individual_Plan_with_SMS_MO_Disabled_(without_Tag), description = Account Activation with Individual Plan with SMS MO Disabled (without Tag)
    Given Provisioning System Mode is set to "OFF" for testcase "028_Account_Activation_with_Individual_Plan_with_SMS_MO_Disabled_(without_Tag)"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate two stage PINs and Voicemail option
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @Telephony @056_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 056_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN, description = Account Activation with Individual Plan with 2 Stage Voice Enabled No PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "056_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "blank" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "blank" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "Voice_Optional PIN" is empty
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate "Voice_Optional PIN" is empty
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

  @Telephony @057_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 057_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN, description = Account Activation with Individual Plan with 2 Stage Voice Enabled No PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "057_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "blank" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "Voice_Optional PIN" is empty
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
    Then I validate the service order for activation

  @Telephony @058_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled
  Scenario: Testcase id = 058_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled, description = Account Activation with Individual Plan with 2 Stage Voice Enabled No PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "058_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "blank" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "Voice_Optional PIN" is empty
    Then I validate "DISABLED" value is selected for "Data"
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
    Then I validate the service order for activation

  @Telephony @059_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 059_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN, description = Account Activation with Individual Plan with 2 Stage Voice Enabled with PIN and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "059_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN"
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
    Then I enter "blank" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate "Data_Optional PIN" is empty
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

  @Telephony @060_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 060_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN, description = Account Activation with Individual Plan with 2 Stage Voice Enabled with PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "060_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN"
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
    Then I validate the service order for activation

  @Telephony @061_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled
  Scenario: Testcase id = 061_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled, description = Account Activation with Individual Plan with 2 Stage Voice Enabled with PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "061_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled"
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
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "ENABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I validate "DISABLED" value is selected for "Data"
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
    Then I validate the service order for activation

  @Telephony @062_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN
  Scenario: Testcase id = 062_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN, description = Account Activation with Individual Plan with 2 Stage Voice Disabled and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "062_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I enter "blank" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "DISABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I validate "ENABLED" value is selected for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I validate "Data_Optional PIN" is empty
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

  @Telephony @063_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN
  Scenario: Testcase id = 063_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN, description = Account Activation with Individual Plan with 2 Stage Voice Disabled and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "063_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "DISABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
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
    Then I validate the service order for activation

  @Telephony @064_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled
  Scenario: Testcase id = 064_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled, description = Account Activation with Individual Plan with 2 Stage Voice Disabled and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "064_Account_Activation_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I validate "DISABLED" value is selected for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I validate "DISABLED" value is selected for "Data"
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
    Then I validate the service order for activation






