Feature: This feature file tests all Create Template scenarios for Telephony postpaid Regression

  Background:
    * I read the data from the excel "Config_Tel_PostpaidRegression.xlsx" and "Template" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @Telephony @001_Telephony_Postpaid_Create_Template
  Scenario: Testcase id = 001_Telephony_Postpaid_Create_Template, description = Create a Telephony template
    Given Provisioning System Mode is set to "OFF" for testcase "001_Telephony_Postpaid_Create_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Postpaid" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Postpaid" value is selected for "Sub-Market"
    Then I select "Standard" for "Service Plan"
    Then I wait 5 seconds
    Then I validate if Enabled Services section is expanded
    Then I click on "Save As Template" button
    Then I enter "RANDOM_NAME" for "Template_Name"
    Then I click on "Submit_Template" button
    Then I wait 10 seconds
    Then I click on "Admin" tab
    Then I scroll into view of the element "Admin_tab"
    Then I hover over "Admin_tab" tab
    Then I click on "Manage_Templates"
    Then I select "TELEPHONY" for "Service_Type"
    Then I enter "NAME_LAST_USED" for "Template_Name"
    Then I click on "Search" button
    Then I verify that created template is available in the search results

  @Telephony @002_Telephony_Postpaid_Edit_Template
  Scenario: Testcase id = 002_Telephony_Postpaid_Edit_Template, description = Create a Telephony template
    Given Provisioning System Mode is set to "OFF" for testcase "002_Telephony_Postpaid_Edit_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I select "NAME_LAST_USED" for "Templates_Dropdown"
    Then I select "ENABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I click on "Save As Template" button
    Then I select "NAME_LAST_USED" for "Edit_Template"
    Then I click on "Submit_Template" button
    Then I should see "Please check the overwrite selected template option if you wish to overwrite."
    Then I check "Overwrite_Selected_Template"
    Then I click on "Submit_Template" button
    Then I click on "Close_Template"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"

  @Telephony @003_Telephony_Postpaid_Delete_Template
  Scenario: Testcase id = 003_Telephony_Postpaid_Delete_Template, description = Create a Telephony template
    Given Provisioning System Mode is set to "OFF" for testcase "003_Telephony_Postpaid_Delete_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Admin_tab" tab
    Then I click on "Manage_Templates"
    Then I select "TELEPHONY" for "Service_Type"
    Then I enter "NAME_LAST_USED" for "Template_Name"
    Then I click on "Search" button
    Then I select "Delete" for "Delete_Template"
    Then I click on "Search" button
    Then I should see "There were no templates found."

  @Telephony @004_Telephony_Crew_Create_Template
  Scenario: Testcase id = 004_Telephony_Crew_Create_Template, description = Create a Telephony template
    Given Provisioning System Mode is set to "OFF" for testcase "004_Telephony_Crew_Create_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I enter "NEW_Telephony_SIM_Crew_Without_Crew" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate "Standard Crew" value is selected for "Sub-Market"
    Then I select "Standard Crew" for "Service Plan"
    Then I wait 5 seconds
    Then I validate if Enabled Services section is expanded
    Then I click on "Save As Template" button
    Then I enter "RANDOM_NAME" for "Template_Name"
    Then I click on "Submit_Template" button
    Then I wait 10 seconds
    Then I click on "Admin" tab
    Then I scroll into view of the element "Admin_tab"
    Then I hover over "Admin_tab" tab
    Then I click on "Manage_Templates"
    Then I select "TELEPHONY" for "Service_Type"
    Then I enter "NAME_LAST_USED" for "Template_Name"
    Then I click on "Search" button
    Then I verify that created template is available in the search results

  @Telephony @005_Telephony_Crew_Edit_Template
  Scenario: Testcase id = 005_Telephony_Crew_Edit_Template, description = Create a Telephony template
    Given Provisioning System Mode is set to "OFF" for testcase "005_Telephony_Crew_Edit_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Telephony" tab
    Then I select "NAME_LAST_USED" for "Templates_Dropdown"
    Then I select "ENABLED" for "Voice"
    Then I select "ENABLED" for "Data"
    Then I click on "Save As Template" button
    Then I select "NAME_LAST_USED" for "Edit_Template"
    Then I click on "Submit_Template" button
    Then I should see "Please check the overwrite selected template option if you wish to overwrite."
    Then I check "Overwrite_Selected_Template"
    Then I click on "Submit_Template" button
    Then I click on "Close_Template"
    Then I verify "Voice_Optional PIN" is "enabled"
    Then I verify "Data_Optional PIN" is "enabled"

  @Telephony @006_Telephony_Crew_Delete_Template
  Scenario: Testcase id = 006_Telephony_Crew_Delete_Template, description = Create a Telephony template
    Given Provisioning System Mode is set to "OFF" for testcase "006_Telephony_Crew_Delete_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Admin_tab" tab
    Then I click on "Manage_Templates"
    Then I select "TELEPHONY" for "Service_Type"
    Then I enter "NAME_LAST_USED" for "Template_Name"
    Then I click on "Search" button
    Then I select "Delete" for "Delete_Template"
    Then I click on "Search" button
    Then I should see "There were no templates found."
