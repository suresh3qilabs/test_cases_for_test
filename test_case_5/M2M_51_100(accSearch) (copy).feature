Feature: This feature file tests all the scenarios for M2M_51 to M2M_100

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
 

  @M2M @M2M_51
  Scenario: Testcase id = M2M_51, description = 200350 MSISDNC NOT_EQUAL DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_51"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_52
  Scenario: Testcase id = M2M_52, description = 200350 ACCOUNT_NUMBER LIKE DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_52"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_53
  Scenario: Testcase id = M2M_53, description = 200350 IMEI LIKE DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_53"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_54
  Scenario: Testcase id = M2M_54, description = 200350 MSISDNC LIKE DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_54"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_55
  Scenario: Testcase id = M2M_55, description = 200350 ACCOUNT_NUMBER NOT_LIKE DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_55"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_56
  Scenario: Testcase id = M2M_56, description = 200350 IMEI NOT_LIKE DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_56"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_57
  Scenario: Testcase id = M2M_57, description = 200350 MSISDNC NOT_LIKE DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_57"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_58
  Scenario: Testcase id = M2M_58, description = 200350 ACCOUNT_NUMBER CONTAINS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_58"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_59
  Scenario: Testcase id = M2M_59, description = 200350 IMEI CONTAINS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_59"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_60
  Scenario: Testcase id = M2M_60, description = 200350 MSISDNC CONTAINS DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_60"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_61
  Scenario: Testcase id = M2M_61, description = 200350 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_61"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_62
  Scenario: Testcase id = M2M_62, description = 200350 IMEI DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_62"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_63
  Scenario: Testcase id = M2M_63, description = 200350 MSISDNC DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_63"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_64
  Scenario: Testcase id = M2M_64, description = 200350 ACCOUNT_NUMBER  * SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_64"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_65
  Scenario: Testcase id = M2M_65, description = 200350 IMEI  * SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_65"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_66
  Scenario: Testcase id = M2M_66, description = 200350 MSISDNC  * SUSPENDED ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_66"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_67
  Scenario: Testcase id = M2M_67, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_67"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_68
  Scenario: Testcase id = M2M_68, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_68"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_69
  Scenario: Testcase id = M2M_69, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_69"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_70
  Scenario: Testcase id = M2M_70, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_70"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_71
  Scenario: Testcase id = M2M_71, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_71"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_72
  Scenario: Testcase id = M2M_72, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_72"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_73
  Scenario: Testcase id = M2M_73, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_73"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_74
  Scenario: Testcase id = M2M_74, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_74"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_75
  Scenario: Testcase id = M2M_75, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_75"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_76
  Scenario: Testcase id = M2M_76, description = Wildcard Search | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_76"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_77
  Scenario: Testcase id = M2M_77, description = 200523 MSISDNB EQUALS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_77"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-B" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_78
  Scenario: Testcase id = M2M_78, description = 200350 IMEI EQUALS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_78"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_79
  Scenario: Testcase id = M2M_79, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_79"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_80
  Scenario: Testcase id = M2M_80, description = 200001 MT_FILTER EQUALS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_80"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_81
  Scenario: Testcase id = M2M_81, description = 200350 DELIVERY_DEST EQUALS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_81"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_82
  Scenario: Testcase id = M2M_82, description = 200350 SHARED_GROUP EQUALS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_82"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_83
  Scenario: Testcase id = M2M_83, description = 200001 PTT_TG EQUALS  DEACTIVE ALL | Issue is BDEV-31162
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_83"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Talkgroup" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_84
  Scenario: Testcase id = M2M_84, description = 200001 IP_ADDRESS EQUALS  DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_84"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IP Address" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_85
  Scenario: Testcase id = M2M_85, description = 200001 CAPCODE EQUALS  DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_85"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    Then I verify "M2M+" dropdown is not available

  @M2M @M2M_86
  Scenario: Testcase id = M2M_86, description = 200350 ACCOUNT_NUMBER NOT_EQUAL DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_86"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_87
  Scenario: Testcase id = M2M_87, description = 200350 IMEI NOT_EQUAL DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_87"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_88
  Scenario: Testcase id = M2M_88, description = 200350 MSISDNC NOT_EQUAL DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_88"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_89
  Scenario: Testcase id = M2M_89, description = 200350 ACCOUNT_NUMBER LIKE DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_89"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_90
  Scenario: Testcase id = M2M_90, description = 200350 IMEI LIKE DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_90"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_91
  Scenario: Testcase id = M2M_91, description = 200350 MSISDNC LIKE DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_91"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_92
  Scenario: Testcase id = M2M_92, description = 200350 ACCOUNT_NUMBER NOT_LIKE DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_92"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_93
  Scenario: Testcase id = M2M_93, description = 200350 IMEI NOT_LIKE DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_93"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_94
  Scenario: Testcase id = M2M_94, description = 200350 MSISDNC NOT_LIKE DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_94"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_95
  Scenario: Testcase id = M2M_95, description = 200350 ACCOUNT_NUMBER CONTAINS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_95"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_96
  Scenario: Testcase id = M2M_96, description = 200350 IMEI CONTAINS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_96"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_97
  Scenario: Testcase id = M2M_97, description = 200350 MSISDNC CONTAINS DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_97"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_98
  Scenario: Testcase id = M2M_98, description = 200350 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_98"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_99
  Scenario: Testcase id = M2M_99, description = 200350 IMEI DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_99"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @M2M @M2M_100
  Scenario: Testcase id = M2M_100, description = 200350 MSISDNC DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL | Issue is Timeout Issue
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_100"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "M2M+" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"