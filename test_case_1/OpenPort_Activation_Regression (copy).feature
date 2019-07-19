Feature: This feature file tests all activation scenarios for Open port Regression

  Background:
    * I read the data from the excel "Config_OpenPort_Regression.xlsx" and "Account_Activation" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort  @TC_001_Openport_Activate_Individual_Account
  Scenario: Testcase id = TC_001_Openport_Activate_Individual_Account, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC_001_Openport_Activate_Individual_Account"
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
    #uncomment this wehn the BUg is fixed
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort  @TC_002_Openport_Activate_Account_3_Stadard_LineTypes
  Scenario: Testcase id = TC_002_Openport_Activate_Account_3_Stadard_LineTypes, description = Activate an Open Port Account with all 3 standard line type
    Given Provisioning System Mode is set to "OFF" for testcase "TC_002_Openport_Activate_Account_3_Stadard_LineTypes"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

    @OpenPort  @TC_003_Openport_Activate_Account_DefaultLineType_Is_Standard
  Scenario: Testcase id = TC_003_Openport_Activate_Account_DefaultLineType_Is_Standard, description = Activate an Open Port Account to check default Line Type
    Given Provisioning System Mode is set to "OFF" for testcase "TC_003_Openport_Activate_Account_DefaultLineType_Is_Standard"
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
    Given I verify all LineTypes are set to standard

  @OpenPort  @TC_004_Openport_Activate_Account_3Crew_LinesTypes
  Scenario: Testcase id = TC_004_Openport_Activate_Account_3Crew_LinesTypes, description = Activate an Open Port Account with 3 crew Line Types
    Given Provisioning System Mode is set to "OFF" for testcase "TC_004_Openport_Activate_Account_3Crew_LinesTypes"
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
    Then I select "Crew" for "Line_Type1"
    Then I select "Crew" for "Line_Type2"
    Then I select "Crew" for "Line_Type3"
    Then I capture the selected options for openport
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I validate the service order for activation

    @OpenPort  @TC_005_Openport_Activate_Account_3Crew_LinesTypes_All_Other_Options_Disabled
  Scenario: Testcase id = TC_005_Openport_Activate_Account_3Crew_LinesTypes_All_Other_Options_Disabled, description = Activate an Open Port Account with 3 crew Line Types and voicemail, secuirty, twostage and PlusOne are disabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_005_Openport_Activate_Account_3Crew_LinesTypes_All_Other_Options_Disabled"
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
    Then I select "Crew" for "Line_Type1"
    Then I verify "Voice_Mail1" is "disabled"
    Then I verify "Security1_Pin_CheckBox" is "disabled"
    Then I verify "Security1_Pin" is "disabled"
    Then I verify "TwoStage1_Pin_CheckBox" is "disabled"
    Then I verify "TwoStage_Pin1" is "disabled"
    Then I verify "Line1_Plus_1" is "disabled"
    Then I select "Crew" for "Line_Type2"
    Then I verify "Voice_Mail2" is "disabled"
    Then I verify "Security2_Pin_CheckBox" is "disabled"
    Then I verify "Security2_Pin" is "disabled"
    Then I verify "TwoStage2_Pin_CheckBox" is "disabled"
    Then I verify "TwoStage_Pin2" is "disabled"
    Then I verify "Line2_Plus_1" is "disabled"
    Then I select "Crew" for "Line_Type3"
    Then I verify "Voice_Mail3" is "disabled"
    Then I verify "Security3_Pin_CheckBox" is "disabled"
    Then I verify "Security3_Pin" is "disabled"
    Then I verify "TwoStage3_Pin_CheckBox" is "disabled"
    Then I verify "TwoStage_Pin3" is "disabled"
    Then I verify "Line3_Plus_1" is "disabled"

      @OpenPort  @TC_006_Openport_Activate_Account_Auto_MSISDN
  Scenario: Testcase id = TC_006_Openport_Activate_Account_Auto_MSISDN, description = Activate an Open Port Account with Auto MSISDN numbers
    Given Provisioning System Mode is set to "OFF" for testcase "TC_006_Openport_Activate_Account_Auto_MSISDN"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

    @OpenPort  @TC_007_Openport_Activate_Account_VoiceMail_Enabled
  Scenario: Testcase id = TC_007_Openport_Activate_Account_VoiceMail_Enabled, description = Activate an Open Port Account with VoiceMail enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_007_Openport_Activate_Account_VoiceMail_Enabled"
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
    Then I validate if "Voice_Mail1" is checked
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

    @OpenPort  @TC_008_Openport_Activate_Account_TwoStage_Enabled_With_Pin
  Scenario: Testcase id = TC_008_Openport_Activate_Account_TwoStage_Enabled_With_Pin, description = Activate an Open Port Account with two stage enabled with pin
    Given Provisioning System Mode is set to "OFF" for testcase "TC_008_Openport_Activate_Account_TwoStage_Enabled_With_Pin"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

    @OpenPort  @TC_009_Openport_Activate_Account_TwoStage_Enabled_Without_Pin
  Scenario: Testcase id = TC_009_Openport_Activate_Account_TwoStage_Enabled_Without_Pin, description = Activate an Open Port Account with two stage enabled without pin
    Given Provisioning System Mode is set to "OFF" for testcase "TC_009_Openport_Activate_Account_TwoStage_Enabled_Without_Pin"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

        @OpenPort  @TC_010_Openport_Activate_Account_PlusOne_LineOne_Enabled
  Scenario: Testcase id = TC_010_Openport_Activate_Account_PlusOne_LineOne_Enabled, description = Activate an Open Port Account with PlusOne enabled on Line1
    Given Provisioning System Mode is set to "OFF" for testcase "TC_010_Openport_Activate_Account_PlusOne_LineOne_Enabled"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

@OpenPort  @TC_011_Openport_Activate_Account_SecurityPin_Enabled_with_Pin
  Scenario: Testcase id = TC_011_Openport_Activate_Account_SecurityPin_Enabled_with_Pin, description = Activate an Open Port Account with security Pin enabled with Pin
    Given Provisioning System Mode is set to "OFF" for testcase "TC_011_Openport_Activate_Account_SecurityPin_Enabled_with_Pin"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

      @OpenPort  @TC_012_Openport_Activate_AccountSecurityPin_Enabled_without_Pin
  Scenario: Testcase id = TC_012_Openport_Activate_AccountSecurityPin_Enabled_without_Pin, description = Activate an Open Port Account with security Pin enabled with Pin
    Given Provisioning System Mode is set to "OFF" for testcase "TC_012_Openport_Activate_AccountSecurityPin_Enabled_without_Pin"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort  @TC_013_Openport_Activate_Account_IMEI_Less_Than_15_Digits
  Scenario: Testcase id = TC_013_Openport_Activate_Account_IMEI_Less_Than_15_Digits, description = Activate an Open Port Account with IMEI less than 15 digits
    Given Provisioning System Mode is set to "OFF" for testcase "TC_013_Openport_Activate_Account_IMEI_Less_Than_15_Digits"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I validate the check mark for "Valid_IMEI_check_mark" is "invalid"
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"

    @OpenPort  @TC_014_Openport_Activate_Account_LineType_One_Standard_Two_Crew
  Scenario: Testcase id = TC_014_Openport_Activate_Account_LineType_One_Standard_Two_Crew, description = Activate an Open Port Account with Line Type as one Standard and two Crew
    Given Provisioning System Mode is set to "OFF" for testcase "TC_014_Openport_Activate_Account_LineType_One_Standard_Two_Crew"
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
    Then I select "Crew" for "Line_Type2"
    Then I select "Crew" for "Line_Type3"
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
#    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort  @TC_015_Openport_Activate_Account_Device_Validation_Invalid_SIM
  Scenario: Testcase id = TC_015_Openport_Activate_Account_Device_Validation_Invalid_SIM, description = Device Validation with Invalid SIM
    Given Provisioning System Mode is set to "OFF" for testcase "TC_015_Openport_Activate_Account_Device_Validation_Invalid_SIM"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_SBD_IMEI" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"

  @OpenPort  @TC_016_Openport_Activate_Account_without_Sim_Number
  Scenario: Testcase id = TC_016_Openport_Activate_Account_without_Sim_Number, description = Activate an Open Port Account without Sim Number
    Given Provisioning System Mode is set to "OFF" for testcase "TC_016_Openport_Activate_Account_without_Sim_Number"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
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
    Then I select "Crew" for "Line_Type2"
    Then I select "Crew" for "Line_Type3"
    Then I check "Voice_Mail1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "1234" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "5678" for "TwoStage_Pin1"
    Then I check "Line1_Plus_1"
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I verify error message "Please enter a valid SIM" on screen

  @OpenPort  @TC_017_Openport_Activate_Account_With_Combo_Plan
  Scenario: Testcase id = TC_017_Openport_Activate_Account_With_Combo_Plan, description = Activate a Open Port Account With Combo Plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC_017_Openport_Activate_Account_With_Combo_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I select "Individual" for "ContractType"
    Then I select "None" for "Demo_Trial"
    Then I select "Combo D" for "Promo_Code"
    Then I select "Post Paid" for "Payment_Model"
    Then I select "2 Years - Combo" for "Commitment"
    Then I select "No" for "Restrict_Other_Scratch_Cards"
    Then I select "Default - No VPN" for "Data_Network"
    Then I select "No Data Bundle Combo" for "Included_Megabytes"
    Then I select "No Voice Bundle Combo" for "Included_Voice_Minutes"
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
    Then I validate the service order for activation

  @OpenPort  @TC_018_Openport_Activate_Account_With_Restrict_SC_Flag_Enabled
  Scenario: Testcase id = TC_018_Openport_Activate_Account_With_Restrict_SC_Flag_Enabled, description = Activate a Open Port Account With Restrict Scratch Card Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_018_Openport_Activate_Account_With_Restrict_SC_Flag_Enabled"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort  @TC_019_Openport_Activate_Account_With_Provider_Reference
  Scenario: Testcase id = TC_019_Openport_Activate_Account_With_Provider_Reference, description = Activate an Open Port Account with provider reference
    Given Provisioning System Mode is set to "OFF" for testcase "TC_019_Openport_Activate_Account_With_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I enter "TestProvider" for "Provider_Reference"
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
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort  @TC_020_Openport_Activate_Account_With_Dynamic_Shared_Plan
  Scenario: Testcase id = TC_020_Openport_Activate_Account_With_Dynamic_Shared_Plan, description = Activate a Open Port Account With Dynamic Shared Plan
    Given Provisioning System Mode is set to "OFF" for testcase "TC_020_Openport_Activate_Account_With_Dynamic_Shared_Plan"
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
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation

  @OpenPort  @TC_021_Openport_Activate_Account_Vessel_Name
  Scenario: Testcase id = TC_021_Openport_Activate_Account_Vessel_Name, description = Activate an Open Port Account with Vessel Name
    Given Provisioning System Mode is set to "OFF" for testcase "TC_021_Openport_Activate_Account_Vessel_Name"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I enter "Test_Vessel" for "Vessel_Name"
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
    
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I validate the service order for activation