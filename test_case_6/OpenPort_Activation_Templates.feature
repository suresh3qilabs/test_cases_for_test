Feature: This feature file tests all Activation Templates scenarios for OpenPort

  Background:
    * I read the data from the excel "Config_OpenPort_Regression.xlsx" and "Template" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort @TC_001_Openport_Create_Template
  Scenario: Testcase id = TC_001_Openport_Create_Template, description = Create an template for Openport
    Given Provisioning System Mode is set to "OFF" for testcase "TC_001_Openport_Create_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "10 MB - 2013" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "5678" for "TwoStage_Pin1"
    Then I check "Line1_Plus_1"
    Then I click on "Save As Template" button
    Then I enter "RANDOM_NAME" for "Template_Name"
    Then I click on "Submit_Template" button
    Then I wait 10 seconds
    Then I click on "Admin" tab
    Then I scroll into view of the element "Admin_tab"
    Then I hover over "Admin_tab" tab
    Then I click on "Manage_Templates"
    Then I select "OpenPort" for "Service_Type"
    Then I enter "NAME_LAST_USED" for "Template_Name"
    Then I click on "Search" button
    Then I verify that created template is available in the search results

  @OpenPort @TC_002_Openport_Edit_Template
  Scenario: Testcase id = TC_002_Openport_Edit_Template, description = Edit created template for Openport
    Given Provisioning System Mode is set to "OFF" for testcase "TC_002_Openport_Edit_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I select "NAME_LAST_USED" for "Templates_Dropdown"
    Then I check "Line2_Plus_1"
    Then I check "Line3_Plus_1"
    Then I click on "Save As Template" button
    Then I select "NAME_LAST_USED" for "Edit_Template"
    Then I uncheck "Overwrite_Selected_Template"
    Then I click on "Submit_Template" button
    Then I should see "Please check the overwrite selected template option if you wish to overwrite."
    Then I check "Overwrite_Selected_Template"
    Then I click on "Submit_Template" button
    Then I click on "Close_Template"
    Then I validate if "Line2_Plus_1" is checked
    Then I validate if "Line3_Plus_1" is checked

  @OpenPort @TC_003_Openport_Delete_Template
  Scenario: Testcase id = TC_003_Openport_Delete_Template, description = Delete the created template for Openport
    Given Provisioning System Mode is set to "OFF" for testcase "TC_003_Openport_Delete_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "Admin_tab" tab
    Then I click on "Manage_Templates"
    Then I select "OpenPort" for "Service_Type"
    Then I enter "NAME_LAST_USED" for "Template_Name"
    Then I click on "Search" button
    Then I select "Delete" for "Delete_Template"
    Then I click on "Search" button
    Then I should see "There were no templates found."