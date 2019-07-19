Feature: This feature file tests all the scenarios for deviceSwap

  Background:
    * I read the data from the excel "config_device_swap.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @PTT_DEV1_pre_req @PTT
  Scenario: Testcase id = PTT_DEV1_pre_req, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV1_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @PAG_1_pre_req @PAG
  Scenario: Testcase id = PAG_1_pre_req, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "PAG_1_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @ATS_1_pre_req @ATS
  Scenario: Testcase id = ATS_1_pre_req, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "ATS_1_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @PTT_1 @PTT
  Scenario: Testcase id = PTT_1, description = IMEI Device Swap
    Given Provisioning System Mode is set to "ON" for testcase "PTT_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "PTT IMEI Query"
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

  @PTT_2 @PTT
  Scenario: Testcase id = PTT_2, description = IMEI Device Swap with random 14 Digit Number
    Given Provisioning System Mode is set to "ON" for testcase "PTT_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Random Number 14 Digit Number"
    Then I verify Submit button is not available

  @PTT_3 @PTT
  Scenario: Testcase id = PTT_3, description = IMEI Device Swap with an empty string
    Given Provisioning System Mode is set to "ON" for testcase "PTT_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Send Empty String"
    Then I verify Submit button is not available

  @PTT_4 @PTT
  Scenario: Testcase id = PTT_4, description = Try to swap on Suspended Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "PTT IMEI Query"
    Then I verify Submit button is not available

  @PTT_5 @PTT
  Scenario: Testcase id = PTT_5, description = Try to swap on Deactive Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "PTT IMEI Query"
    Then I verify Submit button is not available

  @PTT_6 @PTT
  Scenario: Testcase id = PTT_6, description = Try to swap on Pending Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Pending Error Query"
    Then I verify Submit button is not available

  @Paging_1 @Paging
  Scenario: Testcase id = Paging_1, description = Capcode Swap on Active Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Paging Capcode Query"
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

  @Paging_2 @Paging
  Scenario: Testcase id = Paging_2, description = Capcode & ISDN-A Swap (Manual)
    Given Provisioning System Mode is set to "ON" for testcase "Paging_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Paging Capcode Query"
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

  @Paging_3 @Paging
  Scenario: Testcase id = Paging_3, description = Capcode & ISDN-A Swap (Auto-Generated)
    Given Provisioning System Mode is set to "ON" for testcase "Paging_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "Auto-Generated ISDNA"
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

  @Paging_4 @Paging
  Scenario: Testcase id = Paging_4, description = ISDN-A Swap
    Given Provisioning System Mode is set to "ON" for testcase "Paging_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "A random number in between 1 and 600"
    Then I verify Submit button is not available

  @Paging_5 @Paging
  Scenario: Testcase id = Paging_5, description = Try to update Capecode with a random 10 Digit Number
    Given Provisioning System Mode is set to "ON" for testcase "Paging_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Random 10 Digit Number"
    Then I verify Submit button is not available

  @Paging_6 @Paging
  Scenario: Testcase id = Paging_6, description = Try to update ISDN-A with an Alpha-numeric 3 Character String
    Given Provisioning System Mode is set to "ON" for testcase "Paging_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "A random Alpha-numberic 3 Character String"
    Then I verify Submit button is not available

  @Paging_7 @Paging
  Scenario: Testcase id = Paging_7, description = Try to swap Capcode on Suspended Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Paging Capcode Query"
    Then I verify Submit button is not available

  @Paging_8 @Paging
  Scenario: Testcase id = Paging_8, description = Try to swap Capcode on Deactive Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Paging Capcode Query"
    Then I verify Submit button is not available

  @Paging_9 @Paging
  Scenario: Testcase id = Paging_9, description = Try to Capcode on Pending Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Paging Capcode Query"
    Then I verify Submit button is not available

  @Burst @Burst
  Scenario: Testcase id = Burst, description = Verify Burst IMEI Swap is not allowed
    Given Provisioning System Mode is set to "ON" for testcase "Burst"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Burst IMEI Query"
    Then I verify Submit button is not available

  @ATS_1 @ATS
  Scenario: Testcase id = ATS_1, description = Try updating IMEI for Active Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "ATS IMEI Query"
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

  @ATS_2 @ATS
  Scenario: Testcase id = ATS_2, description = Try to swap ATS IMEI on Suspended Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Suspended Account Query"
    Then I verify Submit button is not available

  @ATS_3 @ATS
  Scenario: Testcase id = ATS_3, description = Try to swap ATS IMEI on Deactive Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Deactive_account_ATS"
    Then I verify Submit button is not available

  @ATS_4 @ATS
  Scenario: Testcase id = ATS_4, description = Try to swap ATS IMEI on Pending Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Pending Error Query"
    Then I verify Submit button is not available