Feature: This feature file tests all the scenarios from Openport_AccountUpdate tab on iridium_service_Functional_Activation_Update.xlsx

  Background:
    * I read the data from the excel "iridium_service_Functional_Activation_Update.xlsx" and "Openport_AccountUpdate" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @OpenPort @Pre_req_Openport_Activate_Account_1
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_1, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_1"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
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

#  @OpenPort @1_Account_Update
#  Scenario: Testcase id = 1_Account_Update, description = Account Update
#    Given Provisioning System Mode is set to "OFF" for testcase "1_Account_Update"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "Tagalog" for "Preferred_Language"
#    Then I capture the data from account activation page
#    Then I capture the selected options for openport
#    Then I click on obj repo "Update Account" button
#    Then I wait 5 seconds
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify plusOne for open port
#    Then I verify open port two stage pins and security pins

  @OpenPort @6_Account_Update_by_Adding_IMEI
  Scenario: Testcase id = 6_Account_Update_by_Adding_IMEI, description = Account Update by Adding IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "6_Account_Update_by_Adding_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @7_Account_Update_by_Locking_IMEI_to_SIM
  Scenario: Testcase id = 7_Account_Update_by_Locking_IMEI_to_SIM, description = Account Update by Locking IMEI to SIM
    Given Provisioning System Mode is set to "OFF" for testcase "7_Account_Update_by_Locking_IMEI_to_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "SimLock"
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @8_Account_Update_by_Unlocking_IMEI_from_SIM
  Scenario: Testcase id = 8_Account_Update_by_Unlocking_IMEI_from_SIM, description = Account Update by Unlocking IMEI from SIM
    Given Provisioning System Mode is set to "OFF" for testcase "8_Account_Update_by_Unlocking_IMEI_from_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "SimLock"
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @9_Account_Update_by_Locking_IMEI_to_SIM_without_IMEI
  Scenario: Testcase id = 9_Account_Update_by_Locking_IMEI_to_SIM_without_IMEI, description = Account Update by Locking IMEI to SIM without IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "9_Account_Update_by_Locking_IMEI_to_SIM_without_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "" for "OP_IMEI"
    Then I check "SimLock"
    Then I capture the data from account activation page
    Then I capture the selected options for openport
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I verify error message "You must enter an IMEI to use Sim Lock" on screen

  @OpenPort @10_Account_Update_by_Removing_IMEI
  Scenario: Testcase id = 10_Account_Update_by_Removing_IMEI, description = Account Update by Removing IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "10_Account_Update_by_Removing_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "" for "OP_IMEI"
    Then I uncheck "SimLock"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @11_Account_Update_by_Changing_Provider_Reference
  Scenario: Testcase id = 11_Account_Update_by_Changing_Provider_Reference, description = Account Update by Changing Provider
    Given Provisioning System Mode is set to "OFF" for testcase "11_Account_Update_by_Changing_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "OpenPortProviderReference_Updated" for "Provider_Reference"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @12_Account_Update_by_Removing_Provider_Reference
  Scenario: Testcase id = 12_Account_Update_by_Removing_Provider_Reference, description = Account Update by Removing Provider
    Given Provisioning System Mode is set to "OFF" for testcase "12_Account_Update_by_Removing_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "" for "Provider_Reference"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @13_Account_Update_by_Changing_Vessel_Name
  Scenario: Testcase id = 13_Account_Update_by_Changing_Vessel_Name, description = Account Update by Changing Vessel Name
    Given Provisioning System Mode is set to "OFF" for testcase "13_Account_Update_by_Changing_Vessel_Name"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "OpenPortVesselName_Updated" for "Vessel_Name"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @14_Account_Update_by_Removing_Vessel_Name
  Scenario: Testcase id = 14_Account_Update_by_Removing_Vessel_Name, description = Account Update by Removing Vessel Name
    Given Provisioning System Mode is set to "OFF" for testcase "14_Account_Update_by_Removing_Vessel_Name"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "" for "Vessel_Name"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @15_Account_Update_by_Changing_Contract_Type
  Scenario: Testcase id = 15_Account_Update_by_Changing_Contract_Type, description = Account Update by Changing Contract Type
    Given Provisioning System Mode is set to "OFF" for testcase "15_Account_Update_by_Changing_Contract_Type"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Shared" for "ContractType"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort  @Pre_req_Openport_Activate_Account_2
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_2, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_2"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
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

  @OpenPort @18_Account_Update_by_Changing_Promo
  Scenario: Testcase id = 18_Account_Update_by_Changing_Promo, description = Account Update by Changing_Promo
    Given Provisioning System Mode is set to "OFF" for testcase "18_Account_Update_by_Changing_Promo"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Combo D" for "Promo_Code"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @22_Account_Update_by_Changing_Commitment_Period
  Scenario: Testcase id = 22_Account_Update_by_Changing_Commitment_Period, description = Account Update by Changing Commitment Period
    Given Provisioning System Mode is set to "OFF" for testcase "22_Account_Update_by_Changing_Commitment_Period"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Combo D" for "Promo_Code"
    Then I select "2 Years - Combo" for "Commitment"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @24_Account_Update_by_Changing_Restrict_Other_Scratch_Cards
  Scenario: Testcase id = 24_Account_Update_by_Changing_Restrict_Other_Scratch_Cards, description = Account Update by Changing Restrict Other Scratch Cards
    Given Provisioning System Mode is set to "OFF" for testcase "24_Account_Update_by_Changing_Restrict_Other_Scratch_Cards"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Yes" for "Restrict_Other_Scratch_Cards"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort  @Pre_req_Openport_Activate_Account_3
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_3, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_3"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
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

  @OpenPort @28_Account_Update_by_Changing_Data_Bundle
  Scenario: Testcase id = 28_Account_Update_by_Changing_Data_Bundle, description = Account Update by Changing Data Bundle
    Given Provisioning System Mode is set to "OFF" for testcase "28_Account_Update_by_Changing_Data_Bundle"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "75 MB - 2013" for "Included_Megabytes"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @32_Account_Update_by_Changing_Data_Speed
  Scenario: Testcase id = 32_Account_Update_by_Changing_Data_Speed, description = Account Update by Changing Data Speed
    Given Provisioning System Mode is set to "OFF" for testcase "32_Account_Update_by_Changing_Data_Speed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "speed2_64"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

#  @OpenPort @34_Account_Update_by_Changing_VCS_Plan
#  Scenario: Testcase id = 34_Account_Update_by_Changing_VCS_Plan, description = Account Update by Changing VCS Plan
#    Given Provisioning System Mode is set to "OFF" for testcase "34_Account_Update_by_Changing_VCS_Plan"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I click on the Contract ID
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_64"
#    Then I capture the data from account activation page
#    Then I capture the selected options for openport
#    Then I click on obj repo "Update Account" button
#    Then I wait 5 seconds
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @36_Account_Update_by_Changing_Voice_Bundle
  Scenario: Testcase id = 36_Account_Update_by_Changing_Voice_Bundle, description = Account Update by Changing Voice Bundle
    Given Provisioning System Mode is set to "OFF" for testcase "36_Account_Update_by_Changing_Voice_Bundle"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "120 Minutes - 2013" for "Included_Voice_Minutes"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @38_Account_Update_by_Changing_Language
  Scenario: Testcase id = 38_Account_Update_by_Changing_Language, description = Account Update by Changing Language
    Given Provisioning System Mode is set to "OFF" for testcase "38_Account_Update_by_Changing_Language"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Tagalog" for "Preferred_Language"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort  @Pre_req_Openport_Activate_Account_4
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_4, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_4"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
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

  @OpenPort @44_Account_Update_by_Changing_Voicemail_1_Settings
  Scenario: Testcase id = 44_Account_Update_by_Changing_Voicemail_1_Settings, description = Account Update by Changing Voicemail 1 Settings
    Given Provisioning System Mode is set to "OFF" for testcase "44_Account_Update_by_Changing_Voicemail_1_Settings"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Voice_Mail1"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @45_Account_Update_by_Removing_Voicemail_1
  Scenario: Testcase id = 45_Account_Update_by_Removing_Voicemail_1, description = Account Update by Removing Voicemail 1
    Given Provisioning System Mode is set to "OFF" for testcase "45_Account_Update_by_Removing_Voicemail_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I validate if "Voice_Mail1" is unchecked
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @46_Account_Update_by_Changing_Security_PIN_1
  Scenario: Testcase id = 46_Account_Update_by_Changing_Security_PIN_1, description = Account Update by Changing Security PIN 1
    Given Provisioning System Mode is set to "OFF" for testcase "46_Account_Update_by_Changing_Security_PIN_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "1402" for "Security1_Pin"
    Then I capture the selected options for openport
    Then I click on obj repo "Update Account" button
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

  @OpenPort @47_Account_Update_by_Removing_Security_PIN_1
  Scenario: Testcase id = 47_Account_Update_by_Removing_Security_PIN_1, description = Account Update by Removing Security PIN 1
    Given Provisioning System Mode is set to "OFF" for testcase "47_Account_Update_by_Removing_Security_PIN_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Security1_Pin_CheckBox"
    Then I capture the data from account activation page
    Then I capture the selected options for openport
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I validate if "Security1_Pin_CheckBox" is unchecked
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

  @OpenPort @48_Account_Update_by_Changing_2-Stage_PIN_1
  Scenario: Testcase id = 48_Account_Update_by_Changing_2-Stage_PIN_1, description = Account Update by Changing 2-Stage PIN 1
    Given Provisioning System Mode is set to "OFF" for testcase "48_Account_Update_by_Changing_2-Stage_PIN_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "1402" for "TwoStage_Pin1"
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @49_Account_Update_by_Removing_2-Stage_PIN_1
  Scenario: Testcase id = 49_Account_Update_by_Removing_2-Stage_PIN_1, description = Account Update by Removing 2-Stage PIN 1
    Given Provisioning System Mode is set to "OFF" for testcase "49_Account_Update_by_Removing_2-Stage_PIN_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "TwoStage1_Pin_CheckBox"
    Then I validate if "TwoStage1_Pin_CheckBox" is unchecked
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @51_Account_Update_by_Removing_Plus1_1
  Scenario: Testcase id = 51_Account_Update_by_Removing_Plus1_1, description = Account Update by Removing Plus1 1
    Given Provisioning System Mode is set to "OFF" for testcase "51_Account_Update_by_Removing_Plus1_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Line1_Plus_1"
    Then I validate if "Line1_Plus_1" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @56_Account_Update_by_Changing_Voicemail_2_Settings
  Scenario: Testcase id = 56_Account_Update_by_Changing_Voicemail_2_Settings, description = Account Update by Changing Voicemail 2 Settings
    Given Provisioning System Mode is set to "OFF" for testcase "56_Account_Update_by_Changing_Voicemail_2_Settings"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Voice_Mail2"
    Then I capture the data from account activation page
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

  @OpenPort @57_Account_Update_by_Removing_Voicemail_2
  Scenario: Testcase id = 57_Account_Update_by_Removing_Voicemail_2, description = Account Update by Removing Voicemail 2
    Given Provisioning System Mode is set to "OFF" for testcase "57_Account_Update_by_Removing_Voicemail_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Voice_Mail2"
    Then I validate if "Voice_Mail2" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @58_Account_Update_by_Changing_Security_PIN_2
  Scenario: Testcase id = 58_Account_Update_by_Changing_Security_PIN_2, description = Account Update by Changing Security PIN 2
    Given Provisioning System Mode is set to "OFF" for testcase "58_Account_Update_by_Changing_Security_PIN_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Security2_Pin_CheckBox"
    Then I enter "8563" for "Security2_Pin"
    Then I capture the data from account activation page
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

  @OpenPort @59_Account_Update_by_Removing_Security_PIN_2
  Scenario: Testcase id = 59_Account_Update_by_Removing_Security_PIN_2, description = Account Update by Removing Security PIN 2
    Given Provisioning System Mode is set to "OFF" for testcase "59_Account_Update_by_Removing_Security_PIN_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Security2_Pin_CheckBox"
    Then I validate if "Security2_Pin_CheckBox" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @60_Account_Update_by_Changing_2-Stage_PIN_2
  Scenario: Testcase id = 60_Account_Update_by_Changing_2-Stage_PIN_2, description = Account Update by Changing 2-Stage PIN 2
    Given Provisioning System Mode is set to "OFF" for testcase "60_Account_Update_by_Changing_2-Stage_PIN_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin2"
    Then I capture the data from account activation page
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

  @OpenPort @61_Account_Update_by_Removing_2-Stage_PIN_2
  Scenario: Testcase id = 61_Account_Update_by_Removing_2-Stage_PIN_2, description = Account Update by Changing 2-Stage PIN 2
    Given Provisioning System Mode is set to "OFF" for testcase "61_Account_Update_by_Removing_2-Stage_PIN_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "TwoStage2_Pin_CheckBox"
    Then I validate if "TwoStage2_Pin_CheckBox" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @63_Account_Update_by_Removing_Plus1_2
  Scenario: Testcase id = 63_Account_Update_by_Removing_Plus1_2, description = Account Update by Changing 2-Stage PIN 2
    Given Provisioning System Mode is set to "OFF" for testcase "63_Account_Update_by_Removing_Plus1_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Line2_Plus_1"
    Then I validate if "Line2_Plus_1" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @68_Account_Update_by_Changing_Voicemail_3_Settings
  Scenario: Testcase id = 68_Account_Update_by_Changing_Voicemail_3_Settings, description = Account Update by Changing Voicemail 3 Settings
    Given Provisioning System Mode is set to "OFF" for testcase "68_Account_Update_by_Changing_Voicemail_3_Settings"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Voice_Mail3"
    Then I capture the data from account activation page
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

  @OpenPort @69_Account_Update_by_Removing_Voicemail_3
  Scenario: Testcase id = 69_Account_Update_by_Removing_Voicemail_3, description = Account Update by Removing Voicemail 3
    Given Provisioning System Mode is set to "OFF" for testcase "69_Account_Update_by_Removing_Voicemail_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Voice_Mail3"
    Then I validate if "Voice_Mail3" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @70_Account_Update_by_Changing_Security_PIN_3
  Scenario: Testcase id = 70_Account_Update_by_Changing_Security_PIN_3, description = Account Update by Changing Security PIN 3
    Given Provisioning System Mode is set to "OFF" for testcase "70_Account_Update_by_Changing_Security_PIN_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "Security3_Pin_CheckBox"
    Then I enter "8563" for "Security3_Pin"
    Then I capture the data from account activation page
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

  @OpenPort @71_Account_Update_by_Removing_Security_PIN_3
  Scenario: Testcase id = 71_Account_Update_by_Removing_Security_PIN_3, description = Account Update by Removing Security PIN 3
    Given Provisioning System Mode is set to "OFF" for testcase "71_Account_Update_by_Removing_Security_PIN_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Security3_Pin_CheckBox"
    Then I validate if "Security3_Pin_CheckBox" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @72_Account_Update_by_Changing_2-Stage_PIN_3
  Scenario: Testcase id = 72_Account_Update_by_Changing_2-Stage_PIN_3, description = Account Update by Changing 2-Stage PIN 3
    Given Provisioning System Mode is set to "OFF" for testcase "72_Account_Update_by_Changing_2-Stage_PIN_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "TwoStage3_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin3"
    Then I capture the data from account activation page
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

  @OpenPort @73_Account_Update_by_Removing_2-Stage_PIN_3
  Scenario: Testcase id = 73_Account_Update_by_Removing_2-Stage_PIN_3, description = Account Update by Removing 2-Stage PIN 3
    Given Provisioning System Mode is set to "OFF" for testcase "73_Account_Update_by_Removing_2-Stage_PIN_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "TwoStage3_Pin_CheckBox"
    Then I validate if "TwoStage3_Pin_CheckBox" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @75_Account_Update_by_Removing_Plus1_3
  Scenario: Testcase id = 75_Account_Update_by_Removing_Plus1_3, description = Account Update by Removing 2-Stage PIN 3
    Given Provisioning System Mode is set to "OFF" for testcase "75_Account_Update_by_Removing_Plus1_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Line3_Plus_1"
    Then I validate if "Line3_Plus_1" is unchecked
    Then I capture the data from account activation page
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

  @OpenPort @42_Account_Update_by_Changing_Line_Type_1
  Scenario: Testcase id = 42_Account_Update_by_Changing_Line_Type_1, description = Account Update by Changing Line Type 1
    Given Provisioning System Mode is set to "OFF" for testcase "42_Account_Update_by_Changing_Line_Type_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Crew" for "Line_Type1"
    Then I capture the data from account activation page
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

  @OpenPort @54_Account_Update_by_Changing_Line_Type_2
  Scenario: Testcase id = 54_Account_Update_by_Changing_Line_Type_2, description = Account Update by Changing Line Type 2
    Given Provisioning System Mode is set to "OFF" for testcase "54_Account_Update_by_Changing_Line_Type_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Crew" for "Line_Type2"
    Then I capture the data from account activation page
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

  @OpenPort @66_Account_Update_by_Changing_Line_Type_3
  Scenario: Testcase id = 66_Account_Update_by_Changing_Line_Type_3, description = Account Update by Changing Line Type 3
    Given Provisioning System Mode is set to "OFF" for testcase "66_Account_Update_by_Changing_Line_Type_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Crew" for "Line_Type3"
    Then I capture the data from account activation page
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

  @OpenPort @76_Account_Update_by_Changing_Button_1_1
  Scenario: Testcase id = 76_Account_Update_by_Changing_Button_1_1, description = Account Update by Changing Button 1 1
    Given Provisioning System Mode is set to "OFF" for testcase "76_Account_Update_by_Changing_Button_1_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2882 - Tagalog" for "Programmable_btn1_Lin1"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_5
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_5, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_5"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @78_Account_Update_by_Changing_Button_1_2
  Scenario: Testcase id = 78_Account_Update_by_Changing_Button_1_2, description = Account Update by Changing Button 1 2
    Given Provisioning System Mode is set to "OFF" for testcase "78_Account_Update_by_Changing_Button_1_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    #Then I select "2881 - English" for "Programmable_btn1_Lin1"
    Then I select "2890 - Mandarin" for "Programmable_btn1_Lin2"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_6
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_6, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_6"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @80_Account_Update_by_Changing_Button_1_3
  Scenario: Testcase id = 80_Account_Update_by_Changing_Button_1_3, description = Account Update by Changing Button 1 3
    Given Provisioning System Mode is set to "OFF" for testcase "80_Account_Update_by_Changing_Button_1_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2889 - Japanese" for "Programmable_btn1_Lin3"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_7
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_7, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_7"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @82_Account_Update_by_Changing_Button_2_1
  Scenario: Testcase id = 82_Account_Update_by_Changing_Button_2_1, description = Account Update by Changing Button 2 1
    Given Provisioning System Mode is set to "OFF" for testcase "82_Account_Update_by_Changing_Button_2_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2889 - Japanese" for "Programmable_btn2_Lin1"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_8
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_8, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_8"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @84_Account_Update_by_Changing_Button_2_2
  Scenario: Testcase id = 84_Account_Update_by_Changing_Button_2_2, description = Account Update by Changing Button 2 2
    Given Provisioning System Mode is set to "OFF" for testcase "84_Account_Update_by_Changing_Button_2_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2890 - Mandarin" for "Programmable_btn2_Lin2"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_9
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_9, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_9"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @86_Account_Update_by_Changing_Button_2_3
  Scenario: Testcase id = 86_Account_Update_by_Changing_Button_2_3, description = Account Update by Changing Button 2 3
    Given Provisioning System Mode is set to "OFF" for testcase "86_Account_Update_by_Changing_Button_2_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2881 - English" for "Programmable_btn2_Lin3"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_10
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_10, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_10"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @88_Account_Update_by_Changing_Button_3_1
  Scenario: Testcase id = 88_Account_Update_by_Changing_Button_3_1, description = Account Update by Changing Button 3 1
    Given Provisioning System Mode is set to "OFF" for testcase "88_Account_Update_by_Changing_Button_3_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2881 - English" for "Programmable_btn3_Lin1"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_11
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_11, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_11"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @90_Account_Update_by_Changing_Button_3_2
  Scenario: Testcase id = 90_Account_Update_by_Changing_Button_3_2, description = Account Update by Changing Button 3 2
    Given Provisioning System Mode is set to "OFF" for testcase "90_Account_Update_by_Changing_Button_3_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2882 - Tagalog" for "Programmable_btn3_Lin2"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_12
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_12, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_12"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @92_Account_Update_by_Changing_Button_3_3
  Scenario: Testcase id = 92_Account_Update_by_Changing_Button_3_3, description = Account Update by Changing Button 3 3
    Given Provisioning System Mode is set to "OFF" for testcase "92_Account_Update_by_Changing_Button_3_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2889 - Japanese" for "Programmable_btn3_Lin3"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_13
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_13, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_13"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @94_Account_Update_by_Changing_Button_4_1
  Scenario: Testcase id = 94_Account_Update_by_Changing_Button_4_1, description = Account Update by Changing Button 4 1
    Given Provisioning System Mode is set to "OFF" for testcase "94_Account_Update_by_Changing_Button_4_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2890 - Mandarin" for "Programmable_btn4_Lin1"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_14
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_14, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_14"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @96_Account_Update_by_Changing_Button_4_2
  Scenario: Testcase id = 96_Account_Update_by_Changing_Button_4_2, description = Account Update by Changing Button 4 2
    Given Provisioning System Mode is set to "OFF" for testcase "96_Account_Update_by_Changing_Button_4_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2881 - English" for "Programmable_btn4_Lin2"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_15
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_15, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_15"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @98_Account_Update_by_Changing_Button_4_3
  Scenario: Testcase id = 98_Account_Update_by_Changing_Button_4_3, description = Account Update by Changing Button 4 3
    Given Provisioning System Mode is set to "OFF" for testcase "98_Account_Update_by_Changing_Button_4_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2882 - Tagalog" for "Programmable_btn4_Lin3"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_16
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_16, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_16"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @100_Account_Update_by_Changing_Button_5_1
  Scenario: Testcase id = 100_Account_Update_by_Changing_Button_5_1, description = Account Update by Changing Button 5 1
    Given Provisioning System Mode is set to "OFF" for testcase "100_Account_Update_by_Changing_Button_5_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2882 - Tagalog" for "Programmable_btn5_Lin1"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_17
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_17, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_17"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @102_Account_Update_by_Changing_Button_5_2
  Scenario: Testcase id = 102_Account_Update_by_Changing_Button_5_2, description = Account Update by Changing Button 5 2
    Given Provisioning System Mode is set to "OFF" for testcase "102_Account_Update_by_Changing_Button_5_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2889 - Japanese" for "Programmable_btn5_Lin2"
    Then I capture the data from account activation page
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

  @OpenPort  @Pre_req_Openport_Activate_Account_18
  Scenario: Testcase id = Pre_req_Openport_Activate_Account_18, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "Pre_req_Openport_Activate_Account_18"
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
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
    #Then I check "Line1_Plus_1"
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

  @OpenPort @104_Account_Update_by_Changing_Button_5_3
  Scenario: Testcase id = 104_Account_Update_by_Changing_Button_5_3, description = Account Update by Changing Button 5 3
    Given Provisioning System Mode is set to "OFF" for testcase "104_Account_Update_by_Changing_Button_5_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "showLink"
    Then I select "2890 - Mandarin" for "Programmable_btn5_Lin3"
    Then I capture the data from account activation page
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