Feature: This feature file tests all the scenarios for statusUpdate

  Background:
    * I read the data from the excel "Config_statusUpdate.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
 

  @BURST_DEV1 @BURST
  Scenario: Testcase id = BURST_DEV1, description = Change status from ACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @BURST_DEV2 @BURST
  Scenario: Testcase id = BURST_DEV2, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @BURST_DEV2a @BURST
  Scenario: Testcase id = BURST_DEV2a, description = Change status from ACTIVE to SUSPENDED(Changing status for the following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV2a"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @BURST_DEV3 @BURST
  Scenario: Testcase id = BURST_DEV3, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @BURST_DEV4 @BURST
  Scenario: Testcase id = BURST_DEV4, description = Change status from ACTIVE to PENDING
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "PENDING" action is not available

  @BURST_DEV5 @BURST
  Scenario: Testcase id = BURST_DEV5, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @BURST_DEV6 @BURST
  Scenario: Testcase id = BURST_DEV6, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @BURST_DEV7 @BURST
  Scenario: Testcase id = BURST_DEV7, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "BURST_DEV7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @PTT_DEV1 @PTT
  Scenario: Testcase id = PTT_DEV1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV1"
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


  @PTT_DEV2 @PTT
  Scenario: Testcase id = PTT_DEV2, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @PTT_DEV1a @PTT
  Scenario: Testcase id = PTT_DEV1a, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV1a"
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

  @PTT_DEV3 @PTT
  Scenario: Testcase id = PTT_DEV3, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @PTT_DEV1b @PTT
  Scenario: Testcase id = PTT_DEV1b, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV1b"
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


  @PTT_DEV4 @PTT
  Scenario: Testcase id = PTT_DEV4, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PTT_DEV5 @PTT
  Scenario: Testcase id = PTT_DEV5, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @PTT_DEV7 @PTT
  Scenario: Testcase id = PTT_DEV7, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PTT_DEV8 @PTT
  Scenario: Testcase id = PTT_DEV8, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @PTT_DEV1c @PTT
  Scenario: Testcase id = PTT_DEV1c, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV1c"
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

  @PTT_DEV9 @PTT
  Scenario: Testcase id = PTT_DEV9, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_DEV9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PTT_TGG1 @PTT
  Scenario: Testcase id = PTT_TGG1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "PTT_TGG1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_TALKGROUP" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PTT_TGG2 @PTT
  Scenario: Testcase id = PTT_TGG2, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_TGG2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_TALKGROUP" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PTT_TGG3 @PTT
  Scenario: Testcase id = PTT_TGG3, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_TGG3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_TALKGROUP" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server



  @PTT_TGG1a @PTT
  Scenario: Testcase id = PTT_TGG1a, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "PTT_TGG1a"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_TALKGROUP" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PTT_TGG4 @PTT
  Scenario: Testcase id = PTT_TGG4, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_TGG4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_TALKGROUP" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PTT_TGG5 @PTT
  Scenario: Testcase id = PTT_TGG5, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PTT_TGG5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_TALKGROUP" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @BURST_SERV1 @BURST
  Scenario: Testcase id = BURST_SERV1, description = Change status from ACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "BURST_SERV1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_SERVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify Action dropdown is not available

  @BURST_SERV2 @BURST
  Scenario: Testcase id = BURST_SERV2, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "BURST_SERV2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_SERVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify Action dropdown is not available

  @BURST_SERV3 @BURST
  Scenario: Testcase id = BURST_SERV3, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "BURST_SERV3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_SERVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify Action dropdown is not available

  @BURST_SERV4 @BURST
  Scenario: Testcase id = BURST_SERV4, description = Change status from ACTIVE to PENDING
    Given Provisioning System Mode is set to "ON" for testcase "BURST_SERV4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_SERVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify Action dropdown is not available

  @BURST_SERV5 @BURST
  Scenario: Testcase id = BURST_SERV5, description = Change status from ACTIVE to ERROR
    Given Provisioning System Mode is set to "ON" for testcase "BURST_SERV5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_SERVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify Action dropdown is not available