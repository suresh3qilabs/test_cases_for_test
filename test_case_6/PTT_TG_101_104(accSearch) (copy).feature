Feature: This feature file tests all the scenarios for PTT_TG_101 to PTT_TG_104

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
 

  @PTT @PTT_TG_101
  Scenario: Testcase id = PTT_TG_101, description = 100982 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_101"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_102
  Scenario: Testcase id = PTT_TG_102, description = 101185 ACCOUNT_NUMBER NOT_LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_102"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_103
  Scenario: Testcase id = PTT_TG_103, description = 100982 ACCOUNT_NUMBER CONTAINS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_103"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_104
  Scenario: Testcase id = PTT_TG_104, description = 101185 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_104"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"