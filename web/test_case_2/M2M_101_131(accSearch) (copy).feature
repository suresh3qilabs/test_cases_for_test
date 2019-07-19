Feature: This feature file tests all the scenarios for M2M_101 to M2M_131

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @M2M @M2M_112
  Scenario: Testcase id = M2M_112, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_112"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "M2M+"

  @M2M @M2M_128
  Scenario: Testcase id = M2M_128, description = 200350 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_128"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "M2M+"

  @M2M @M2M_130
  Scenario: Testcase id = M2M_130, description = 200350 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_130"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "M2M+"


  @M2M @M2M_101
  Scenario: Testcase id = M2M_101, description = 200350 ACCOUNT_NUMBER  * DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_101"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_102
  Scenario: Testcase id = M2M_102, description = 200350 IMEI  * DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_102"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_103
  Scenario: Testcase id = M2M_103, description = 200350 MSISDNC  * DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_103"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_104
  Scenario: Testcase id = M2M_104, description = 200350 ACCOUNT_NUMBER   DEACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_104"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_105
  Scenario: Testcase id = M2M_105, description = 200350 ACCOUNT_NUMBER   DEACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_105"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_106
  Scenario: Testcase id = M2M_106, description = 200350 ACCOUNT_NUMBER   DEACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_106"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_107
  Scenario: Testcase id = M2M_107, description = 200350 ACCOUNT_NUMBER   DEACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_107"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_108
  Scenario: Testcase id = M2M_108, description = 200350 ACCOUNT_NUMBER   DEACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_108"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_109
  Scenario: Testcase id = M2M_109, description = 200350 ACCOUNT_NUMBER   DEACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_109"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_110
  Scenario: Testcase id = M2M_110, description = 200350 ACCOUNT_NUMBER   DEACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_110"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_111
  Scenario: Testcase id = M2M_111, description = 200350 ACCOUNT_NUMBER   DEACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_111"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_112
  Scenario: Testcase id = M2M_112, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_112"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_113
  Scenario: Testcase id = M2M_113, description = 200350 IMEI EQUALS DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_113"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_114
  Scenario: Testcase id = M2M_114, description = 200350 PROVIDER_REFERENCE EQUALS DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_114"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_115
  Scenario: Testcase id = M2M_115, description = 200350 MT_FILTER EQUALS DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_115"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_116
  Scenario: Testcase id = M2M_116, description = 200350 DELIVERY_DEST EQUALS DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_116"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_117
  Scenario: Testcase id = M2M_117, description = 200523 MSISDNB EQUALS DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_117"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-B" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_118
  Scenario: Testcase id = M2M_118, description = 200350 MSISDNC EQUALS DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_118"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_119
  Scenario: Testcase id = M2M_119, description = 200350 ACCOUNT_NUMBER NOT_EQUAL DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_119"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_120
  Scenario: Testcase id = M2M_120, description = 200350 IMEI NOT_EQUAL DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_120"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_121
  Scenario: Testcase id = M2M_121, description = 200350 MSISDNC NOT_EQUAL DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_121"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_122
  Scenario: Testcase id = M2M_122, description = 200350 ACCOUNT_NUMBER LIKE DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_122"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_123
  Scenario: Testcase id = M2M_123, description = 200350 IMEI LIKE DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_123"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_124
  Scenario: Testcase id = M2M_124, description = 200350 MSISDNC LIKE DB_DATA PENDING ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_124"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_125
  Scenario: Testcase id = M2M_125, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_125"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_126
  Scenario: Testcase id = M2M_126, description = Wildcard Search | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_126"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_127
  Scenario: Testcase id = M2M_127, description = 200350 IMEI EQUALS DB_DATA ERROR ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_127"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_128
  Scenario: Testcase id = M2M_128, description = 200350 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_128"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_129
  Scenario: Testcase id = M2M_129, description = 200350 IMEI NOT_EQUAL DB_DATA ERROR ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_129"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_130
  Scenario: Testcase id = M2M_130, description = 200350 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_130"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_131
  Scenario: Testcase id = M2M_131, description = 200350 IMEI LIKE DB_DATA ERROR ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_131"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"