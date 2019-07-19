Feature: This feature file tests all the scenarios for PTT_TG_1 to PTT_TG_50

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @PTT @PTT_TG_39
  Scenario: Testcase id = PTT_TG_39, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_39"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "PTT_TALKGROUP"

  @PTT @PTT_TG_1
  Scenario: Testcase id = PTT_TG_1, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_1"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_2
  Scenario: Testcase id = PTT_TG_2, description = 100982 PTT_TG EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_2"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_3
  Scenario: Testcase id = PTT_TG_3, description = 100982 PROVIDER_REFERENCE EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_3"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_4
  Scenario: Testcase id = PTT_TG_4, description = 200001 MT_FILTER EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_4"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "PTT Talkgroup" dropdown is not available

  @PTT @PTT_TG_5
  Scenario: Testcase id = PTT_TG_5, description = 200001 DELIVERY_DEST EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_5"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "PTT Talkgroup" dropdown is not available

  @PTT @PTT_TG_6
  Scenario: Testcase id = PTT_TG_6, description = 100982 SHARED_GROUP EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_6"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "PTT Talkgroup" dropdown is not available

  @PTT @PTT_TG_7
  Scenario: Testcase id = PTT_TG_7, description = 100982 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_7"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_8
  Scenario: Testcase id = PTT_TG_8, description = 100982 PTT_TG NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_8"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_9
  Scenario: Testcase id = PTT_TG_9, description = 100982 PROVIDER_REFERENCE NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_9"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_10
  Scenario: Testcase id = PTT_TG_10, description = 100982 ACCOUNT_NUMBER LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_10"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_11
  Scenario: Testcase id = PTT_TG_11, description = 100982 PTT_TG LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_11"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_12
  Scenario: Testcase id = PTT_TG_12, description = 100982 PROVIDER_REFERENCE LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_12"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_13
  Scenario: Testcase id = PTT_TG_13, description = 100982 ACCOUNT_NUMBER NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_13"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_14
  Scenario: Testcase id = PTT_TG_14, description = 100982 PTT_TG NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_14"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_15
  Scenario: Testcase id = PTT_TG_15, description = 100982 PROVIDER_REFERENCE NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_15"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_16
  Scenario: Testcase id = PTT_TG_16, description = 100982 ACCOUNT_NUMBER CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_16"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_17
  Scenario: Testcase id = PTT_TG_17, description = 100982 PTT_TG CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_17"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_18
  Scenario: Testcase id = PTT_TG_18, description = 100982 PROVIDER_REFERENCE CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_18"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_19
  Scenario: Testcase id = PTT_TG_19, description = 100982 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_19"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_20
  Scenario: Testcase id = PTT_TG_20, description = 100982 PTT_TG DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_20"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_21
  Scenario: Testcase id = PTT_TG_21, description = 100982 PROVIDER_REFERENCE DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_21"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_22
  Scenario: Testcase id = PTT_TG_22, description = 100982 ACCOUNT_NUMBER  * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_22"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_23
  Scenario: Testcase id = PTT_TG_23, description = 100982 PTT_TG  * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_23"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_24
  Scenario: Testcase id = PTT_TG_24, description = 100982 PROVIDER_REFERENCE  * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_24"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_25
  Scenario: Testcase id = PTT_TG_25, description = 100982 ACCOUNT_NUMBER   ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_25"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_26
  Scenario: Testcase id = PTT_TG_26, description = 100982 PTT_TG   ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_26"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_27
  Scenario: Testcase id = PTT_TG_27, description = 100982 PROVIDER_REFERENCE   ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_27"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_28
  Scenario: Testcase id = PTT_TG_28, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_28"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_29
  Scenario: Testcase id = PTT_TG_29, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_29"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_30
  Scenario: Testcase id = PTT_TG_30, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_30"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_31
  Scenario: Testcase id = PTT_TG_31, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_31"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_32
  Scenario: Testcase id = PTT_TG_32, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_32"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_33
  Scenario: Testcase id = PTT_TG_33, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_33"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_34
  Scenario: Testcase id = PTT_TG_34, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_34"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_35
  Scenario: Testcase id = PTT_TG_35, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_35"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_36
  Scenario: Testcase id = PTT_TG_36, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_36"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_37
  Scenario: Testcase id = PTT_TG_37, description = 200001 PTT_TG EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_37"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_38
  Scenario: Testcase id = PTT_TG_38, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_38"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_39
  Scenario: Testcase id = PTT_TG_39, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_39"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_40
  Scenario: Testcase id = PTT_TG_40, description = 200001 PTT_TG NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_40"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_41
  Scenario: Testcase id = PTT_TG_41, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_41"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_42
  Scenario: Testcase id = PTT_TG_42, description = 200001 PTT_TG LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_42"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_43
  Scenario: Testcase id = PTT_TG_43, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_43"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_44
  Scenario: Testcase id = PTT_TG_44, description = 200001 PTT_TG NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_44"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_45
  Scenario: Testcase id = PTT_TG_45, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_45"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_46
  Scenario: Testcase id = PTT_TG_46, description = 200001 PTT_TG CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_46"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_47
  Scenario: Testcase id = PTT_TG_47, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_47"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_48
  Scenario: Testcase id = PTT_TG_48, description = 200001 PTT_TG DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_48"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_49
  Scenario: Testcase id = PTT_TG_49, description = 200001 ACCOUNT_NUMBER  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_49"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_TG_50
  Scenario: Testcase id = PTT_TG_50, description = 200001 PTT_TG  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_50"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Talkgroup" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"