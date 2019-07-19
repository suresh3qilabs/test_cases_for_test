Feature: This feature file tests all the UI validation scenarios for OpenPort

  Background:
    * I read the data from the excel "Config_OpenPort_SmokeTest.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort @001_UI_Validation_ActivationScreen_Openport
  Scenario: Testcase id = 001_UI_Validation_ActivationScreen_Openport, description = Validate all the UI elements on activation page
    Given Provisioning System Mode is set to "OFF" for testcase "001_UI_Validation_ActivationScreen_Openport"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    # Validation steps start
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
    Then I validate that element "User_guide" is present
    Then I confirm "Log out" is present
    Then I verify "OpenPort" tab is highlighted
    Then I validate that element "Device_Details_Content_Heading" is present
    Then I validate that element "Service Provider_label" is present
    Then I validate that element "Service Provider Link" is present
    Then I validate that element "SIM_Label" is present
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate that element "IMEI_label" is present
    Then I validate that element "IMEI" is present
    Then I validate that element "simLock_checkbox" is present
    Then I validate that element "Provider_Reference_Label" is present
    Then I validate that element "Vessel_Name_Label" is present
    Then I validate that element "Plan_Details_Content_Heading" is present
    Then I validate that element "ContractType" is present
    Then I select "Individual" for "ContractType"
    Then I validate that element "Demo/Trial_Label" is present
    Then I select "None" for "Demo_Trial"
    #Then I validate that element "Demo/Trial" is present
    Then I validate that element "Promo_Label" is present
    Then I select "None" for "Promo_Code"
    Then I validate that element "Payment_Model_Label" is present
    Then I validate that element "Commitment_Label" is present
    Then I validate that element "Restrict_Other_Scratch_Cards_Label" is present
    Then I validate that element "Data_Service_Details_Heading" is present
    Then I validate that element "Data_Network_Label" is present
    Then I validate that element "Included_Megabytes_Label" is present
    Then I validate that element "Max_Data_Speed_Label" is present
    Then I validate that element "Voice_Service_Details_Heading" is present
    Then I validate that element "Included_Voice_Minutes_Label" is present
    Then I validate that element "Preferred_Language_Label" is present
    Then I validate that element "Select" is present
#    Then I validate that element "MSISDN" is present
    Then I validate that element "Auto_Generate_checkbox" is present
    Then I check "Auto_MSISDN"
    Then I validate that element "Line_Type" is present
    Then I validate that element "Voice_Mail" is present
    Then I validate that element "Security_PIN" is present
    Then I validate that element "2_Stage_PIN" is present
    Then I validate that element "Plus_1" is present
    Then I validate that element "Programmable_Buttons_Details_Heading" is present
    Then I click on "Programmable_Buttons_Details_Heading"
    Then I validate that element "Line_#" is present
    Then I validate that element "Button_1" is present
    Then I validate that element "Button_2" is present
    Then I validate that element "Button_3" is present
    Then I validate that element "Button_4" is present
    Then I validate that element "Button_5" is present
    Then I validate that element "Activate Account" is present
    Then I validate that element "Cancel" is present
    Then I validate that element "Save As Template" is present
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page

  @OpenPort @002_UI_Validation_EditScreen_Openport
  Scenario: Testcase id = 002_UI_Validation_EditScreen_Openport, description = Validate all the UI elements on edit page
    Given Provisioning System Mode is set to "OFF" for testcase "002_UI_Validation_EditScreen_Openport"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
    Then I confirm "Log out" is present
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I validate that element "Device_Details_Content_Heading" is present
    Then I validate that element "Service Provider_label" is present
    Then I validate that element "Service Provider Link" is present
    Then I validate that element "IMEI_label" is present
    Then I validate that element "IMEI" is present
    Then I validate that element "simLock_checkbox" is present
    Then I validate that element "Provider_Reference_Label" is present
    Then I validate that element "Vessel_Name_Label" is present
    Then I validate that element "Plan_Details_Content_Heading" is present
    Then I validate that element "ContractType" is present
    Then I validate that element "Demo/Trial_Label" is present
    Then I validate that element "Promo_Label" is present
    Then I validate that element "Payment_Model_Label" is present
    Then I validate that element "Commitment_Label" is present
    Then I validate that element "Restrict_Other_Scratch_Cards_Label" is present
    Then I validate that element "Data_Service_Details_Heading" is present
    Then I validate that element "Data_Network_Label" is present
    Then I validate that element "Included_Megabytes_Label" is present
    Then I validate that element "Max_Data_Speed_Label" is present
    Then I validate that element "Voice_Service_Details_Heading" is present
    Then I validate that element "Included_Voice_Minutes_Label" is present
    Then I validate that element "Preferred_Language_Label" is present
    Then I validate that element "Select" is present
    Then I validate that element "Line_Type" is present
    Then I validate that element "Voice_Mail" is present
    Then I validate that element "Security_PIN" is present
    Then I validate that element "2_Stage_PIN" is present
    Then I validate that element "Plus_1" is present
    Then I validate that element "Programmable_Buttons_Details_Heading" is present
    Then I click on "Programmable_Buttons_Details_Heading"
    Then I validate that element "Line_#" is present
    Then I validate that element "Button_1" is present
    Then I validate that element "Button_2" is present
    Then I validate that element "Button_3" is present
    Then I validate that element "Button_4" is present
    Then I validate that element "Button_5" is present
    Then I validate that element "Update Account" is present
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer
