Feature: This feature file tests all the scenarios from OP_Pooling_Group tab on iridium_service_Functional_Account_Pooling_Group.xlsx

  Background:
    * I read the data from the excel "iridium_service_Functional_Account_Pooling_Group.xlsx" and "OP_Pooling_Group" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

#  @OpenPort @_Account_Activation_with_Pooling_Plan_with_Invalid_SIM
#  Scenario:Testcase id = _Account_Activation_with_Pooling_Plan_with_Invalid_SIM, description = Account Activation with Pooling Plan with InValid SIM,
#    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Activation_with_Pooling_Plan_with_Invalid_SIM"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "TEST" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
  @OpenPort @_Account_Activation_with_Pooling_Plan_with_Valid_SIM
  Scenario:Testcase id = _Account_Activation_with_Pooling_Plan_with_Valid_SIM, description = Account Activation with Pooling Plan with Valid SIM,
    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Activation_with_Pooling_Plan_with_Valid_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Shared" for "ContractType"
    Then I select "Dynamic Shared Group" for "Shared_Type"
    Then I select "IOP_25MB-STD_POOL" for "Shared_Group"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I select "Standard" for "Line_Type2"
    Then I select "Standard" for "Line_Type3"
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
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation
    Then I verify the account is activated successfully on BRM database
    Then I verify plusOne for open port

  @OpenPort @_Account_Update_with_Pooling_Plan_by_Changing_to_Individual_Plan
  Scenario:Testcase id = _Account_Update_with_Pooling_Plan_by_Changing_to_Individual_Plan, description = Account Update with Pooling Plan by Changing to Individual Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Update_with_Pooling_Plan_by_Changing_to_Individual_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "10 MB - 2013" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
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

  @OpenPort @_Account_Update_with_Pooling_Plan
  Scenario:Testcase id = _Account_Update_with_Pooling_Plan, description = Account Update with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Update_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Shared" for "ContractType"
    Then I select "Dynamic Shared Group" for "Shared_Type"
    Then I select "IOP_25MB-STD_POOL" for "Shared_Group"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "English" for "Preferred_Language"
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

##  Scenario:Testcase id = _Account_Update_with_Pooling_Plan_by_Changing_to_Another_Pooling_Plan, description = Account Update with Pooling Plan by Changing to Another Pooling Plan,
##    * I execute "_Account_Update_with_Pooling_Plan_by_Changing_to_Another_Pooling_Plan" from "iridium_service_Functional_Account_Pooling_Group.xlsx"

  @OpenPort @_Account_Suspension_with_Pooling_Plan
  Scenario:Testcase id = _Account_Suspension_with_Pooling_Plan, description = Account Suspension with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Suspension_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @OpenPort @_Account_Un-Suspension_with_Pooling_Plan
  Scenario:Testcase id = _Account_Un-Suspension_with_Pooling_Plan, description = Account Un-Suspension with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Un-Suspension_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @OpenPort @_Account_Deactivation_with_Pooling_Plan
  Scenario:Testcase id = _Account_Deactivation_with_Pooling_Plan, description = Account Deactivation with Pooling Plan,
    Given Provisioning System Mode is set to "OFF" for testcase "_Account_Deactivation_with_Pooling_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server