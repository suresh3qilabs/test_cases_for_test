Feature: This feature file tests all the scenarios for BURST_SERV_51 to BURST_SERV_56

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
 

  @BURST @BURST_SERV_51
  Scenario: Testcase id = BURST_SERV_51, description = 200001 ACCOUNT_NUMBER  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_SERV_51"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Burst Service" dropdown is not available

  @BURST @BURST_SERV_52
  Scenario: Testcase id = BURST_SERV_52, description = 200001 BURST_SERVICE  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_SERV_52"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Burst Service" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Burst Service" dropdown is not available

  @BURST @BURST_SERV_53
  Scenario: Testcase id = BURST_SERV_53, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_SERV_53"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    Then I verify "Burst Service" dropdown is not available

  @BURST @BURST_SERV_54
  Scenario: Testcase id = BURST_SERV_54, description = 200001 BURST_SERVICE EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_SERV_54"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Burst Service" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    Then I verify "Burst Service" dropdown is not available

  @BURST @BURST_SERV_55
  Scenario: Testcase id = BURST_SERV_55, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_SERV_55"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    Then I verify "Burst Service" dropdown is not available

  @BURST @BURST_SERV_56
  Scenario: Testcase id = BURST_SERV_56, description = 200001 BURST_SERVICE EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_SERV_56"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Burst Service" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    Then I verify "Burst Service" dropdown is not available