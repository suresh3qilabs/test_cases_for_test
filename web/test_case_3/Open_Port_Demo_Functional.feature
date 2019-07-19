Feature: This feature file tests all activations & Account update scenarios for Open port Demo Functional Scenarios

  Background:
    * I read the data from the excel "iridium_Demo_Functional.xlsx" and "OP_DEMO" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort @001_OpenPort_Account_Activation_with_Demo_Plan_with_Valid_SIM
  Scenario: Testcase id = 001_OpenPort_Account_Activation_with_Demo_Plan_with_Valid_SIM, description = Activate OpenPort Account with Demo Plan with Valid SIM
    Given Provisioning System Mode is set to "OFF" for testcase "001_OpenPort_Account_Activation_with_Demo_Plan_with_Valid_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I save the number of demo_trial plans available
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "Data Demo" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "Voice Demo" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
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
    Then I verify "Demo_Trial" count is reduced by 1
    Then I verify charges for OP Demo Acount
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I validate the service order for activation

  @OpenPort @002_Openport_Account_Activation_with_Demo_Plan_with_Invalid_SIM
  Scenario: Testcase id = 002_Openport_Account_Activation_with_Demo_Plan_with_Invalid_SIM, description = Account Activation with Demo Plan with Valid SIM
    Given Provisioning System Mode is set to "OFF" for testcase "002_Openport_Account_Activation_with_Demo_Plan_with_Invalid_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "8988169003000025399" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

          #####  Note: Account Update scenarios

  @OpenPort @_Openport_Activate_Commercial_Account_Pre_req_1
  Scenario: Testcase id = _Openport_Activate_Commercial_Account_Pre_req_1, description = Activate a Open Port Account pre req
    Given Provisioning System Mode is set to "OFF" for testcase "_Openport_Activate_Commercial_Account_Pre_req_1"
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
    Then I enter "4567" for "TwoStage_Pin1"
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
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I validate the service order for activation

  @OpenPort @005_Openport_Account_Update_with_Commercial_Plan_by_Changing_to_Demo_Plan_(Not_Allowed)
  Scenario: Testcase id = 005_Openport_Account_Update_with_Commercial_Plan_by_Changing_to_Demo_Plan_(Not_Allowed), description = Account Update with Commercial Plan by Changing to Demo Plan (Not Allowed)
    Given Provisioning System Mode is set to "OFF" for testcase "005_Openport_Account_Update_with_Commercial_Plan_by_Changing_to_Demo_Plan_(Not_Allowed)"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo_Trial" plan is not available

  @OpenPort @_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_2
  Scenario: Testcase id = _Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_2, description = Account Activation with Demo Plan with Valid SIM
    Given Provisioning System Mode is set to "OFF" for testcase "_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I save the number of demo_trial plans available
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "Data Demo" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "Voice Demo" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
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
    Then I verify "Demo_Trial" count is reduced by 1
    Then I verify charges for OP Demo Acount
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I validate the service order for activation

  @OpenPort @006_Openport_Account_Update_with_Demo_Plan_by_Changing_to_Individual_Commercial_Plan
  Scenario: Testcase id = 006_Openport_Account_Update_with_Demo_Plan_by_Changing_to_Individual_Commercial_Plan, description = Account Update with Demo Plan by Changing to Individual Commercial Plan
    Given Provisioning System Mode is set to "OFF" for testcase "006_Openport_Account_Update_with_Demo_Plan_by_Changing_to_Individual_Commercial_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "10 MB - 2013" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
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
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the account is updated successfully on BRM Server
    Then I verify plusOne for open port
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I verify "Demo_Trial" count is increased by 1
    Then I verify charges for OP Demo Acount

  @OpenPort @_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_3
  Scenario: Testcase id = _Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_3, description = Account Activation with Demo Plan with Valid SIM
    Given Provisioning System Mode is set to "OFF" for testcase "_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I save the number of demo_trial plans available
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "Data Demo" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "Voice Demo" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
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
    Then I verify "Demo_Trial" count is reduced by 1
    Then I verify charges for OP Demo Acount
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I validate the service order for activation

  @OpenPort @007_Openport_Account_Update_with_Demo_Plan_by_Changing_to_Shared_Commercial_Plan
  Scenario: Testcase id = 007_Openport_Account_Update_with_Demo_Plan_by_Changing_to_Shared_Commercial_Plan, description = Activate a Open Port Account With Dynamic Shared Plan
    Given Provisioning System Mode is set to "OFF" for testcase "007_Openport_Account_Update_with_Demo_Plan_by_Changing_to_Shared_Commercial_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I select "Shared" for "ContractType"
    Then I select "Dynamic Shared Group" for "Shared_Type"
    Then I select "IOP_25MB-STD_POOL" for "Shared_Group"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "English" for "Preferred_Language"
    Then I select "Standard" for "Line_Type1"
    Then I select "Standard" for "Line_Type2"
    Then I select "Standard" for "Line_Type3"
    Then I check "Line1_Plus_1"
    Then I capture the selected options for openport
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the selected options for openport
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I verify "Demo_Trial" count is increased by 1
    Then I verify charges for OP Demo Acount

  @OpenPort @_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_4
  Scenario: Testcase id = _Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_4, description = Account Activation with Demo Plan with Valid SIM
    Given Provisioning System Mode is set to "OFF" for testcase "_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges_Pre_req_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I save the number of demo_trial plans available
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "Data Demo" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "Voice Demo" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
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
    Then I verify "Demo_Trial" count is reduced by 1
    Then I verify charges for OP Demo Acount
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I validate the service order for activation

  @OpenPort @008_Openport_Account_Suspension_with_Demo_Plan
  Scenario: Testcase id = 008_Openport_Account_Suspension_with_Demo_Plan, description = Account Suspension with Demo Plan
    Given Provisioning System Mode is set to "OFF" for testcase "008_Openport_Account_Suspension_with_Demo_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo_Trial" no change in Demo count
    Then I verify charges for OP Demo Acount

  @OpenPort @009_Openport_Account_Un-Suspension_with_Demo_Plan
  Scenario: Testcase id = 009_Openport_Account_Un-Suspension_with_Demo_Plan, description = Account Un-Suspension with Demo Plan
    Given Provisioning System Mode is set to "OFF" for testcase "009_Openport_Account_Un-Suspension_with_Demo_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo_Trial" no change in Demo count
    Then I verify charges for OP Demo Acount

  @OpenPort @010_Openport_Account_Deactivation_with_Demo_Plan
  Scenario: Testcase id = 010_Openport_Account_Deactivation_with_Demo_Plan, description = Account Deactivation with Demo Plan
    Given Provisioning System Mode is set to "OFF" for testcase "010_Openport_Account_Deactivation_with_Demo_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I select the value "OpenPort" for "ServiceType"
    Then I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I change the status to "DEACTIVE"
    Then I wait 15 seconds
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I verify "Demo_Trial" count is increased by 1
    Then I cleanup the system
    Then I verify charges for OP Demo Acount