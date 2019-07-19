Feature: This feature file tests all the scenarios for deviceSwap

  Background:
    * I read the data from the excel "config_device_swap.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @M2M_2_pre_req @M2M
  Scenario: Testcase id = M2M_2_pre_req, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "M2M_2_pre_req"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @M2M_1 @M2M
  Scenario: Testcase id = M2M_1, description = IMEI Swap on Active account under M2M Service - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "M2M IMEI Query"
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

  @M2M_2 @M2M
  Scenario: Testcase id = M2M_2, description = MSISDN-C (Auto-Generated) - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
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
    ##Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server
    #Then I validate the account details on network elements

  @M2M_3 @M2M
  Scenario: Testcase id = M2M_3, description = IMEI & MSISDN-C Swap - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "M2M IMEI Query & MSISDN-C Query"
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

  @M2M_4 @M2M
  Scenario: Testcase id = M2M_4, description = IMEI & MSISDN-C Swap (Auto-Generated) - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then I capture the data from account activation page
    Then click on swap device link and enter value based on "M2M IMEI Query & Auto-Generated MSISDN-C"
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

  @M2M_5 @M2M
  Scenario: Testcase id = M2M_5, description = Try to update IMEI with a random 14 Digit Number - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Random Number 14 Digit Number"
    Then I verify Submit button is not available

  @M2M_6 @M2M
  Scenario: Testcase id = M2M_6, description = Try to update MSISDN-C with a random 11 Digit Number - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Random 11 Digit Number"
    Then I verify Submit button is not available

  @M2M_7 @M2M
  Scenario: Testcase id = M2M_7, description = Try to swap M2M IMEI on Suspended Account - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "SBD IMEI Query"
    Then I verify Submit button is not available

  @M2M_8 @M2M
  Scenario: Testcase id = M2M_8, description = Try to swap M2M IMEI on Deactive Account - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "SBD IMEI Query"
    Then I verify Submit button is not available

  @M2M_9 @M2M
  Scenario: Testcase id = M2M_9, description = Try to swap M2M IMEI on Pending Account - M2M scenarios might timeout
    Given Provisioning System Mode is set to "ON" for testcase "M2M_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "Pending Error Query"
    Then I verify Submit button is not available