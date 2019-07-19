Feature: This feature file tests all SimLock scenarios for Openport

  Background:
    * I read the data from the excel "Config_OpenPort_Regression.xlsx" and "SimLock_Feature" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort @TC001_Openport_Activate_Account_With_SIM_Lock_Enabled_Pre_req_1
  Scenario: Testcase id =  TC001_Openport_Activate_Account_With_SIM_Lock_Enabled_Pre_req_1, description = Activate a Open Port Account With SIM Lock Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC001_Openport_Activate_Account_With_SIM_Lock_Enabled_Pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I check "SimLock"
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "25 MB - 2013" for "Included_Megabytes"
    Then I click on "speed2_64"
    Then I select "3 Years - 2013" for "Commitment"
    Then I select "600 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC002_Openport_Activate_Account_Without_SIM_Lock_Enabled_Pre_req_2
  Scenario: Testcase id =  TC002_Openport_Activate_Account_Without_SIM_Lock_Enabled_Pre_req_2, description = Activate a Open Port Account Without  SIM Lock Enabled No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC002_Openport_Activate_Account_Without_SIM_Lock_Enabled_Pre_req_2"
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
    Then I select "25 MB - 2013" for "Included_Megabytes"
    Then I click on "speed2_64"
    Then I select "3 Years - 2013" for "Commitment"
    Then I select "600 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC003_Openport_Update_Account_SameIMEI_Multiple_Accounts
  Scenario: Testcase id = TC003_Openport_Update_Account_SameIMEI_Multiple_Accounts, description = Update an Indivdual Open Port Account with same IMEI with SimLock
    Given Provisioning System Mode is set to "ON" for testcase "TC003_Openport_Update_Account_SameIMEI_Multiple_Accounts"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I wait 5 seconds
    Then I check "SimLock"
    Then I enter "Existing_OP_IMEI" for "OP_IMEI"
    Then I click on obj repo "Update Account" button
    Then I wait 10 seconds
    Then I verify error message "device was found locked to another SIM" on screen

  @OpenPort @TC004_Openport_Activate_Account_Without_SIM_Lock_Enabled_Pre_req_3
  Scenario: Testcase id =  TC004_Openport_Activate_Account_Without_SIM_Lock_Enabled_Pre_req_3, description = Activate a Open Port Account Without SIM Lock Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC004_Openport_Activate_Account_Without_SIM_Lock_Enabled_Pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "25 MB - 2013" for "Included_Megabytes"
    Then I click on "speed2_64"
    Then I select "3 Years - 2013" for "Commitment"
    Then I select "600 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
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

    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC005_Openport_Activate_Account_Without_SIM_Lock_Same_IMEI
  Scenario: Testcase id =  TC005_Openport_Activate_Account_Without_SIM_Lock_Same_IMEI, description = Activate a Open Port Account Without  SIM Lock Enabled same IMEI No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "TC005_Openport_Activate_Account_Without_SIM_Lock_Same_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I enter "Existing_OP_IMEI" for "OP_IMEI"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "25 MB - 2013" for "Included_Megabytes"
    Then I click on "speed2_64"
    Then I select "3 Years - 2013" for "Commitment"
    Then I select "600 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
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

    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC006_Openport_Activate_Account_With_SIM_Lock_Enabled_Pre_req_4
  Scenario: Testcase id =  TC006_Openport_Activate_Account_With_SIM_Lock_Enabled_Pre_req_4, description = Activate a Open Port Account With SIM Lock Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC006_Openport_Activate_Account_With_SIM_Lock_Enabled_Pre_req_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I check "SimLock"
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "25 MB - 2013" for "Included_Megabytes"
    Then I click on "speed2_64"
    Then I select "3 Years - 2013" for "Commitment"
    Then I select "600 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
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

    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC007_Openport_Update_Account_With_SIM_Lock_Disabled
  Scenario: Testcase id = TC007_Openport_Update_Account_With_SIM_Lock_Disabled, description = Update a Open Port Account With SimLock Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC007_Openport_Update_Account_With_SIM_Lock_Disabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "SimLock"
    Then I capture the selected options for openport
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the account is updated successfully on BRM Server