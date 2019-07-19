Feature: This feature file tests all the scenarios for PAG_1 to PAG_50

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @PAG @PAG_49
  Scenario: Testcase id = PAG_49, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_49"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "PAGING"

  @PAG @PAG_46
  Scenario: Testcase id = PAG_46, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_46"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "PAGING"

  @PAG @PAG_31
  Scenario: Testcase id = PAG_31, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_31"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "PAGING"

  @PAG @PAG_1
  Scenario: Testcase id = PAG_1, description = 101026 CAPCODE EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_1"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_2
  Scenario: Testcase id = PAG_2, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_2"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_3
  Scenario: Testcase id = PAG_3, description = 101026 ISDNA EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_3"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_4
  Scenario: Testcase id = PAG_4, description = 101026 PROVIDER_REFERENCE EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_4"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_5
  Scenario: Testcase id = PAG_5, description = 101026 IMEI EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_5"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Paging" dropdown is not available

  @PAG @PAG_6
  Scenario: Testcase id = PAG_6, description = 400493 BURST_SERVICE EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_6"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Burst Service" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Paging" dropdown is not available

  @PAG @PAG_7
  Scenario: Testcase id = PAG_7, description = 101026 CAPCODE NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_7"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_8
  Scenario: Testcase id = PAG_8, description = 101026 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_8"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_9
  Scenario: Testcase id = PAG_9, description = 101026 ISDNA NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_9"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_10
  Scenario: Testcase id = PAG_10, description = 101026 CAPCODE LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_10"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_11
  Scenario: Testcase id = PAG_11, description = 101026 ACCOUNT_NUMBER LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_11"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_12
  Scenario: Testcase id = PAG_12, description = 101026 ISDNA LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_12"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_13
  Scenario: Testcase id = PAG_13, description = 101026 CAPCODE NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_13"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_14
  Scenario: Testcase id = PAG_14, description = 101026 ACCOUNT_NUMBER NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_14"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_15
  Scenario: Testcase id = PAG_15, description = 101026 ISDNA NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_15"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_16
  Scenario: Testcase id = PAG_16, description = 101026 CAPCODE CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_16"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_17
  Scenario: Testcase id = PAG_17, description = 101026 ACCOUNT_NUMBER CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_17"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_18
  Scenario: Testcase id = PAG_18, description = 101026 ISDNA CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_18"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_19
  Scenario: Testcase id = PAG_19, description = 101026 CAPCODE DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_19"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_20
  Scenario: Testcase id = PAG_20, description = 101026 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_20"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_21
  Scenario: Testcase id = PAG_21, description = 101026 ISDNA DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_21"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_22
  Scenario: Testcase id = PAG_22, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_22"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_23
  Scenario: Testcase id = PAG_23, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_23"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_24
  Scenario: Testcase id = PAG_24, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_24"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_25
  Scenario: Testcase id = PAG_25, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_25"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_26
  Scenario: Testcase id = PAG_26, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_26"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_27
  Scenario: Testcase id = PAG_27, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_27"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_28
  Scenario: Testcase id = PAG_28, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_28"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_29
  Scenario: Testcase id = PAG_29, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_29"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_30
  Scenario: Testcase id = PAG_30, description = 101026 CAPCODE EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_30"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_31
  Scenario: Testcase id = PAG_31, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_31"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_32
  Scenario: Testcase id = PAG_32, description = 101026 ISDNA EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_32"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_33
  Scenario: Testcase id = PAG_33, description = 101026 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_33"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_34
  Scenario: Testcase id = PAG_34, description = 101026 ACCOUNT_NUMBER LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_34"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_35
  Scenario: Testcase id = PAG_35, description = 101026 ACCOUNT_NUMBER NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_35"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_36
  Scenario: Testcase id = PAG_36, description = 101026 ACCOUNT_NUMBER CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_36"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_37
  Scenario: Testcase id = PAG_37, description = 101026 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_37"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_38
  Scenario: Testcase id = PAG_38, description = 101026 CAPCODE EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_38"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_39
  Scenario: Testcase id = PAG_39, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_39"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_40
  Scenario: Testcase id = PAG_40, description = 101026 ISDNA EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_40"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_41
  Scenario: Testcase id = PAG_41, description = 101026 ACCOUNT_NUMBER NOT_EQUAL DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_41"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_42
  Scenario: Testcase id = PAG_42, description = 101026 ACCOUNT_NUMBER LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_42"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_43
  Scenario: Testcase id = PAG_43, description = 101026 ACCOUNT_NUMBER NOT_LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_43"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_44
  Scenario: Testcase id = PAG_44, description = 101026 ACCOUNT_NUMBER CONTAINS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_44"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_45
  Scenario: Testcase id = PAG_45, description = 101026 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_45"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_46
  Scenario: Testcase id = PAG_46, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_46"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_47
  Scenario: Testcase id = PAG_47, description = 101026 ISDNA EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_47"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_48
  Scenario: Testcase id = PAG_48, description = 101026 CAPCODE EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_48"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_49
  Scenario: Testcase id = PAG_49, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_49"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PAG @PAG_50
  Scenario: Testcase id = PAG_50, description = 101026 ISDNA EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_50"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Paging" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"