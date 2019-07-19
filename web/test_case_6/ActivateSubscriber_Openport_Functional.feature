Feature: This feature file tests all the scenarios from Openport_ActivateSubscriber tab on iridium_service_Functional_Activation_Update.xlsx

  Background:
    * I read the data from the excel "iridium_service_Functional_Activation_Update.xlsx" and "Openport_ActivateSubscriber" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

#  @OpenPort @001_Account_Activation_with_Individual_Plan_Using_an_Invalid_Numeric_SIM
#  Scenario:Testcase id = 001_Account_Activation_with_Individual_Plan_Using_an_Invalid_Numeric_SIM, description = Account Activation with Individual Plan Using an Invalid Numeric SIM
#    Given Provisioning System Mode is set to "OFF" for testcase "001_Account_Activation_with_Individual_Plan_Using_an_Invalid_Numeric_SIM"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "INVALID_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#  @OpenPort @002_Account_Activation_with_Individual_Plan_Using_an_Invalid_AlphaNumeric_SIM
#  Scenario:Testcase id = 002_Account_Activation_with_Individual_Plan_Using_an_Invalid_AlphaNumeric_SIM, description = Account Activation with Individual Plan Using an Invalid AlphaNumeric SIM
#    Given Provisioning System Mode is set to "OFF" for testcase "002_Account_Activation_with_Individual_Plan_Using_an_Invalid_AlphaNumeric_SIM"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "ALPHA_NUMERIC" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#  @OpenPort @003_Account_Activation_with_Individual_Plan_Using_an_Inactive_SIM
#  Scenario:Testcase id = 003_Account_Activation_with_Individual_Plan_Using_an_Inactive_SIM, description = Account Activation with Individual Plan Using an Inactive SIM
#    Given Provisioning System Mode is set to "OFF" for testcase "003_Account_Activation_with_Individual_Plan_Using_an_Inactive_SIM"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "ACTIVE_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#  @OpenPort @004_Account_Activation_with_Individual_Plan_Using_a_SIM_of_Another_Service_Type
#  Scenario:Testcase id = 004_Account_Activation_with_Individual_Plan_Using_a_SIM_of_Another_Service_Type, description = Account Activation with Individual Plan Using a SIM of Another Service Type
#    Given Provisioning System Mode is set to "OFF" for testcase "004_Account_Activation_with_Individual_Plan_Using_a_SIM_of_Another_Service_Type"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_ATS_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#  @OpenPort @006_Account_Activation_with_Individual_Plan_Using_a_SIM_Owned_by_Other_SP
#  Scenario:Testcase id = 006_Account_Activation_with_Individual_Plan_Using_a_SIM_Owned_by_Other_SP, description = Account Activation with Individual Plan Using a SIM Owned by Other SP
#    Given Provisioning System Mode is set to "OFF" for testcase "006_Account_Activation_with_Individual_Plan_Using_a_SIM_Owned_by_Other_SP"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "invalid"
#
#  @OpenPort @011_Account_Activation_with_Individual_Plan_Using_Vessel_Name
#  Scenario: Testcase id = 011_Account_Activation_with_Individual_Plan_Using_Vessel_Name, description = Account Activation with Individual Plan Using Vessel Name
#    Given Provisioning System Mode is set to "OFF" for testcase "011_Account_Activation_with_Individual_Plan_Using_Vessel_Name"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "xyz" for "Vessel_Name"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5682" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @013_Account_Activation_with_Individual_Plan_Using_Provider_Reference
#  Scenario: Testcase id = 013_Account_Activation_with_Individual_Plan_Using_Provider_Reference, description = Account Activation with Individual Plan Using Provider Reference
#    Given Provisioning System Mode is set to "OFF" for testcase "013_Account_Activation_with_Individual_Plan_Using_Provider_Reference"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5684" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @015_Account_Activation_with_Individual_Plan_with_Restrict_Other_Scratch_Cards:YES
#  Scenario: Testcase id = 015_Account_Activation_with_Individual_Plan_with_Restrict_Other_Scratch_Cards:YES, description = Account Activation with Individual Plan with Restrict Other Scratch Cards:YES
#    Given Provisioning System Mode is set to "OFF" for testcase "015_Account_Activation_with_Individual_Plan_with_Restrict_Other_Scratch_Cards:YES"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "Yes" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5686" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @016_Account_Activation_with_Individual_Plan_with_Restrict_Other_Scratch_Cards:NO
#  Scenario: Testcase id = 016_Account_Activation_with_Individual_Plan_with_Restrict_Other_Scratch_Cards:NO, description = Account Activation with Individual Plan with Restrict Other Scratch Cards:NO
#    Given Provisioning System Mode is set to "OFF" for testcase "016_Account_Activation_with_Individual_Plan_with_Restrict_Other_Scratch_Cards:NO"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5687" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @017_Account_Activation_with_Individual_Plan_with_AutoGenerated_MSISDN_LineType_Standard
#  Scenario: Testcase id = 017_Account_Activation_with_Individual_Plan_with_AutoGenerated_MSISDN_LineType_Standard, description = Account Activation with Individual Plan with AutoGenerated MSISDN LineType Standard
#    Given Provisioning System Mode is set to "OFF" for testcase "017_Account_Activation_with_Individual_Plan_with_AutoGenerated_MSISDN_LineType_Standard"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I check "Auto_MSISDN"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5688" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @018_Account_Activation_with_Individual_Plan_with_AutoGenerated_MSISDN_LineType_Crew
#  Scenario: Testcase id = 018_Account_Activation_with_Individual_Plan_with_AutoGenerated_MSISDN_LineType_Crew, description = Account Activation with Individual Plan with AutoGenerated MSISDN LineType Crew
#    Given Provisioning System Mode is set to "OFF" for testcase "018_Account_Activation_with_Individual_Plan_with_AutoGenerated_MSISDN_LineType_Crew"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I check "Auto_MSISDN"
#    Then I select "Crew" for "Line_Type1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @019_Account_Activation_with_Individual_Plan_with_valid_MSISDN_LineType_Standard
#  Scenario: Testcase id = 019_Account_Activation_with_Individual_Plan_with_valid_MSISDN_LineType_Standard, description = Account Activation with Individual Plan with valid MSISDN LineType Standard
#    Given Provisioning System Mode is set to "OFF" for testcase "019_Account_Activation_with_Individual_Plan_with_valid_MSISDN_LineType_Standard"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5690" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @020_Account_Activation_with_Individual_Plan_with_valid_MSISDN_LineType_Crew
#  Scenario: Testcase id = 020_Account_Activation_with_Individual_Plan_with_valid_MSISDN_LineType_Crew, description = Account Activation with Individual Plan with valid MSISDN LineType Crew
#    Given Provisioning System Mode is set to "OFF" for testcase "020_Account_Activation_with_Individual_Plan_with_valid_MSISDN_LineType_Crew"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Crew" for "Line_Type1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @021_Account_Activation_with_Individual_Plan_with_invalid_numeric_MSISDN
#  Scenario: Testcase id = 021_Account_Activation_with_Individual_Plan_with_invalid_numeric_MSISDN, description = Account Activation with Individual Plan with invalid numeric MSISDN
#    Given Provisioning System Mode is set to "OFF" for testcase "021_Account_Activation_with_Individual_Plan_with_invalid_numeric_MSISDN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "INVALID_MSISDN" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5682" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I verify error message "The MSISDN specified was not found [000000000000]." on screen
#
#  @OpenPort @022_Account_Activation_with_Individual_Plan_with_invalid_alphanumeric_MSISDN
#  Scenario: Testcase id = 022_Account_Activation_with_Individual_Plan_with_invalid_alphanumeric_MSISDN, description = Account Activation with Individual Plan with invalid alphanumeric MSISDN
#    Given Provisioning System Mode is set to "OFF" for testcase "022_Account_Activation_with_Individual_Plan_with_invalid_alphanumeric_MSISDN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "ALPHA_NUMERIC" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5682" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I verify error message "The MSISDN specified was not found [1234]." on screen
#
#  @OpenPort @023_Account_Activation_with_Individual_Plan_with_already_used_MSISDN
#  Scenario: Testcase id = 023_Account_Activation_with_Individual_Plan_with_already_used_MSISDN, description = Account Activation with Individual Plan with already used MSISDN
#    Given Provisioning System Mode is set to "OFF" for testcase "023_Account_Activation_with_Individual_Plan_with_already_used_MSISDN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "ACTIVE_MSISDN" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5682" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I verify error message "Invalid state for device" on screen
#
#  @OpenPort @024_Account_Activation_with_Individual_Plan_with_MSISDN_of_another_service_type
#  Scenario: Testcase id = 024_Account_Activation_with_Individual_Plan_with_MSISDN_of_another_service_type, description = Account Activation with Individual Plan with MSISDN of another service type
#    Given Provisioning System Mode is set to "OFF" for testcase "024_Account_Activation_with_Individual_Plan_with_MSISDN_of_another_service_type"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "ATS MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5682" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I verify error message "MSISDN Network [Iri_GSM_Tempe] does not match SIM Network [Iri_BAC_Tempe]." on screen
#
#  @OpenPort @026_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:True_LineType:Crew
#  Scenario: Testcase id = 026_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:True_LineType:Crew, description = Account Activation with Individual Plan with valid MSISDN Voicemail:True with LineType:Crew
#    Given Provisioning System Mode is set to "OFF" for testcase "026_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:True_LineType:Crew"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I check "Voice_Mail1"
#    Then I select "Crew" for "Line_Type1"
#    Then I verify "Voice_Mail1" is "disabled"
#
#  @OpenPort @027_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:True_LineType:Standard
#  Scenario: Testcase id = 027_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:True_LineType:Standard, description = Account Activation with Individual Plan with valid MSISDN Voicemail:True with LineType:Standard
#    Given Provisioning System Mode is set to "OFF" for testcase "027_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:True_LineType:Standard"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "Voice_Mail1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5698" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate if "Voice_Mail1" is checked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @028_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:False
#  Scenario: Testcase id = 028_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:False, description = Account Activation with Individual Plan with valid MSISDN Voicemail:False
#    Given Provisioning System Mode is set to "OFF" for testcase "028_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Voicemail:False"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I uncheck "Voice_Mail1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5699" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate if "Voice_Mail1" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @029_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:False
#  Scenario: Testcase id = 029_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:False, description = Account Activation with Individual Plan with valid MSISDN SecurityPIIN:False
#    Given Provisioning System Mode is set to "OFF" for testcase "029_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:False"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I uncheck "Security1_Pin_CheckBox"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5700" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate if "Security1_Pin_CheckBox" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @030_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_empty_PIN
#  Scenario: Testcase id = 030_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_empty_PIN, description = Account Activation with Individual Plan with valid MSISDN SecurityPIIN:True empty PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "030_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_empty_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "Security1_Pin_CheckBox"
#    Then I enter "" for "Security1_Pin"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5701" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @031_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_with_PIN
#  Scenario: Testcase id = 031_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_with_PIN, description = Account Activation with Individual Plan with valid MSISDN SecurityPIIN:True with PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "031_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_with_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "Security1_Pin_CheckBox"
#    Then I enter "1234" for "Security1_Pin"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5702" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#    ## only IWS test case
##  @OpenPort @032_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_with_invalid_PIN
##  Scenario: Testcase id = 032_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_with_invalid_PIN, description = Account Activation with Individual Plan with valid MSISDN SecurityPIIN:True with invalid PIN
##    Given Provisioning System Mode is set to "OFF" for testcase "032_Account_Activation_with_Individual_Plan_with_valid_MSISDN_SecurityPIIN:True_with_invalid_PIN"
##    Given I am logged into Iridium with flag "Run" and SpAccount number
##    Then I click on "OpenPort" tab
##    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
##    Then I wait 5 seconds
##    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
##    Then I enter "pr" for "Provider_Reference"
##    Then I select "Individual" for "ContractType"
##    Then I select "None" for "Demo_Trial"
##    Then I select "None" for "Promo_Code"
##    Then I select "Post Paid" for "Payment_Model"
##    Then I select "No" for "Restrict_Other_Scratch_Cards"
##    Then I select "Default - No VPN" for "Data_Network"
##    Then I select "10 MB - 2013" for "Included_Megabytes"
##    Then I click on "speed1_32"
##    Then I select "None - 2013" for "Commitment"
##    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
##    Then I select "English" for "Preferred_Language"
##    Then I select "Standard" for "Line_Type1"
##    Then I check "Security1_Pin_CheckBox"
##    Then I enter "abcde" for "Security1_Pin"
##    Then I verify error message "Only numeric input is allowed for this field!" on screen
#
#  @OpenPort @033_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_empty_PIN
#  Scenario: Testcase id = 033_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_empty_PIN, description = Account Activation with Individual Plan with valid MSISDN 2StagePIN:True empty PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "033_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_empty_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "blank" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @034_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_with_PIN
#  Scenario: Testcase id = 034_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_with_PIN, description = Account Activation with Individual Plan with valid MSISDN 2StagePIN:True empty PIN
#    Given Provisioning System Mode is set to "OFF" for testcase "034_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_with_PIN"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "1234" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#    ##Only IWS test case
##  @OpenPort @035_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_with_invalid_PIN
##  Scenario: Testcase id = 035_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_with_invalid_PIN, description = Account Activation with Individual Plan with valid MSISDN 2StagePIN:True with invalid PIN
##    Given Provisioning System Mode is set to "OFF" for testcase "035_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:True_with_invalid_PIN"
##    Given I am logged into Iridium with flag "Run" and SpAccount number
##    Then I click on "OpenPort" tab
##    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
##    Then I wait 5 seconds
##    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
##    Then I enter "pr" for "Provider_Reference"
##    Then I select "Individual" for "ContractType"
##    Then I select "None" for "Demo_Trial"
##    Then I select "None" for "Promo_Code"
##    Then I select "Post Paid" for "Payment_Model"
##    Then I select "No" for "Restrict_Other_Scratch_Cards"
##    Then I select "Default - No VPN" for "Data_Network"
##    Then I select "10 MB - 2013" for "Included_Megabytes"
##    Then I click on "speed1_32"
##    Then I select "None - 2013" for "Commitment"
##    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
##    Then I select "English" for "Preferred_Language"
##    Then I enter "OpenPort MSISDN1" for "MSISDN1"
##    Then I select "Standard" for "Line_Type1"
##    Then I check "Security1_Pin_CheckBox"
##    Then I enter "1234" for "Security1_Pin"
##    Then I check "TwoStage1_Pin_CheckBox"
##    Then I enter "12345" for "TwoStage_Pin1"
##    Then I click on obj repo "Activate Account" button
##    Then I wait 5 seconds
##    Then I verify error message "Only numeric input is allowed for this field!" on screen
#
#  @OpenPort @036_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:False
#  Scenario: Testcase id = 036_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:False, description = Account Activation with Individual Plan with valid MSISDN 2StagePIN:False
#    Given Provisioning System Mode is set to "OFF" for testcase "036_Account_Activation_with_Individual_Plan_with_valid_MSISDN_2StagePIN:False"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I uncheck "TwoStage1_Pin_CheckBox"
#    Then I validate if "TwoStage1_Pin_CheckBox" is unchecked
#    Then I verify "TwoStage_Pin1" is "disabled"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @037_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Plus1:True
#  Scenario: Testcase id = 037_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Plus1:True, description = Account Activation with Individual Plan with valid MSISDN Plus1:True BUG ID:BDEV-34983
#    Given Provisioning System Mode is set to "OFF" for testcase "037_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Plus1:True"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "Line1_Plus_1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate if "Line1_Plus_1" is checked
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
#    Then I validate the service order for activation
##  Fault occurred while processing.
#
#  @OpenPort @038_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Plus1:False
#  Scenario: Testcase id = 038_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Plus1:False, description = Account Activation with Individual Plan with valid MSISDN Plus1:False
#    Given Provisioning System Mode is set to "OFF" for testcase "038_Account_Activation_with_Individual_Plan_with_valid_MSISDN_Plus1:False"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I uncheck "Line1_Plus_1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I validate if "Line1_Plus_1" is unchecked
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @039_Account_Activation_with_Individual_Plan_with_IMEI_with_valid_IMEI
#  Scenario: Testcase id = 039_Account_Activation_with_Individual_Plan_with_IMEI_with_valid_IMEI, description = Account Activation with Individual Plan with IMEI with valid IMEI
#    Given Provisioning System Mode is set to "OFF" for testcase "039_Account_Activation_with_Individual_Plan_with_IMEI_with_valid_IMEI"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5710" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @040_Account_Activation_with_Individual_Plan_with_IMEI_with_SIM_Lock_Enabled
#  Scenario: Testcase id = 040_Account_Activation_with_Individual_Plan_with_IMEI_with_SIM_Lock_Enabled, description = Account Activation with Individual Plan with IMEI with SIM Lock Enabled
#    Given Provisioning System Mode is set to "OFF" for testcase "040_Account_Activation_with_Individual_Plan_with_IMEI_with_SIM_Lock_Enabled"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I check "SimLock"
#    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5711" for "TwoStage_Pin1"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I check status and cleanup on Network Elements if activation went to Error
#    Then I validate the device IDs in DB
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#    Then I verify open port two stage pins and security pins
#    Then I validate the service order for activation
#
#  @OpenPort @041_Account_Activation_with_Individual_Plan_with_duplicated_MSISDN_LineType_Standard
#  Scenario: Testcase id = 041_Account_Activation_with_Individual_Plan_with_duplicated_MSISDN_LineType_Standard, description = Account Activation with Individual Plan with duplicated MSISDN LineType Standard
#    Given Provisioning System Mode is set to "OFF" for testcase "041_Account_Activation_with_Individual_Plan_with_duplicated_MSISDN_LineType_Standard"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Standard" for "Line_Type1"
#    Then I check "TwoStage1_Pin_CheckBox"
#    Then I enter "5712" for "TwoStage_Pin1"
#    Then I enter "OpenPort MSISDN2" for "MSISDN2"
#    Then I select "Standard" for "Line_Type2"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I verify error message "Duplicate MSISDNs [lines: 1/2]." on screen
#
#  @OpenPort @042_Account_Activation_with_Individual_Plan_with_duplicated_MSISDN_LineType_Crew
#  Scenario: Testcase id = 042_Account_Activation_with_Individual_Plan_with_duplicated_MSISDN_LineType_Crew, description = Account Activation with Individual Plan with duplicated MSISDN LineType Crew
#    Given Provisioning System Mode is set to "OFF" for testcase "042_Account_Activation_with_Individual_Plan_with_duplicated_MSISDN_LineType_Crew"
#    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I click on "OpenPort" tab
#    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
#    Then I wait 5 seconds
#    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
#    Then I enter "pr" for "Provider_Reference"
#    Then I select "Individual" for "ContractType"
#    Then I select "None" for "Demo_Trial"
#    Then I select "None" for "Promo_Code"
#    Then I select "Post Paid" for "Payment_Model"
#    Then I select "No" for "Restrict_Other_Scratch_Cards"
#    Then I select "Default - No VPN" for "Data_Network"
#    Then I select "10 MB - 2013" for "Included_Megabytes"
#    Then I click on "speed1_32"
#    Then I select "None - 2013" for "Commitment"
#    Then I select "0 Minutes - 2013" for "Included_Voice_Minutes"
#    Then I select "English" for "Preferred_Language"
#    Then I enter "OpenPort MSISDN1" for "MSISDN1"
#    Then I select "Crew" for "Line_Type1"
#    Then I enter "OpenPort MSISDN2" for "MSISDN2"
#    Then I capture the selected options for openport
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I verify error message "Duplicate MSISDNs [lines: 1/2]." on screen

  @OpenPort @pre_req_Account_Activation_with_Individual_Plan_with_IMEI_with_valid_IMEI
  Scenario: Testcase id = pre_req_Account_Activation_with_Individual_Plan_with_IMEI_with_valid_IMEI, description = Account Activation with Individual Plan with IMEI with valid IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "pre_req_Account_Activation_with_Individual_Plan_with_IMEI_with_valid_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I enter "pr" for "Provider_Reference"
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
    Then I enter "OpenPort MSISDN1" for "MSISDN1"
    Then I select "Standard" for "Line_Type1"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "5710" for "TwoStage_Pin1"
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

  @OpenPort @043_Account_Activation_with_Individual_Plan_with_duplicated_IMEI
  Scenario: Testcase id = 043_Account_Activation_with_Individual_Plan_with_duplicated_IMEI, description = Account Activation with Individual Plan with duplicated IMEI - No Unquarantine
    Given Provisioning System Mode is set to "OFF" for testcase "043_Account_Activation_with_Individual_Plan_with_duplicated_IMEI"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I enter "pr" for "Provider_Reference"
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
    Then I enter "OpenPort MSISDN1" for "MSISDN1"
    Then I select "Standard" for "Line_Type1"
    Then I check "TwoStage1_Pin_CheckBox"
    Then I enter "5714" for "TwoStage_Pin1"
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