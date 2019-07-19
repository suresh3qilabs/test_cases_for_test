Feature: This feature file tests all status update regression scenarios for Open port

  Background:
    * I read the data from the excel "Config_OpenPort_Regression.xlsx" and "Status_Change" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab


  @OpenPort @TC01_Openport_Account_Activate_Account
  Scenario: Testcase id = TC01_Openport_Account_Activate_Account, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC01_Openport_Account_Activate_Account"
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
    Then I select "Standard" for "Line_Type2"
    Then I select "Standard" for "Line_Type3"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "5678" for "TwoStage_Pin1"
    Then I check "Line1_Plus_1"
    Then I capture the selected options for openport
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
    Then I validate the account details on network elements
    Then I click on the Contract ID
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins


  @OpenPort @TC02_Openport_Account_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = TC02_Openport_Account_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "TC02_Openport_Account_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server


  @OpenPort @TC03_Openport_Account_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = TC03_Openport_Account_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "TC03_Openport_Account_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server


  @OpenPort @TC04_Openport_Account_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = TC04_Openport_Account_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "TC04_Openport_Account_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server


  @OpenPort @TC05_Openport_Account_Activate_Account_pre_req_1
  Scenario: Testcase id = TC05_Openport_Account_Activate_Account_pre_req_1, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC05_Openport_Account_Activate_Account_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "None - 2013" for "Commitment"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "1000 MB - 2013" for "Included_Megabytes"
    Then I click on "speed3_128"
    Then I select "240 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I enter "OpenPort MSISDN1" for "MSISDN1"
    Then I enter "OpenPort MSISDN2" for "MSISDN2"
    Then I enter "OpenPort MSISDN3" for "MSISDN3"
    Then I select "Standard" for "Line_Type1"
    Then I select "Standard" for "Line_Type2"
    Then I select "Crew" for "Line_Type3"
    Then I check "Voice_Mail1"
    Then I check "Voice_Mail2"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "Security2_Pin_CheckBox"
    Then I enter "1234" for "Security2_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "5678" for "TwoStage_Pin1"
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "5678" for "TwoStage_Pin2"
    Then I check "Line1_Plus_1"
    Then I check "Line2_Plus_1"
    Then I capture the selected options for openport
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
    Then I validate the account details on network elements
    Then I click on the Contract ID
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins


  @OpenPort @TC06_Openport_Account_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = TC06_Openport_Account_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "TC06_Openport_Account_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server


  @OpenPort @TC07_Openport_Account_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = TC07_Openport_Account_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "TC07_Openport_Account_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server