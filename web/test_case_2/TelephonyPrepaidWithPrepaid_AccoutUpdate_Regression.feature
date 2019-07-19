Feature: This feature file tests all Account Update scenarios for Telephony prepaid with prepaid Regression

  Background:
    * I read the data from the excel "Config_Telephony_Prepaid_With_Prepaid_Regression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed, description = Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Device_Swap_is_not_allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then click on swap device link and enter value based on "Telephony Prepaid Sim Query"

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_Language
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_Language, description = Telephony_Prepaid_with_Prepaid_Update_Language
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_Language"
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_SMS_MO_MT
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_SMS_MO_MT, description = Telephony_Prepaid_with_Prepaid_Update_SMS_MO_MT
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_SMS_MO_MT"
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
#    Then I verify the account is updated successfully on BRM Server
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_Call_Forwarding
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_Call_Forwarding, description = Telephony_Prepaid_with_Prepaid_Update_Call_Forwarding
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_Call_Forwarding"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck the checkbox "Call_Forwarding_checkbox"
    Then I select "No Voicemail" for "Voicemail Option"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 15 seconds
#    Then I capture the data from account activation page
    Then I validate if "Call_Forwarding_checkbox" is unchecked
    Then I validate "No Voicemail" value is selected for "Voicemail Option"
#    Then I verify the account is updated successfully on BRM Server
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_Voicemail
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_Voicemail, description = Telephony_Prepaid_with_Prepaid_Update_Voicemail
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_Voicemail"
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
#    Then I capture the data from account activation page
    Then I validate "No Voicemail" value is selected for "Voicemail Option"
    Then I verify the account is updated successfully on BRM Server
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Disabled
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Disabled, description = Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Disabled"
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
#    Then I verify the account is updated successfully on BRM Server
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_Voice_Data_Disabled_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_Voice_Data_Disabled_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_Voice_Data_Disabled_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_Voice_Data_Disabled_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "DISABLED" for "Voice"
    Then I select "DISABLED" for "Data"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Enabled
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Enabled, description = Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_Voice_Data_Enabled"
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
#    Then I verify the account is updated successfully on BRM Server
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_Voice_Data_PIN
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_Voice_Data_PIN, description = Telephony_Prepaid_with_Prepaid_Update_Voice_Data_PIN
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_Voice_Data_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "ENABLED" for "Voice"
    Then I enter "1324" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5768" for "Data_Optional PIN"
    Then I capture the enabled services
    Then I click on obj repo "Update_Account" button
    Then I wait 10 seconds
    Then I validate "ENABLED" value is selected for "Voice"
    Then I validate "ENABLED" value is selected for "Data"
    Then I validate "1324" value is selected for "Voice_Optional PIN"
    Then I validate "5768" value is selected for "Data_Optional PIN"
#    Then I verify the account is updated successfully on BRM Server
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

  @Telephony @Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
  Scenario: Testcase id = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req, description = Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_With_Prepaid_Activate_Account_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Standard Prepaid" for "Service Plan"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I set the checkbox "Activate_Prepaid"
    Then I capture the enabled services
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
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
#    Then I validate if "hbas" option is not available

  @Telephony @Telephony_Prepaid_with_Prepaid_Update_Service_Plan_Not_Allowed
  Scenario: Testcase id = Telephony_Prepaid_with_Prepaid_Update_Service_Plan_Not_Allowed, description = Telephony_Prepaid_with_Prepaid_Update_Service_Plan_Not_AllowedUpdate Telephony Crew With Crew Account With Service Plan Update
    Given Provisioning System Mode is set to "OFF" for testcase "Telephony_Prepaid_with_Prepaid_Update_Service_Plan_Not_Allowed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "GO Prepaid" for "Service Plan"
#    Then I validate if Enabled Services section is expanded
#    Then I capture the enabled services
#    Then I click on obj repo "Update_Account" button
#    Then I wait 15 seconds
    Then I click on "Search" tab
    Then I search for the contract id
    Then I click on the Contract ID
    Then I validate "Service Plan" has "1" options












