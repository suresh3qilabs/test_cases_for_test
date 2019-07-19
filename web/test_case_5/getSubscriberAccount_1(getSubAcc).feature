Feature: This feature file tests all the scenarios for getSubscriberAccount

  Background:
    * I read the data from the excel "Config_getSubscriberAccount.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
 

  @SBD_1 @SBD
  Scenario: Testcase id = SBD_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @SBD_2 @SBD
  Scenario: Testcase id = SBD_2, description = Try to get Suspended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @SBD_3 @SBD
  Scenario: Testcase id = SBD_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @SBD_4 @SBD
  Scenario: Testcase id = SBD_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @SBD_5 @SBD
  Scenario: Testcase id = SBD_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "SBD_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "SHORT_BURST_DATA" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @M2M_1 @M2M
  Scenario: Testcase id = M2M_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "M2M_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @M2M_2 @M2M
  Scenario: Testcase id = M2M_2, description = Try to get Suspended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "M2M_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @M2M_3 @M2M
  Scenario: Testcase id = M2M_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "M2M_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @M2M_4 @M2M
  Scenario: Testcase id = M2M_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "M2M_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @M2M_5 @M2M
  Scenario: Testcase id = M2M_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "M2M_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "MACHINE_TO_MACHINE" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Telephony_1 @Telephony
  Scenario: Testcase id = Telephony_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Telephony_2 @Telephony
  Scenario: Testcase id = Telephony_2, description = Try to get Suspended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Telephony_3 @Telephony
  Scenario: Testcase id = Telephony_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Telephony_4 @Telephony
  Scenario: Testcase id = Telephony_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Telephony_5 @Telephony
  Scenario: Testcase id = Telephony_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Telephony_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "TELEPHONY" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @OpenPort_1 @OpenPort
  Scenario: Testcase id = OpenPort_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @OpenPort_2 @OpenPort
  Scenario: Testcase id = OpenPort_2, description = Try to get Suspsended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @OpenPort_3 @OpenPort
  Scenario: Testcase id = OpenPort_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @OpenPort_4 @OpenPort
  Scenario: Testcase id = OpenPort_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @OpenPort_5 @OpenPort
  Scenario: Testcase id = OpenPort_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "OpenPort_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "OPEN_PORT" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @PTT_1 @PTT
  Scenario: Testcase id = PTT_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @PTT_2 @PTT
  Scenario: Testcase id = PTT_2, description = Try to get Suspended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @PTT_3 @PTT
  Scenario: Testcase id = PTT_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @PTT_4 @PTT
  Scenario: Testcase id = PTT_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @PTT_5 @PTT
  Scenario: Testcase id = PTT_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "PTT_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PTT_DEVICE" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Paging_1 @Paging
  Scenario: Testcase id = Paging_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Paging_2 @Paging
  Scenario: Testcase id = Paging_2, description = Try to get Suspended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Paging_3 @Paging
  Scenario: Testcase id = Paging_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Paging_4 @Paging
  Scenario: Testcase id = Paging_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Paging_5 @Paging
  Scenario: Testcase id = Paging_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Paging_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "PAGING" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Burst_1 @Burst
  Scenario: Testcase id = Burst_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Burst_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Burst_2 @Burst
  Scenario: Testcase id = Burst_2, description = Try to get Suspended Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Burst_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "SUSPENDED" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Burst_3 @Burst
  Scenario: Testcase id = Burst_3, description = Try to get Deactive Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Burst_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "DEACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Burst_4 @Burst
  Scenario: Testcase id = Burst_4, description = Try to get Errored Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Burst_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "ERROR" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @Burst_5 @Burst
  Scenario: Testcase id = Burst_5, description = Try to get Pending Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "Burst_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "BURST_DEVICE" for "ServiceType"
    When I select the value "PENDING" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page

  @ATS_1 @ATS
  Scenario: Testcase id = ATS_1, description = Try to get Active Subscriber Account
    Given Provisioning System Mode is set to "ON" for testcase "ATS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I click on "Clear" button
    When I select the value "ATS" for "ServiceType"
    When I select the value "ACTIVE" for "Status"
    Then I click on "Search" button
    Then get the first contract id from UI if "From Identifier" not available
    Then I search for the contract id
    Then I check all the details on UI for the contract id
    Then I verify details on the detail page match with the search page