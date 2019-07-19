Feature: This feature file tests all the scenarios for statusUpdate

  Background:
    * I read the data from the excel "Config_statusUpdate.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab


  @OP_1b @OP
  Scenario: Testcase id = OP_1b, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "OP_1b"
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


  @OP_6 @OP
  Scenario: Testcase id = OP_6, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "OP_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @TEL_1 @TEL
  Scenario: Testcase id = TEL_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "TEL_1"
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


  @TEL_2 @TEL
  Scenario: Testcase id = TEL_2, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "TEL_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @TEL_1a @TEL
  Scenario: Testcase id = TEL_1a, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "TEL_1a"
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

  @TEL_3 @TEL
  Scenario: Testcase id = TEL_3, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "TEL_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @TEL_1b @TEL
  Scenario: Testcase id = TEL_1b, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "TEL_1b"
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


  @TEL_4 @TEL
  Scenario: Testcase id = TEL_4, description = Change status from SUSPENDED to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "TEL_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "SUSPENDED" action is not available

  @TEL_1c @TEL
  Scenario: Testcase id = TEL_1c, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "TEL_1c"
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

  @TEL_5 @TEL
  Scenario: Testcase id = TEL_5, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "TEL_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @TEL_6 @TEL
  Scenario: Testcase id = TEL_6, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "TEL_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @PAG_1 @PAG
  Scenario: Testcase id = PAG_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "PAG_1"
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


  @PAG_1a @PAG
  Scenario: Testcase id = PAG_1a, description = PRE:Change status from ACTIVE to SUSPENDED(Chnaging status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "PAG_1a"
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


  @PAG_2 @PAG
  Scenario: Testcase id = PAG_2, description = Change status from ACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PAG_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @PAG_3 @PAG
  Scenario: Testcase id = PAG_3, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PAG_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @PAG_1b @PAG
  Scenario: Testcase id = PAG_1b, description = PRE:Change status from ACTIVE to SUSPENDED(Chnaging status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "PAG_1b"
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

  @PAG_4 @PAG
  Scenario: Testcase id = PAG_4, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PAG_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @PAG_1c @PAG
  Scenario: Testcase id = PAG_1c, description = PRE:Change status from ACTIVE to SUSPENDED(Chnaging status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "PAG_1c"
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


  @PAG_5 @PAG
  Scenario: Testcase id = PAG_5, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PAG_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @PAG_6 @PAG
  Scenario: Testcase id = PAG_6, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "PAG_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available

  @ATS_1 @ATS
  Scenario: Testcase id = ATS_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "ON" for testcase "ATS_1"
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

  @ATS_1a @ATS
  Scenario: Testcase id = ATS_1a, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "ATS_1a"
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


  @ATS_2 @ATS
  Scenario: Testcase id = ATS_2, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "ATS_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @ATS_3 @ATS
  Scenario: Testcase id = ATS_3, description = Change status from ACTIVE to PENDING
    Given Provisioning System Mode is set to "ON" for testcase "ATS_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "PENDING" action is not available

  @ATS_4 @ATS
  Scenario: Testcase id = ATS_4, description = Change status from ACTIVE to ERROR
    Given Provisioning System Mode is set to "ON" for testcase "ATS_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ERROR" action is not available


  @ATS_1b @ATS
  Scenario: Testcase id = ATS_1b, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "ATS_1b"
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

  @ATS_5 @ATS
  Scenario: Testcase id = ATS_5, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "ATS_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

  @ATS_1c @ATS
  Scenario: Testcase id = ATS_1c, description = PRE:Change status from ACTIVE to SUSPENDED(Changing status for following scenarios)
    Given Provisioning System Mode is set to "ON" for testcase "ATS_1c"
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


  @ATS_6 @ATS
  Scenario: Testcase id = ATS_6, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "ATS_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server


  @ATS_7 @ATS
  Scenario: Testcase id = ATS_7, description = Change status from DEACTIVE to ACTIVE
    Given Provisioning System Mode is set to "ON" for testcase "ATS_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "Identifier" not available
    Then I search for the contract id
    Then I verify "ACTIVE" action is not available