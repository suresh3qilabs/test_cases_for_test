Feature: This feature file tests all the scenarios for deviceSwap

  Background:
    * I read the data from the excel "config_device_swap.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @SBD_2_pre_req @SBD
  Scenario: Testcase id = SBD_2_pre_req, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "SBD_2_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
#    Then I click on "Search" button
#    Then I click on the Contract ID to swap device
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @TEL_1_pre_req @TEL
  Scenario: Testcase id = TEL_1_pre_req, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "TEL_1_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @OP_1_pre_req @OP
  Scenario: Testcase id = OP_1_pre_req, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "OP_1_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @SBD_1 @SBD
  Scenario: Testcase id = SBD_1, description = IMEI Swap on Active account under SBD Service
    Given Provisioning System Mode is set to "ON" for testcase "SBD_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "SBD IMEI Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    ##Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    ##Then I validate the account details on network elements

  @SBD_2 @SBD
  Scenario: Testcase id = SBD_2, description = Try to reuse IMEI that is already associated to an active account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "SBD IMEI Query"
    Then I verify Submit button is not available

  @SBD_3 @SBD
  Scenario: Testcase id = SBD_3, description = Try to update IMEI with a random 14 Digit Number
    Given Provisioning System Mode is set to "ON" for testcase "SBD_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Random Number 14 Digit Number"
    Then I verify Submit button is not available

  @SBD_4 @SBD
  Scenario: Testcase id = SBD_4, description = Try to update IMEI with a MSISDN
    Given Provisioning System Mode is set to "ON" for testcase "SBD_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "MSISDN Query"
    Then I verify Submit button is not available

  @SBD_5 @SBD
  Scenario: Testcase id = SBD_5, description = Try to update IMEI with 15 Character Alpha-Numeric string
    Given Provisioning System Mode is set to "ON" for testcase "SBD_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Random 15 Characher Alpha-numberic String"
    Then I verify Submit button is not available

  @SBD_6 @SBD
  Scenario: Testcase id = SBD_6, description = Try to swap SBD IMEI on Suspended Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "SBD IMEI Query"
    Then I verify Submit button is not available

  @SBD_7 @SBD
  Scenario: Testcase id = SBD_7, description = Try to swap SBD IMEI on Deactive Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "SBD IMEI Query"
    Then I verify Submit button is not available

  @SBD_8 @SBD
  Scenario: Testcase id = SBD_8, description = Try to swap SBD IMEI on Pending Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Pending Error Query"
    Then I verify Submit button is not available

  @Telephony_1 @Telephony
  Scenario: Testcase id = Telephony_1, description = SIM Swap on Active account Under Telephony
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_2 @Telephony
  Scenario: Testcase id = Telephony_2, description = MSISDN Swap Only (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_3 @Telephony
  Scenario: Testcase id = Telephony_3, description = MSISDN Swap Only (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_4 @Telephony
  Scenario: Testcase id = Telephony_4, description = MSISDN-C Swap (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid MSISDN-C Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_5 @Telephony
  Scenario: Testcase id = Telephony_5, description = MSISDN-C Swap (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN-C"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_6 @Telephony
  Scenario: Testcase id = Telephony_6, description = SIM & MSISDN Swap (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query & Telephony Postpaid MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_7 @Telephony
  Scenario: Testcase id = Telephony_7, description = SIM & MSISDN Swap (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query & Auto-Generated MSISDN"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_8 @Telephony
  Scenario: Testcase id = Telephony_8, description = SIM & MSISDN-C Swap (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query & Telephony Postpaid MSISDN-C Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_9 @Telephony
  Scenario: Testcase id = Telephony_9, description = SIM & MSISDN-C Swap (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query & Auto-Generated MSISDN-C"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_10 @Telephony
  Scenario: Testcase id = Telephony_10, description = MSISDN & MSISDN-C Swap (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid MSISDN Query & Telephony Postpaid MSISDN-C Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_11 @Telephony
  Scenario: Testcase id = Telephony_11, description = MSISDN & MSISDN-C Swap (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN & MSISDN-C"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_12 @Telephony
  Scenario: Testcase id = Telephony_12, description = SIM, MSISDN & MSISDN-C Swap (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query & Telephony Postpaid MSISDN Query & Telephony Postpaid MSISDN-C Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_13 @Telephony
  Scenario: Testcase id = Telephony_13, description = SIM, MSISDN & MSISDN-C Swap (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_13"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query & Auto-Generated"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @Telephony_16 @Telephony
  Scenario: Testcase id = Telephony_16, description = Try to swap Telephony SIM swap on Suspended Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_16"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query"
    Then I verify Submit button is not available

  @Telephony_17 @Telephony
  Scenario: Testcase id = Telephony_17, description = Try to swap Telephony SIM swap on Deactive Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_17"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Telephony Postpaid Sim Query"
    Then I verify Submit button is not available

  @Telephony_18 @Telephony
  Scenario: Testcase id = Telephony_18, description = Try to swap Telephony SIM on Pending Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_18"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Pending Error Query"
    Then I verify Submit button is not available

  @OpenPort_1 @OpenPort
  Scenario: Testcase id = OpenPort_1, description = SIM Swap on Active account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "OpenPort Sim Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_2 @OpenPort
  Scenario: Testcase id = OpenPort_2, description = IP Swap on Active account (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "OpenPort IP Address Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_3 @OpenPort
  Scenario: Testcase id = OpenPort_3, description = IP Swap on Active account (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_4 @OpenPort
  Scenario: Testcase id = OpenPort_4, description = MSISDN 1 Swap on Active account (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_5 @OpenPort
  Scenario: Testcase id = OpenPort_5, description = MSISDN 1 Swap on Active account (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_6 @OpenPort
  Scenario: Testcase id = OpenPort_6, description = MSISDN 1 & MSISDN 2 Swap on Active account (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_7 @OpenPort
  Scenario: Testcase id = OpenPort_7, description = MSISDN 1 & MSISDN 2 Swap on Active account (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_8 @OpenPort
  Scenario: Testcase id = OpenPort_8, description = MSISDN 1,MSISDN 2 MSISDN 3 Swap on Active account (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_9 @OpenPort
  Scenario: Testcase id = OpenPort_9, description = MSISDN 1,MSISDN 2 MSISDN 3 Swap on Active account (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_10 @OpenPort
  Scenario: Testcase id = OpenPort_10, description = MSISDN 1 &  MSISDN 3 Swap on Active account (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_11 @OpenPort
  Scenario: Testcase id = OpenPort_11, description = MSISDN 2 & MSISDN 3 Swap on Active account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "OpenPort MSISDN Query"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_12 @OpenPort
  Scenario: Testcase id = OpenPort_12, description = MSISDN 3 Swap on Active Account (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated MSISDN"
    Then I verify the status of the account is not pending
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    #Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @OpenPort_13 @OpenPort
  Scenario: Testcase id = OpenPort_13, description = Try to swap Open Port  SIM on Suspended Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_13"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort Sim Query"
    Then I verify Submit button is not available

  @OpenPort_14 @OpenPort
  Scenario: Testcase id = OpenPort_14, description = Try to swap Open Port  SIM on Deactive Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_14"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "OpenPort Sim Query"
    Then I verify Submit button is not available

  @OpenPort_15 @OpenPort
  Scenario: Testcase id = OpenPort_15, description = Try to swap Open Port  SIM on Pending Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_15"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Pending Error Query"
    Then I verify Submit button is not available