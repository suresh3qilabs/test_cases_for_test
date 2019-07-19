Feature: This feature file tests all the Telephony Postpaid Account Update Functional Scenarios

  Background:
    * I read the data from the excel "iridium_service_Functional_Activation_Update.xlsx" and "Telephony_AccountUpdate" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @pre_req_Account_Activation_with_Using_Valid_SIM
  Scenario:Testcase id = pre_req_Account_Activation_with_Using_Valid_SIM, description = Account Activation with Individual Plan using avalid Numeric SIM
    Given Provisioning System Mode is set to "OFF" for testcase "pre_req_Account_Activation_with_Using_Valid_SIM"
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

  @Telephony @008_Account_Update_with_NEW_Provider_Reference
  Scenario:Testcase id = 008_Account_Update_with_NEW_Provider_Reference, description = Account Update with NEW Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "008_Account_Update_with_NEW_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "Provider_Reference_Test" for "Provider Reference"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
    Then I validate "Provider_Reference_Test" value is selected for "Provider Reference"
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

  @Telephony @009_Account_Update_with_Provider_Reference_Empty_Tag
  Scenario:Testcase id = 009_Account_Update_with_Provider_Reference_Empty_Tag, description = Account Update with NEW Provider Reference
    Given Provisioning System Mode is set to "OFF" for testcase "009_Account_Update_with_Provider_Reference_Empty_Tag"
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
    Then I wait 15 seconds
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

  @Telephony @010_Account_Update_with_Provider_Reference_exceeding_characters_allowed
  Scenario:Testcase id = 010_Account_Update_with_Provider_Reference_exceeding_characters_allowed, description = Account Update with Provider Reference exceeding characters allowed
    Given Provisioning System Mode is set to "OFF" for testcase "010_Account_Update_with_Provider_Reference_exceeding_characters_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "Provider_Reference_Test10101010101010101" for "Provider Reference"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
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

  @Telephony @055_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN
  Scenario:Testcase id = 055_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN, description = Account Update with invalid IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "055_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Call_Forwarding_checkbox"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
    Then I validate "Voice_Optional PIN" is empty
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @056_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN
  Scenario:Testcase id = 056_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN, description = Account Update with invalid IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "056_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @057_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled
  Scenario:Testcase id = 057_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled, description = Account Update with 2 Stage Voice Enabled No PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "057_Account_Update_with_2_Stage_Voice_Enabled_No_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Call_Forwarding_checkbox"
    Then I select "Voicemail" for "Voicemail Option"
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @058_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN
  Scenario:Testcase id = 058_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN, description = Account Update with invalid IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "058_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @059_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN
  Scenario:Testcase id = 059_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN, description = Account Update with 2 Stage Voice Enabled with PIN and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "059_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
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

  @Telephony @060_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled
  Scenario:Testcase id = 060_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled, description = Account Update with 2 Stage Voice Enabled with PIN and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "060_Account_Update_with_2_Stage_Voice_Enabled_with_PIN_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "DISABLED" for "Data"
    Then I verify "Data_Optional PIN" is "disabled"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
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

  @Telephony @061_Account_Update_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN
  Scenario:Testcase id = 061_Account_Update_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN, description = Account Update with 2 Stage Voice Disabled and Data Enabled No PIN
    Given Provisioning System Mode is set to "OFF" for testcase "061_Account_Update_with_2_Stage_Voice_Disabled_and_Data_Enabled_No_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
    Then I capture the data from account activation page
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
    Then I verify the account is updated successfully on BRM Server

  @Telephony @062_Account_Update_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN
  Scenario:Testcase id = 062_Account_Update_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN, description = Account Update with 2 Stage Voice Disabled and Data Enabled with PIN
    Given Provisioning System Mode is set to "OFF" for testcase "062_Account_Update_with_2_Stage_Voice_Disabled_and_Data_Enabled_with_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Voice"
    Then I verify "Voice_Optional PIN" is "disabled"
    Then I select "ENABLED" for "Data"
    Then I verify "Data_Optional PIN" is "enabled"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
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

  @Telephony @063_Account_Update_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled
  Scenario:Testcase id = 063_Account_Update_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled, description = Account Update with Individual Plan with 2 Stage Voice Disabled and Data Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "063_Account_Update_with_Individual_Plan_with_2_Stage_Voice_Disabled_and_Data_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I validate if Enabled Services section is expanded
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
    Then I verify "Voice_Optional PIN" is "disabled"
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
