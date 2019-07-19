Feature: This feature file tests all DeviceSwap scenarios for Openport Regression

  Background:
    * I read the data from the excel "Config_OpenPort_Regression.xlsx" and "Device_Swap" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort  @TC01_Openport_Activate_Account_pre_req_1
  Scenario: Testcase id = TC01_Openport_Activate_Account_pre_req_1, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC01_Openport_Activate_Account_pre_req_1"
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


  @OpenPort  @TC02_Openport_Account_SIM_Device_Swap
  Scenario: Testcase id = TC02_Openport_Account_SIM_Device_Swap, description = SIM Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "TC02_Openport_Account_SIM_Device_Swap"
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
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements


  @OpenPort  @TC03_Openport_Account_IP_Swap
  Scenario: Testcase id = TC03_Openport_Account_IP_Swap, description = IP Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "TC03_Openport_Account_IP_Swap"
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
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements

  @OpenPort  @TC04_Openport_Account_Device_Swap_SIM_MSISDN1_Swap
  Scenario: Testcase id = TC04_Openport_Account_Device_Swap_SIM_MSISDN1_Swap, description = SIM and MSISDN 1 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "TC04_Openport_Account_Device_Swap_SIM_MSISDN1_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort Sim Query swapping & OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements


  @OpenPort  @TC05_Openport_Account_MSISDN1_Swap
  Scenario: Testcase id = TC05_Openport_Account_MSISDN1_Swap, description = MSISDN 1 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "TC05_Openport_Account_MSISDN1_Swap"
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
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements

  @OpenPort @TC06_Openport_Account_MSISDN1_MSISDN2_and_MSISDN3_Swap
  Scenario: Testcase id = TC06_Openport_Account_MSISDN1_MSISDN2_and_MSISDN3_Swap, description = MSISDN 1 MSISDN 2 and MSISDN 3 Swap on Open Port  Active account
    Given Provisioning System Mode is set to "ON" for testcase "TC06_Openport_Account_MSISDN1_MSISDN2_and_MSISDN3_Swap"
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
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements

  @OpenPort  @TC07_Openport_Activate_Account_With_SIM_Lock_Enabled
  Scenario: Testcase id =  TC07_Openport_Activate_Account_With_SIM_Lock_Enabled, description = Activate a Open Port Account With SIM Lock Enabled
    Given Provisioning System Mode is set to "OFF" for testcase "TC07_Openport_Activate_Account_With_SIM_Lock_Enabled"
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

  @OpenPort @TC08_Openport_Account_SIM_Device_Swap_On_SIM_Locked_Account
  Scenario: Testcase id = TC08_Openport_Account_SIM_Device_Swap_On_SIM_Locked_Account, description = SIM Swap on Open Port  Active account with SIM Lock Enabled
    Given Provisioning System Mode is set to "ON" for testcase "TC08_Openport_Account_SIM_Device_Swap_On_SIM_Locked_Account"
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
    Then I verify the new Device id on BRM DB Server
    Then I verify sim lock status on BRM DB Server
    Then I validate the account details on network elements

  @OpenPort  @TC09_Openport_Account_MSISDN_Device_Swap_On_SIM_Locked_Account
  Scenario: Testcase id = TC09_Openport_Account_MSISDN_Device_Swap_On_SIM_Locked_Account, description = MSISDN 1 Swap on Open Port  Active account with SIM Lock Enabled
    Given Provisioning System Mode is set to "ON" for testcase "TC09_Openport_Account_MSISDN_Device_Swap_On_SIM_Locked_Account"
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
    Then I verify the new Device id on BRM DB Server
    Then I verify sim lock status on BRM DB Server
    Then I validate the account details on network elements


  @OpenPort  @TC010_Openport_Activate_Account_pre_req_2
  Scenario: Testcase id = TC010_Openport_Activate_Account_pre_req_2, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC010_Openport_Activate_Account_pre_req_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "OpenPort" tab
    Then I enter "NEW_OpenPort_SIM" for "SIM (ICCID)"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_SIM_check_mark" is "valid"
    Then I check "SimLock"
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
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


  @OpenPort  @TC11_Openport_Account_IMEI_Swap_On_SIM_Locked_Account
  Scenario: Testcase id = TC11_Openport_Account_IMEI_Swap_On_SIM_Locked_Account, description = IMEI Swap on Open Port  Active account with SIM Lock Enabled
    Given Provisioning System Mode is set to "ON" for testcase "TC11_Openport_Account_IMEI_Swap_On_SIM_Locked_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I enter "NEW_OP_IMEI" for "OP_IMEI"
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
    Then I validate the account details on network elements

  @OpenPort  @TC12_Openport_Account_Activate_Account_pre_req_3
  Scenario: Testcase id = TC12_Openport_Account_Activate_Account_pre_req_3, description = Activate a Open Port Account
    Given Provisioning System Mode is set to "OFF" for testcase "TC12_Openport_Account_Activate_Account_pre_req_3"
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

  @OpenPort  @TC13_Openport_Account_IP_Swap_With_Different_Data_Network
  Scenario: Testcase id = TC13_Openport_Account_IP_Swap_With_Different_Data_Network, description = IP Swap on Open Port  Active account with different data network
    Given Provisioning System Mode is set to "ON" for testcase "TC13_Openport_Account_IP_Swap_With_Different_Data_Network"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Auto-Generated"
    Then I capture the data from account activation page
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I verify the new Device id on BRM DB Server
    Then I validate the account details on network elements