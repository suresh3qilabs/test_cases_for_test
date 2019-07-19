Feature: This feature file tests all End to End Demo validations for Openport

  Background:
    * I read the data from the excel "Config_OpenPort_Regression.xlsx" and "End_To_End_Demo_Validations" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort @TC_001_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges
  Scenario: Testcase id = TC_001_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges, description = Activate Open Port Demo  account validate Demo count
    Given Provisioning System Mode is set to "OFF" for testcase "TC_001_Activate_OpenPort_Account_DemoCount_Validation_and_validate_charges"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC_002_Active_to_Suspend_Demo_OpenPort_Validated_demo_count_not_changed
  Scenario: Testcase id = TC_002_Active_to_Suspend_Demo_OpenPort_Validated_demo_count_not_changed, description = Active to Suspend Demo Postpaid Validated demo count not changed and validate charges
    Given Provisioning System Mode is set to "OFF" for testcase "TC_002_Active_to_Suspend_Demo_OpenPort_Validated_demo_count_not_changed"
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

  @OpenPort @TC_003_Suspended_to_Active_Demo_account_Validate_count_increased
  Scenario: Testcase id = TC_003_Suspended_to_Active_Demo_account_Validate_count_increased, description = Suspend to Active Demo count Validated no change in demo count
    Given Provisioning System Mode is set to "OFF" for testcase "TC_003_Suspended_to_Active_Demo_account_Validate_count_increased"
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

  @OpenPort @TC_004_Active_to_Deactive_Demo_Account_Validate_demo_count_increased_after_deactivation
  Scenario: Testcase id = TC_004_Active_to_Deactive_Demo_Account_Validate_demo_count_increased_after_deactivation, description = Active to Deactivation Demo Account Validate demo count increased after deactivation and validate charges
    Given Provisioning System Mode is set to "OFF" for testcase "TC_004_Active_to_Deactive_Demo_Account_Validate_demo_count_increased_after_deactivation"
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

  @OpenPort @TC_005_Activate_OpenPort_Account_DemoCount_Validation_pre_req2
  Scenario: Testcase id = TC_005_Activate_OpenPort_Account_DemoCount_Validation_pre_req2, description = Activate Open Port Demo  account validate Demo count
    Given Provisioning System Mode is set to "OFF" for testcase "TC_005_Activate_OpenPort_Account_DemoCount_Validation_pre_req2"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC_006_Demo_Plan_Transition_To_None_OpenPort
  Scenario: Testcase id = TC_006_Demo_Plan_Transition_To_None_OpenPort, description = Transition the Demo account to None plan and validate demo count in increased and Validate charges
    Given Provisioning System Mode is set to "OFF" for testcase "TC_006_Demo_Plan_Transition_To_None_OpenPort"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "10 MB - 2013" for "Included_Megabytes"
    Then I click on "speed1_32"
    Then I select "None - 2013" for "Commitment"
    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the selected options for openport
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
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I verify "Demo_Trial" count is increased by 1
    Then I verify charges for OP Demo Acount

  @OpenPort @TC_007_Openport_Activate_Commercial_Account_Pre_req_3
  Scenario: Testcase id = TC_007_Openport_Activate_Commercial_Account_Pre_req_3, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC_007_Openport_Activate_Commercial_Account_Pre_req_3"
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

  @OpenPort @TC_008_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan
  Scenario: Testcase id = TC_008_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan, description = change the commercial account back to Demo Validate cannot be transitioned to Demo plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC_008_change_the_commercial_account_back_to_Demo_Validate_cannot_be_transitioned_to_Demo_plan"
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

  @OpenPort @TC_009_Activate_OpenPort_Account_DemoCount_Validation_pre_req4
  Scenario: Testcase id = TC_009_Activate_OpenPort_Account_DemoCount_Validation_pre_req4, description = Activate Open Port Demo  account validate Demo count
    Given Provisioning System Mode is set to "OFF" for testcase "TC_009_Activate_OpenPort_Account_DemoCount_Validation_pre_req4"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC_010_Openport_Demo_Account_Update_Standard_To_Crew
  Scenario: Testcase id = TC_010_Openport_Demo_Account_Update_Standard_To_Crew = Update Open Port account from standard to crew
    Given Provisioning System Mode is set to "OFF" for testcase "TC_010_Openport_Demo_Account_Update_Standard_To_Crew"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I save the number of demo_trial plans available
    Then I select "Crew" for "Line_Type3"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the selected options for openport
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
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "Demo Plan" for "Demo_Trial"
    Then I verify "Demo_Trial" no change in Demo count
    Then I verify charges for OP Demo Acount

  @OpenPort @TC_011_Activate_OpenPort_Account_DemoCount_Validation_pre_req5
  Scenario: Testcase id = TC_011_Activate_OpenPort_Account_DemoCount_Validation_pre_req5, description = Activate Open Port Demo  account validate Demo count
    Given Provisioning System Mode is set to "OFF" for testcase "TC_011_Activate_OpenPort_Account_DemoCount_Validation_pre_req5"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC_012_Openport_Demo_Account_SIM_Device_Swap
  Scenario: Testcase id = TC_012_Openport_Demo_Account_SIM_Device_Swap, description = SIM Swap on Open Port Demo Active account and validate demo count is same
    Given Provisioning System Mode is set to "OFF" for testcase "TC_012_Openport_Demo_Account_SIM_Device_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I save the number of demo_trial plans available
    Then click on swap device link and enter value based on "OpenPort Sim Query swapping"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I verify the new Device id on BRM DB Server
    Then I verify "Demo_Trial" no change in Demo count
    Then I verify charges for OP Demo Acount