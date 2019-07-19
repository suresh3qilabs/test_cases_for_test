Feature: This feature file tests all Smoke Test scenarios for Open Port

  Background:
    * I read the data from the excel "Config_OpenPort_SmokeTest.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab


  @OpenPort @Openport_Activate_Account
  Scenario: Testcase id = Openport_Activate_Account, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Activate_Account"
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
    Then I capture the selected options for openport
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Activate_Account_With_Combo_Plan
  Scenario: Testcase id = Openport_Activate_Account_With_Combo_Plan, description = Activate a Open Port Account With Combo Plan
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Activate_Account_With_Combo_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "Combo D" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "2 Years - Combo" for "Commitment"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I select "Standard" for "Line_Type2"
    Then I select "Standard" for "Line_Type3"
    Then I check "Voice_Mail1"
    Then I check "Voice_Mail2"
    Then I check "Voice_Mail3"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "Security2_Pin_CheckBox"
    Then I enter "5678" for "Security2_Pin"
    Then I check "Security3_Pin_CheckBox"
    Then I enter "2345" for "Security3_Pin"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Activate_Account_With_VSAT_Pricing_Plan
  Scenario: Testcase id = Openport_Activate_Account_With_VSAT_Pricing_Plan, description = Activate a Open Port Account With VSAT Pricing Plan
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Activate_Account_With_VSAT_Pricing_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "VSAT Pricing" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "None - 2013" for "Commitment"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "200 MB VSAT BACKUP" for "Included_Megabytes"
    Then I select "No Voice Bundle VSAT" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I check "Auto_MSISDN"
    Then I select "Standard" for "Line_Type1"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "5632" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "1234" for "TwoStage_Pin1"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Activate_Account_With_Dynamic_Shared_Plan
  Scenario: Testcase id = Openport_Activate_Account_With_Dynamic_Shared_Plan, description = Activate a Open Port Account With Dynamic Shared Plan
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Activate_Account_With_Dynamic_Shared_Plan"
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
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "5678" for "TwoStage_Pin2"
    Then I capture the selected options for openport
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Activate_Account_pre_req_1
  Scenario: Testcase id = Openport_Account_Activate_Account_pre_req_1, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Activate_Account_pre_req_1"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_ACTIVE_to_SUSPENDED
  Scenario: Testcase id = Openport_Account_ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @OpenPort @Openport_Account_SUSPENDED_to_ACTIVE
  Scenario: Testcase id = Openport_Account_SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @OpenPort @Openport_Account_ACTIVE_to_DEACTIVE
  Scenario: Testcase id = Openport_Account_ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @OpenPort @Openport_Account_Activate_Account_pre_req_2
  Scenario: Testcase id = Openport_Account_Activate_Account_pre_req_2, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Activate_Account_pre_req_2"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = Openport_Account_ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @OpenPort @Openport_Account_SUSPENDED_to_DEACTIVE
  Scenario: Testcase id = Openport_Account_SUSPENDED_to_DEACTIVE, description = Change status from SUSPEND to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_SUSPENDED_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @OpenPort @Openport_Account_Activate_Account_pre_req_3
  Scenario: Testcase id = Openport_Account_Activate_Account_pre_req_3, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Activate_Account_pre_req_3"
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
    Then I select "600 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "3 Years - 2013" for "Commitment"
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
    Then I enter "7890" for "TwoStage_Pin1"
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "5643" for "TwoStage_Pin2"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Update_Plan_Transition
  Scenario: Testcase id = Openport_Account_Update_Plan_Transition, description = Update Plan for Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Plan_Transition"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "120 Minutes - 2013" for "Included_Voice_Minutes"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @Openport_Account_Update_Plan_Transition_Individual_to_Group
  Scenario: Testcase id = Openport_Account_Update_Plan_Transition_Individual_to_Group, description = Update Plan for Open Port Account from Individual to Group
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Plan_Transition_Individual_to_Group"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Shared" for "ContractType"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @Openport_Account_Activate_Account_pre_req_4
  Scenario: Testcase id = Openport_Account_Activate_Account_pre_req_4, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Activate_Account_pre_req_4"
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
    Then I select "10 MB - 2013" for "Included_Megabytes"
    Then I click on "speed1_32"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Update_Plan_Transition_Individual_to_Combo
  Scenario: Testcase id = Openport_Account_Update_Plan_Transition_Individual_to_Combo, description = Update Plan for Open Port Account from Individual to Combo
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Plan_Transition_Individual_to_Combo"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Combo D" for "Promo_Code"
    Then I select "2 Years - Combo" for "Commitment"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @Openport_Activate_Account_With_Voicemail_Enabled
  Scenario: Testcase id = Openport_Activate_Account_With_Voicemail_Enabled, description = Activate a Open Port Account With Voicemail Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Activate_Account_With_Voicemail_Enabled"
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
    Then I enter "7890" for "TwoStage_Pin1"
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "5643" for "TwoStage_Pin2"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Update_Account_To_Disable_Voicemail
  Scenario: Testcase id = Openport_Account_Update_Account_To_Disable_Voicemail, description = Update a Open Port Account With Voicemail Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Account_To_Disable_Voicemail"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Voice_Mail1"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @Openport_Activate_Account_With_Restrict_SC_Flag_Enabled
  Scenario: Testcase id = Openport_Activate_Account_With_Restrict_SC_Flag_Enabled, description = Activate a Open Port Account With Restrict Scratch Card Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Activate_Account_With_Restrict_SC_Flag_Enabled"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "None" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "Yes" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "25 MB - 2013" for "Included_Megabytes"
    Then I click on "speed2_64"
    Then I select "3 Years - 2013" for "Commitment"
    Then I select "600 Minutes - 2013" for "Included_Voice_Minutes"
    Then I select "English" for "Preferred_Language"
    Then I enter "OpenPort MSISDN1" for "MSISDN1"
    Then I enter "OpenPort MSISDN2" for "MSISDN2"
    Then I enter "OpenPort MSISDN3" for "MSISDN3"
    Then I select "Standard" for "Line_Type1"
    Then I select "Standard" for "Line_Type2"
    Then I select "Crew" for "Line_Type3"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "Security2_Pin_CheckBox"
    Then I enter "1234" for "Security2_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "5643" for "TwoStage_Pin2"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Update_Account_To_Disable_Restrict_SC_Flag
  Scenario: Testcase id = Openport_Account_Update_Account_To_Disable_Restrict_SC_Flag, description = Update a Open Port Account With Restrict Scratch Card Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Account_To_Disable_Restrict_SC_Flag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "No" for "Restrict_Other_Scratch_Cards"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @Openport_Activate_Account_With_SIM_Lock_Enabled
  Scenario: Testcase id =  Openport_Activate_Account_With_SIM_Lock_Enabled, description = Activate a Open Port Account With SIM Lock Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Activate_Account_With_SIM_Lock_Enabled"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Activate_Account_pre_req_5
  Scenario: Testcase id = Openport_Account_Activate_Account_pre_req_5, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Activate_Account_pre_req_5"
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
    Then I enter "OpenPort MSISDN1" for "MSISDN1"
    Then I enter "OpenPort MSISDN2" for "MSISDN2"
    Then I enter "OpenPort MSISDN3" for "MSISDN3"
    Then I select "Standard" for "Line_Type1"
    Then I select "Standard" for "Line_Type2"
    Then I select "Standard" for "Line_Type3"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "Security2_Pin_CheckBox"
    Then I enter "1234" for "Security2_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "5643" for "TwoStage_Pin2"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Update_Account_With_2Stage_Update_PIN
  Scenario: Testcase id = Openport_Account_Update_Account_With_2Stage_Update_PIN, description = Update 2 Stage PIN on a Open Port Active Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Account_With_2Stage_Update_PIN"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "8884" for "TwoStage_Pin1"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
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

  @OpenPort @Openport_Account_Update_Account_With_Security_PIN_Update
  Scenario: Testcase id = Openport_Account_Update_Account_With_Security_PIN_Update, description = Update Security PIN on a Open Port Active Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Account_With_Security_PIN_Update"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "9959" for "Security1_Pin"
    Then I click on obj repo "Update Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @Openport_Account_Activate_Account_With_Plus1_Enable
  Scenario: Testcase id = Openport_Account_Activate_Account_With_Plus1_Enable, description = Activate a Open Port Account with plus1 enabled
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Activate_Account_With_Plus1_Enable"
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
    Then I enter "OpenPort MSISDN1" for "MSISDN1"
    Then I enter "OpenPort MSISDN2" for "MSISDN2"
    Then I enter "OpenPort MSISDN3" for "MSISDN3"
    Then I select "Standard" for "Line_Type1"
    Then I select "Standard" for "Line_Type2"
    Then I select "Standard" for "Line_Type3"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "Security2_Pin_CheckBox"
    Then I enter "1234" for "Security2_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7890" for "TwoStage_Pin1"
    Then I check "TwoStage2_Pin_CheckBox"
    Then I enter "5643" for "TwoStage_Pin2"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_Update_Account_To_Disable_Plus1
  Scenario: Testcase id = Openport_Account_Update_Account_To_Disable_Plus1, description = Update a Open Port Account With Plus1 Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Update_Account_To_Disable_Plus1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Line1_Plus_1"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @Openport_Account_Activate_Account_pre_req_6
  Scenario: Testcase id = Openport_Account_Activate_Account_pre_req_6, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "Openport_Account_Activate_Account_pre_req_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I select "Individual" for "ContractType"
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
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort @Openport_Account_SIM_Swap
  Scenario: Testcase id = Openport_Account_SIM_Swap, description = SIM Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "Openport_Account_SIM_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort Sim Query swapping"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the new Device id on BRM DB Server

  @OpenPort @Openport_Account_IP_Swap
  Scenario: Testcase id = Openport_Account_IP_Swap, description = IP Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "Openport_Account_IP_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort IP Address Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the new Device id on BRM DB Server

  @OpenPort @Openport_Account_MSISDN1_Swap
  Scenario: Testcase id = Openport_Account_MSISDN1_Swap, description = MSISDN 1 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "Openport_Account_MSISDN1_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the new Device id on BRM DB Server

  @OpenPort @Openport_Account_MSISDN1_and_MSISDN2_Swap
  Scenario: Testcase id = Openport_Account_MSISDN1_and_MSISDN2_Swap, description = MSISDN 1 and MSISDN 2 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "Openport_Account_MSISDN1_and_MSISDN2_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the new Device id on BRM DB Server

  @OpenPort @Openport_Account_MSISDN1_MSISDN2_and_MSISDN3_Swap
  Scenario: Testcase id = Openport_Account_MSISDN1_MSISDN2_and_MSISDN3_Swap, description = MSISDN 1 MSISDN 2 and MSISDN 3 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "Openport_Account_MSISDN1_MSISDN2_and_MSISDN3_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the new Device id on BRM DB Server

  @OpenPort @Openport_Account_MSISDN1_and_MSISDN3_Swap
  Scenario: Testcase id = Openport_Account_MSISDN1_and_MSISDN3_Swap, description = MSISDN 1 and MSISDN 3 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "Openport_Account_MSISDN1_and_MSISDN3_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the new Device id on BRM DB Server

  @OpenPort @Openport_Account_MSISDN2_and_MSISDN3_Swap
  Scenario: Testcase id = Openport_Account_MSISDN2_and_MSISDN3_Swap, description = MSISDN 2 and MSISDN 3 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "Openport_Account_MSISDN2_and_MSISDN3_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify the new Device id on BRM DB Server