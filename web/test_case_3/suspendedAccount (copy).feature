Feature: This feature file tests all the scenarios for statusUpdate

  Background:
    * I read the data from the excel "Config_statusUpdate.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

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
    Then I click on "Search" button
#    Then I click on the Contract ID to swap device
    Then I verify the status of the account is not pending
    Then I verify the lifecycle state and service state on BRM DB Server
    Then I verify the status is updated successfully on BRM Server

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