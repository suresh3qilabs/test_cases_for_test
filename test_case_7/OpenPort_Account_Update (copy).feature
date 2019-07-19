Feature: This feature file tests all Account update scenarios for Open port  Regression

  Background:
    * I read the data from the excel "Config_OpenPort_Regression.xlsx" and "Account_Update" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort  @TC_001_Openport_Activate_Account_Pr_1
  Scenario: Testcase id = TC_001_Openport_Activate_Account_Pr_1, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC_001_Openport_Activate_Account_Pr_1"
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


  @OpenPort @TC_002_Openport_Account_Update_Language
  Scenario: Testcase id = TC_002_Openport_Account_Update_Language, description = Update Open Port account Lanaguage from English to Tagalog
    Given Provisioning System Mode is set to "OFF" for testcase "TC_002_Openport_Account_Update_Language"
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
#    Then I verify the account is updated successfully on BRM Server

  @OpenPort @TC_003_Openport_Account_Update_DateSpeed
  Scenario: Testcase id = TC_003_Openport_Account_Update_DateSpeed, description = Update Open Port account Data Speed from 32kbps to 128kbps
    Given Provisioning System Mode is set to "OFF" for testcase "TC_003_Openport_Account_Update_DateSpeed"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I click on "speed3_128"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort @TC_004_Openport_Account_Update_Included_mega_bytes
  Scenario: Testcase id = TC_004_Openport_Account_Update_Included_mega_bytes, description = Update Open Port account with included mega bytes from 10MB to 25MB
    Given Provisioning System Mode is set to "OFF" for testcase "TC_004_Openport_Account_Update_Included_mega_bytes"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "25 MB - 2013" for "Included_Megabytes"
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
    Then I verify the account is updated successfully on BRM Server

  @OpenPort @TC_005_Openport_Account_Update_Included_Voice_Minutes
  Scenario: Testcase id = TC_005_Openport_Account_Update_Included_Voice_Minutes = Update Open Port account with included Voice Minutes from 0Minutes to 120Minutes
    Given Provisioning System Mode is set to "OFF" for testcase "TC_005_Openport_Account_Update_Included_Voice_Minutes"
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
    Then I verify the account is updated successfully on BRM Server

  @OpenPort  @TC_006_Openport_Activate_Account_Pr_2
  Scenario: Testcase id = TC_006_Openport_Activate_Account_Pr_2, description = Activate Openport Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC_006_Openport_Activate_Account_Pr_2"
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
    Then I click on "speed3_128"
    Then I select "None - 2013" for "Commitment"
    Then I select "120 Minutes - 2013" for "Included_Voice_Minutes"
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


  @OpenPort @TC_007_Openport_Account_Update_Standard_To_Crew
  Scenario: Testcase id = TC_007_Openport_Account_Update_Standard_To_Crew = Update Open Port account from standard to crew
    Given Provisioning System Mode is set to "OFF" for testcase "TC_007_Openport_Account_Update_Standard_To_Crew"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Crew" for "Line_Type1"
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

  @OpenPort @TC_008_Openport_Account_Update_Crew_To_Standard
  Scenario: Testcase id = TC_008_Openport_Account_Update_Crew_To_Standard = Update Open Port account from Crew to  standard
    Given Provisioning System Mode is set to "OFF" for testcase "TC_008_Openport_Account_Update_Crew_To_Standard"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Standard" for "Line_Type1"
    Then I check "Security1_Pin_CheckBox"
    Then I enter "8563" for "Security1_Pin"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "7536" for "TwoStage_Pin1"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort  @TC_009_Openport_Account_Account_pre_req_3
  Scenario: Testcase id = TC_009_Openport_Account_Account_pre_req_3, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC_009_Openport_Account_Account_pre_req_3"
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

    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC_010_Openport_Account_Update_Plan_Transition_Individual_to_Combo
  Scenario: Testcase id = TC_010_Openport_Account_Update_Plan_Transition_Individual_to_Combo = Update Plan for Open Port Account from Individual to Combo
    Given Provisioning System Mode is set to "OFF" for testcase "TC_010_Openport_Account_Update_Plan_Transition_Individual_to_Combo"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "Combo D" for "Promo_Code"
    Then I select "2 Years - Combo" for "Commitment"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort  @TC_011_Openport_Account_Activate_Account_pre_req_4
  Scenario: Testcase id = TC_011_Openport_Account_Activate_Account_pre_req_4, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC_011_Openport_Account_Activate_Account_pre_req_4"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins


  @OpenPort @TC_012_Openport_Account_Update_Security_Pin
  Scenario: Testcase id = TC_012_Openport_Account_Update_Security_Pin = Update Open Port account for security Pin from 1234 to 5614
    Given Provisioning System Mode is set to "OFF" for testcase "TC_012_Openport_Account_Update_Security_Pin"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "5614" for "Security1_Pin"
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
    Then I verify the account is updated successfully on BRM Server

  @OpenPort @TC_013_Openport_Account_Update_twostage_Pin
  Scenario: Testcase id = TC_013_Openport_Account_Update_twostage_Pin = Update Open Port account for twostage Pin from 5678 to 6632
    Given Provisioning System Mode is set to "OFF" for testcase "TC_013_Openport_Account_Update_twostage_Pin"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "6632" for "TwoStage_Pin1"
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
    Then I verify the account is updated successfully on BRM Server

  @OpenPort  @TC_014_Openport_Account_Activate_Account_With_Plus1_Enable
  Scenario: Testcase id = TC_014_Openport_Account_Activate_Account_With_Plus1_Enable, description = Activate a Open Port Account with plus1 enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_014_Openport_Account_Activate_Account_With_Plus1_Enable"
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
    Then I check "Voice_Mail1"
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


  @OpenPort @TC_015_Openport_Account_Update_Account_To_Disable_Plus1
  Scenario: Testcase id = TC_015_Openport_Account_Update_Account_To_Disable_Plus1 = Update a Open Port Account With Plus1 Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_015_Openport_Account_Update_Account_To_Disable_Plus1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Line1_Plus_1"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort @TC_016_Openport_Account_Update_Disable_Twostage
  Scenario: Testcase id = TC_016_Openport_Account_Update_Disable_Twostage = Update a Open Port Account With Twostage
    Given Provisioning System Mode is set to "OFF" for testcase "TC_016_Openport_Account_Update_Disable_Twostage"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "TwoStage1_Pin_CheckBox"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort @TC_017_Openport_Account_Update_Disable_voicemail
  Scenario: Testcase id = TC_017_Openport_Account_Update_Disable_voicemail = Update a Open Port Account for voicemail
    Given Provisioning System Mode is set to "OFF" for testcase "TC_017_Openport_Account_Update_Disable_voicemail"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "Voice_Mail1"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort  @TC_018_Openport_Activate_Account_With_SIM_Lock_Enabled
  Scenario: Testcase id =  TC_018_Openport_Activate_Account_With_SIM_Lock_Enabled, description = Activate a Open Port Account With SIM Lock Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_018_Openport_Activate_Account_With_SIM_Lock_Enabled"
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
    Then I select "Standard" for "Line_Type2"
    Then I select "Standard" for "Line_Type3"
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
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins

  @OpenPort @TC_019_Openport_Activate_Update_With_SIM_Lock_Disable
  Scenario: Testcase id = TC_019_Openport_Activate_Update_With_SIM_Lock_Disable = Update a Open Port Account With SIM Lock Disable
    Given Provisioning System Mode is set to "OFF" for testcase "TC_019_Openport_Activate_Update_With_SIM_Lock_Disable"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I uncheck "SimLock"
    Then I capture the selected options for openport
    Then I capture the data from account activation page
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
    Then I verify the account is updated successfully on BRM Server

  @OpenPort @TC_020_Openport_Activate_Update_With_Commitment
  Scenario: Testcase id = TC_020_Openport_Activate_Update_With_Commitment = Update a Open Port Account With Commitment from 3 years to 2 years-2013
    Given Provisioning System Mode is set to "OFF" for testcase "TC_020_Openport_Activate_Update_With_Commitment"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "2 Years - 2013" for "Commitment"
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
    Then I verify the account is updated successfully on BRM Server

  @OpenPort  @TC_021_Openport_Activate_Account_With_Restrict_SC_Flag_Enabled
  Scenario: Testcase id =  TC_021_Openport_Activate_Account_With_Restrict_SC_Flag_Enabled, description = Activate a Open Port Account With Restrict Scratch Card Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_021_Openport_Activate_Account_With_Restrict_SC_Flag_Enabled"
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
    Then I cleanup the devices on Network Elements if Open Port activation went into error
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I validate the device IDs in DB
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins


  @OpenPort @TC_022_Openport_Account_Update_Account_To_Disable_Restrict_SC_Flag
  Scenario: Testcase id = TC_022_Openport_Account_Update_Account_To_Disable_Restrict_SC_Flag = Update a Open Port Account With Restrict Scratch Card Disabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC_022_Openport_Account_Update_Account_To_Disable_Restrict_SC_Flag"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I select "No" for "Restrict_Other_Scratch_Cards"
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
    Then I verify the account is updated successfully on BRM Server

  @OpenPort  @TC_023_Openport_Activate_Account_With_Provider_Reference
  Scenario: Testcase id = TC_023_Openport_Activate_Account_With_Provider_Reference, description = Activate an Open Port Account with provider reference
    Given Provisioning System Mode is set to "OFF" for testcase "TC_023_Openport_Activate_Account_With_Provider_Reference"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I enter "OpenPortProviderReference" for "Provider_Reference"
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


  @OpenPort @TC_024_Openport_Account_Update_With_Provider_Reference
  Scenario: Testcase id = TC_024_Openport_Account_Update_With_Provider_Reference = Update an Open Port Account with provider reference
    Given Provisioning System Mode is set to "OFF" for testcase "TC_024_Openport_Account_Update_With_Provider_Reference"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort  @TC_025_Openport_Account_Activate_Account_pre_req_5_Vessel_Name
  Scenario: Testcase id = TC_025_Openport_Account_Activate_Account_pre_req_5_Vessel_Name, description = Activate a Open Port Account with Vessel Name
    Given Provisioning System Mode is set to "OFF" for testcase "TC_025_Openport_Account_Activate_Account_pre_req_5_Vessel_Name"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I enter "OpenPortVesselName" for "Vessel_Name"
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


  @OpenPort @TC_026_Openport_Account_Update_Vessel_Name
  Scenario: Testcase id = TC_026_Openport_Account_Update_Vessel_Name = Update open port account with vessel name
    Given Provisioning System Mode is set to "OFF" for testcase "TC_026_Openport_Account_Update_Vessel_Name"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID
    Then I enter "OpenPortVesselName_Updatede" for "Vessel_Name"
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
    Then I verify the account is updated successfully on BRM Server


  @OpenPort @TC_027_Openport_Account_Update_Programmable_Buttons
  Scenario: Testcase id = TC_027_Openport_Account_Update_Programmable_Buttons = Update open port account with programmable buttons
    Given Provisioning System Mode is set to "OFF" for testcase "TC_027_Openport_Account_Update_Programmable_Buttons"
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
    Then I verify plusOne for open port
    Then I verify open port two stage pins and security pins
    Then I verify the account is updated successfully on BRM Server