Feature: This feature file tests all the UI validation scenarios for SBD

  Background:
    * I read the data from the excel "Config_SBD.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @SBD @24 @UI_Validation_ActivationScreen
  Scenario: Testcase id = UI_Validation_ActivationScreen, description = Validate all the UI elements on activation page
    Given Provisioning System Mode is set to "OFF" for testcase "UI_Validation_ActivationScreen"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
    Then I confirm "Log out" is present
    Then I verify "SBD" tab is highlighted
    Then I validate that element "Device_Details_Content_Heading" is present
    Then I validate that element "Service Provider_label" is present
    Then I validate that element "Service Provider Link" is present
    Then I validate that element "Templates_label" is present
    Then I validate that element "Templates_Dropdown" is present
    Then I validate that element "IMEI" is present
    Then I validate that element "Provider_Reference_Label" is present
    Then I validate that element "Provider_Reference" is present
    Then I validate that element "Plan_Details_Content_Heading" is present
    Then I validate that element "Contract_Type_Label" is present
    Then I validate that element "Demo/Trial_Label" is present
    Then I validate that element "Demo/Trial" is present
    Then I validate that element "Service_Plan_Label" is present
    Then I validate that element "Service_Plan" is present
    Then I validate that element "LRIT_Label" is present
    Then I validate that element "Ring_Alerts_Label" is present
    Then I validate that element "Ring_Alerts" is present
    Then I validate that element "Delivery_Dest_content_heading" is present
    Then I validate that element "Destination_table_header" is present
    Then I validate that element "Destntn_Method_table_header" is present
    Then I validate that element "Include_Geodata_table_header" is present
    Then I validate that element "MO_ACK_table_header" is present
    Then I validate that element "Delivery_Destination_1" is present
    Then I validate that element "Delivery_Method_1" is present
    Then I validate that element "Activate Account" is present
    Then I validate that element "Cancel" is present
    Then I validate that element "Save As Template" is present
    Then I validate that checkbox "Geodata_flag_delivery1" is "checked"
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer


  @SBD @ @UI_Validation_EditAccountScreen
  Scenario: Testcase id = UI_Validation_EditAccountScreen, description = Validate all the UI elements on edit page
    Given Provisioning System Mode is set to "OFF" for testcase "UI_Validation_EditAccountScreen"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "Delivery Destination" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I get the first contract id
    Then I click on the Contract ID to swap device
    # Validation steps start
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
    Then I confirm "User guide" is present
    Then I confirm "Log out" is present
    Then I verify "SBD" tab is highlighted
    Then I validate that element "Device_Details_Content_Heading" is present
    Then I validate that element "Contract_ID_Label" is present
    Then I validate that element "Service Provider_label" is present
    Then I validate that element "Service Provider Link" is present
    Then I validate that element "Provider_Reference_Label" is present
    Then I validate that element "Provider_Reference" is present
    Then I validate that element "Plan_Details_Content_Heading" is present
    Then I validate that element "Demo/Trial_Label" is present
    Then I validate that element "Demo/Trial" is present
    Then I validate that element "Service_Plan_Label" is present
    Then I validate that element "Service_Plan" is present
    Then I validate that element "LRIT_Label" is present
    Then I validate that element "Ring_Alerts_Label" is present
    Then I validate that element "Ring_Alerts" is present
    Then I validate that element "Delivery_Dest_content_heading" is present
    Then I validate that element "Destination_table_header" is present
    Then I validate that element "Destntn_Method_table_header" is present
    Then I validate that element "Include_Geodata_table_header" is present
    Then I validate that element "MO_ACK_table_header" is present
    Then I validate that element "Delivery_Destination_1" is present
    Then I validate that element "Delivery_Method_1" is present
    Then I validate that element "Update Account" is present
    Then I validate that checkbox "Geodata_flag_delivery1" is "checked"
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer


