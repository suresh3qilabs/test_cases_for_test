Feature: This feature file tests all the UI validation scenarios for Telephony

  Background:
    * I read the data from the excel "Config_telephony.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @Telephony @UI_Val_ActivationScreen_Telephony_Prepaid
  Scenario: Testcase id = UI_Val_ActivationScreen_Telephony_Prepaid, description = Validate all the UI elements on activation page
    Given Provisioning System Mode is set to "OFF" for testcase "UI_Val_ActivationScreen_Telephony_Prepaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    # Validation steps start
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
    Then I validate that element "User_guide" is present
    Then I confirm "Log out" is present
    Then I verify "Telephony" tab is highlighted
    Then I validate that element "Device_Details_Content_Heading" is present
    Then I click on "Device_Details_link"
    Then I validate that element "Device_Details_link" is present
    Then I validate that element "Device_Details_text" is present
    Then I validate that element "Service Provider_label" is present
    Then I validate that element "Service Provider Link" is present
    Then I validate that element "SIM_Label" is present
    Then I enter "NEW_Telephony_SIM_Prepaid_With_Prepaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate that element "Multiple_SIMs_Label" is present
    Then I validate that element "Multiple SIMs" is present
    Then I validate that checkbox "Multiple SIMs" is "unchecked"
    Then I validate that element "Sub-Market" is present
    Then I validate that element "Sub_Market_Label" is present
    Then I validate that element "IMEI_label" is present
    Then I validate that element "IMEI" is present
    Then I validate that element "MSISDN" is present
    Then I validate that element "MSISDN_label" is present
    Then I validate that element "MSISDN-C" is present
    Then I validate that element "MSISDN-C_label" is present
    Then I validate that element "Provider_Reference_Label" is present
    Then I validate that element "Provider Reference" is present
    Then I validate that element "Plan_Details_Content_Heading" is present
    Then I click on "Plan_Details_link"
    Then I validate that element "Plan_Details_link" is present
    Then I validate that element "Plan_Details_text" is present
    Then I validate that element "Demo/Trial_Label" is present
    Then I validate that element "Demo/Trial" is present
    Then I validate that element "Service_Plan_Label" is present
    Then I validate that element "Service Plan" is present
    Then I validate that element "Language" is present
    Then I validate that element "Language_Label" is present
    Then I select "Standard Prepaid" for "Service Plan"
    Then I validate that element "Enabled_Services_Content_Heading" is present
    Then I click on "Enabled_Services_link"
    Then I validate that element "Enabled_Services_link" is present
    Then I validate that element "Enabled_Services_text" is present
    Then I validate that element "Standard_Prepaid_ES_label" is present
    Then I validate that element "Standard_Prepaid_ES" is present
    Then I validate that element "Standard_Telephony_ES_label" is present
    Then I validate that element "Standard_Telephony_ES" is present
    Then I validate that element "Block_all_Calls_ES_label" is present
    Then I validate that element "Block_all_Calls_ES" is present
    Then I validate that element "Data_(BS25,BS26)_ES_label" is present
    Then I validate that element "Data_(BS25,BS26)_ES" is present
    Then I validate that element "SMS_MO_ES_label" is present
    Then I validate that element "SMS_MO_ES" is present
    Then I validate that element "Prepaid_ES_label" is present
    Then I validate that element "Prepaid_ES" is present
    Then I validate that element "SMS_MT_ES_label" is present
    Then I validate that element "SMS_MT_ES" is present
    Then I validate that element "CLIP_ES_label" is present
    Then I validate that element "CLIP_ES" is present
    Then I validate that element "Call_Barring_ES_label" is present
    Then I validate that element "Call_Barring_ES" is present
    Then I validate that element "Call_Forwarding_ES_label" is present
    Then I validate that element "Call_Forwarding_ES" is present
    Then I validate that element "Voicemail_Option_ES_label" is present
    Then I validate that element "Voicemail Option" is present
    Then I validate that element "Voice_label" is present
    Then I validate that element "Voice" is present
    Then I validate that element "Data_label" is present
    Then I validate that element "Data" is present
    Then I validate that element "Activate_Prepaid_Account_Label" is present
    Then I validate that element "Activate_Prepaid" is present
    Then I set the checkbox "Activate_Prepaid"
    Then I select "75 Minute" for "Prepaid_Voucher_Denomination"
    Then I enter "1" for "Prepaid_Voucher_Quantity"
    Then I enter "1" for "Prepaid_Voucher_Extension_Quantity"
    Then I select "English" for "Prepaid_Language"
    Then I set the checkbox "Prepaid_Threshold_Alerts"
    Then I select "ENABLED" for "Voice"
    Then I enter "1234" for "Voice_Optional PIN"
    Then I select "ENABLED" for "Data"
    Then I enter "5678" for "Data_Optional PIN"
    Then I validate that element "Activate_Prepaid_Account" is present
    Then I validate that element "Activate Account" is present
    Then I validate that element "Cancel" is present
    Then I validate that element "Save As Template" is present
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer
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

  @Telephony @UI_Val_EditScreen_Telephony_Prepaid
  Scenario: Testcase id = UI_Val_EditScreen_Telephony_Prepaid, description = Validate all the UI elements on edit page
    Given Provisioning System Mode is set to "OFF" for testcase "UI_Val_EditScreen_Telephony_Prepaid"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
#    Then I validate that element "User_guide" is present
    Then I confirm "Log out" is present
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I get the first contract id
    Then I click on the Contract ID to swap device
    Then I wait 10 seconds
    Then I validate that element "Device_Details_Content_Heading" is present
    Then I validate that element "Service Provider_label" is present
    Then I validate that element "Service Provider Link" is present
    Then I validate that element "Contract_ID_Label" is present
    Then I validate that element "SIM_Label" is present
    Then I validate that element "Sub-Market" is present
    Then I validate that element "Sub_Market_Label" is present
    Then I validate that element "IMEI_label" is present
    Then I validate that element "IMEI" is present
    Then I validate that element "MSISDN" is present
    Then I validate that element "MSISDN_label" is present
    Then I validate that element "MSISDN-C" is present
    Then I validate that element "MSISDN-C_label" is present
    Then I validate that element "Provider_Reference_Label" is present
    Then I validate that element "Provider Reference" is present
    Then I validate that element "Plan_Details_Content_Heading" is present
    Then I validate that element "Service_Plan_Label" is present
    Then I validate that element "Service Plan" is present
    Then I validate that element "Language" is present
    Then I validate that element "Language_Label" is present
    Then I select "Standard Prepaid" for "Service Plan"
    Then I validate that element "Enabled_Services_Content_Heading" is present
    Then I validate that element "Standard_Prepaid_ES_label" is present
    Then I validate that element "Standard_Prepaid_ES" is present
    Then I validate that element "Standard_Telephony_ES_label" is present
    Then I validate that element "Standard_Telephony_ES" is present
    Then I validate that element "Block_all_Calls_ES_label" is present
    Then I validate that element "Block_all_Calls_ES" is present
    Then I validate that element "Data_(BS25,BS26)_ES_label" is present
    Then I validate that element "Data_(BS25,BS26)_ES" is present
    Then I validate that element "SMS_MO_ES_label" is present
    Then I validate that element "SMS_MO_ES" is present
    Then I validate that element "Prepaid_ES_label" is present
    Then I validate that element "Prepaid_ES" is present
    Then I validate that element "SMS_MT_ES_label" is present
    Then I validate that element "SMS_MT_ES" is present
    Then I validate that element "CLIP_ES_label" is present
    Then I validate that element "CLIP_ES" is present
    Then I validate that element "Call_Barring_ES_label" is present
    Then I validate that element "Call_Barring_ES" is present
    Then I validate that element "Call_Forwarding_ES_label" is present
    Then I validate that element "Call_Forwarding_ES" is present
    Then I validate that element "Voicemail_Option_ES_label" is present
    Then I validate that element "Voicemail Option" is present
    Then I validate that element "Reset VM PIN" is present
    Then I validate that element "Voice_label" is present
    Then I validate that element "Voice" is present
    Then I validate that element "Data_label" is present
    Then I validate that element "Data" is present
    Then I validate that element "Update Account" is present
    Then I validate that element "cancel_button" is present
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer
    Then I cleanup the system