Feature: This feature file tests all the scenarios for statusUpdate

  Background:
    * I read the data from the excel "Config_statusUpdate.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab


  @SBD_1 @SBD
  Scenario: Testcase id = SBD_1, description = Change status from ACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "SBD_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @SBD_2 @SBD
  Scenario: Testcase id = SBD_2, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "SBD_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @SBD_3 @SBD
  Scenario: Testcase id = SBD_3, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "SBD_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @SBD_4 @SBD
  Scenario: Testcase id = SBD_4, description = Change status from ACTIVE to PENDING
    Given Provisioning System Mode is set to "ON" for testcase "SBD_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "PENDING" action is not available

  @SBD_5 @SBD
  Scenario: Testcase id = SBD_5, description = Change status from ACTIVE to ERROR
    Given Provisioning System Mode is set to "ON" for testcase "SBD_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ERROR" action is not available

  @SBD_6_BWS:Yes_FullMRC @SBD
  Scenario: Testcase id = SBD_6_BWS:Yes_FullMRC, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "SBD_6_BWS:Yes_FullMRC"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @SBD_7_BWS:No_PartialMRC @SBD
  Scenario: Testcase id = SBD_7_BWS:No_PartialMRC, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "SBD_7_BWS:No_PartialMRC"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @SBD_8_BWS:No_ZeroMRC @SBD
  Scenario: Testcase id = SBD_8_BWS:No_ZeroMRC, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "SBD_8_BWS:No_ZeroMRC"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @SBD_2a @SBD
  Scenario: Testcase id = SBD_2a, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "SBD_2a"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @SBD_9 @SBD
  Scenario: Testcase id = SBD_9, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "SBD_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @SBD_2c @SBD
  Scenario: Testcase id = SBD_2c, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "SBD_2c"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @SBD_10 @SBD
  Scenario: Testcase id = SBD_10, description = Change status from SUSPENDED to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "SBD_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "SUSPENDED" action is not available

  @SBD_2b @SBD
  Scenario: Testcase id = SBD_2b, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "SBD_2b"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @SBD_11 @SBD
  Scenario: Testcase id = SBD_11, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "SBD_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @SBD_12 @SBD
  Scenario: Testcase id = SBD_12, description = Change status from PENDING to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "SBD_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @SBD_13 @SBD
  Scenario: Testcase id = SBD_13, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "SBD_13"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @SBD_14 @SBD
  Scenario: Testcase id = SBD_14, description = Change status from ERROR to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "SBD_14"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @M2M_1 @M2M
  Scenario: Testcase id = M2M_1, description = Change status from ACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "M2M_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @M2M_2 @M2M
  Scenario: Testcase id = M2M_2, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "M2M_2"
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


  @M2M_3 @M2M
  Scenario: Testcase id = M2M_3, description = Change status from ACTIVE to SUSPENDED (NO BWS accounts available) in 200350 SP
    Given Provisioning System Mode is set to "ON" for testcase "M2M_3"
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


  @M2M_5 @M2M
  Scenario: Testcase id = M2M_5, description = Change status from ACTIVE to ERROR
    Given Provisioning System Mode is set to "ON" for testcase "M2M_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ERROR" action is not available

  @M2M_6 @M2M
  Scenario: Testcase id = M2M_6, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "M2M_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @M2M_2a @M2M
  Scenario: Testcase id = M2M_2a, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for the following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "M2M_2a"
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


  @M2M_7 @M2M
  Scenario: Testcase id = M2M_7, description = Change status from SUSPENDED to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "M2M_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "SUSPENDED" action is not available

  @M2M_2b @M2M
  Scenario: Testcase id = M2M_2b, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for the following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "M2M_2b"
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


  @M2M_8 @M2M
  Scenario: Testcase id = M2M_8, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "M2M_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @M2M_9 @M2M
  Scenario: Testcase id = M2M_9, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "M2M_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @OP_1 @OP
  Scenario: Testcase id = OP_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "OP_1"
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


  @OP_2 @OP
  Scenario: Testcase id = OP_2, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "OP_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @OP_3 @OP
  Scenario: Testcase id = OP_3, description = Change status from ACTIVE to PENDING
    Given Provisioning System Mode is set to "ON" for testcase "OP_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "PENDING" action is not available

  @OP_4 @OP
  Scenario: Testcase id = OP_4, description = Change status from ACTIVE to ERROR
    Given Provisioning System Mode is set to "ON" for testcase "OP_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ERROR" action is not available


  @OP_1a @OP
  Scenario: Testcase id = OP_1a, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "OP_1a"
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


  @OP_5 @OP
  Scenario: Testcase id = OP_5, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "OP_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server
