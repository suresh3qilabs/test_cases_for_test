Feature: This feature file tests all the scenarios for M2M_1 to M2M_50

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @M2M @M2M_38
  Scenario: Testcase id = M2M_38, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_38"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "MACHINE_TO_MACHINE"

  @M2M @M2M_1
  Scenario: Testcase id = M2M_1, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_1"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_2
  Scenario: Testcase id = M2M_2, description = Wildcard Search | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_2"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_3
  Scenario: Testcase id = M2M_3, description = 200523 MSISDNB EQUALS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_3"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-B" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_4
  Scenario: Testcase id = M2M_4, description = 200350 IMEI EQUALS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_4"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_5
  Scenario: Testcase id = M2M_5, description = 200350 PROVIDER_REFERENCE EQUALS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_5"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_6
  Scenario: Testcase id = M2M_6, description = 200350 MT_FILTER EQUALS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_6"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_7
  Scenario: Testcase id = M2M_7, description = 200350 DELIVERY_DEST EQUALS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_7"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_8
  Scenario: Testcase id = M2M_8, description = 200350 SHARED_GROUP EQUALS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_8"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_9
  Scenario: Testcase id = M2M_9, description = 200001 PTT_TG EQUALS  ACTIVE ALL | Issue is BDEV-31162
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_9"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_10
  Scenario: Testcase id = M2M_10, description = 200001 IP_ADDRESS EQUALS  ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_10"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IP Address" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_11
  Scenario: Testcase id = M2M_11, description = 200001 CAPCODE EQUALS  ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_11"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_12
  Scenario: Testcase id = M2M_12, description = 200350 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_12"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_13
  Scenario: Testcase id = M2M_13, description = 200350 IMEI NOT_EQUAL DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_13"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_14
  Scenario: Testcase id = M2M_14, description = 200350 MSISDNC NOT_EQUAL DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_14"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_15
  Scenario: Testcase id = M2M_15, description = 200350 ACCOUNT_NUMBER LIKE DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_15"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_16
  Scenario: Testcase id = M2M_16, description = 200350 IMEI LIKE DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_16"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_17
  Scenario: Testcase id = M2M_17, description = 200350 MSISDNC LIKE DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_17"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_18
  Scenario: Testcase id = M2M_18, description = 200350 ACCOUNT_NUMBER NOT_LIKE DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_18"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_19
  Scenario: Testcase id = M2M_19, description = 200350 IMEI NOT_LIKE DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_19"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_20
  Scenario: Testcase id = M2M_20, description = 200350 MSISDNC NOT_LIKE DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_20"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_21
  Scenario: Testcase id = M2M_21, description = 200350 ACCOUNT_NUMBER CONTAINS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_21"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_22
  Scenario: Testcase id = M2M_22, description = 200350 IMEI CONTAINS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_22"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_23
  Scenario: Testcase id = M2M_23, description = 200350 MSISDNC CONTAINS DB_DATA ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_23"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_24
  Scenario: Testcase id = M2M_24, description = 200350 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_24"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_25
  Scenario: Testcase id = M2M_25, description = 200350 IMEI DOES_NOT_CONTAIN DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_25"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_26
  Scenario: Testcase id = M2M_26, description = 200350 MSISDNC DOES_NOT_CONTAIN DB_DATA ACTIVE ALL | Issue is CSV Issue (BDEV-33488)
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_26"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_27
  Scenario: Testcase id = M2M_27, description = 200350 ACCOUNT_NUMBER  * ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_27"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_28
  Scenario: Testcase id = M2M_28, description = 200350 IMEI  * ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_28"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_29
  Scenario: Testcase id = M2M_29, description = 200350 MSISDNC  * ACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_29"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_30
  Scenario: Testcase id = M2M_30, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_30"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_31
  Scenario: Testcase id = M2M_31, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_31"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_32
  Scenario: Testcase id = M2M_32, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_32"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_33
  Scenario: Testcase id = M2M_33, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_33"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_34
  Scenario: Testcase id = M2M_34, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_34"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_35
  Scenario: Testcase id = M2M_35, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_35"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_36
  Scenario: Testcase id = M2M_36, description = 200523 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_36"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_37
  Scenario: Testcase id = M2M_37, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_37"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_38
  Scenario: Testcase id = M2M_38, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_38"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_39
  Scenario: Testcase id = M2M_39, description = Wildcard Search | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_39"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_40
  Scenario: Testcase id = M2M_40, description = 200523 MSISDNB EQUALS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_40"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-B" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_41
  Scenario: Testcase id = M2M_41, description = 200350 IMEI EQUALS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_41"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_42
  Scenario: Testcase id = M2M_42, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_42"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_43
  Scenario: Testcase id = M2M_43, description = 200350 MT_FILTER EQUALS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_43"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_44
  Scenario: Testcase id = M2M_44, description = 200350 DELIVERY_DEST EQUALS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_44"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_45
  Scenario: Testcase id = M2M_45, description = 200350 SHARED_GROUP EQUALS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_45"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_46
  Scenario: Testcase id = M2M_46, description = 200001 PTT_TG EQUALS  SUSPENDED ALL | Issue is BDEV-31162
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_46"
#    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_47
  Scenario: Testcase id = M2M_47, description = 200001 IP_ADDRESS EQUALS  SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_47"
#    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IP Address" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_48
  Scenario: Testcase id = M2M_48, description = 200001 CAPCODE EQUALS  SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_48"
#    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_49
  Scenario: Testcase id = M2M_49, description = 200350 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_49"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_50
  Scenario: Testcase id = M2M_50, description = 200350 IMEI NOT_EQUAL DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_50"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"