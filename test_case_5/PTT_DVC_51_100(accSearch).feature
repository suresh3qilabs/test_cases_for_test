Feature: This feature file tests all the scenarios for PTT_DVC_51 to PTT_DVC_100

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @PTT @PTT_DVC_86
  Scenario: Testcase id = PTT_DVC_86, description = 100982 ACCOUNT_NUMBER NOT_EQUAL DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_86"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "PTT Device"

  @PTT @PTT_DVC_96
  Scenario: Testcase id = PTT_DVC_96, description = 100982 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_96"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "PTT Device"

  @PTT @PTT_DVC_51
  Scenario: Testcase id = PTT_DVC_51, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_51"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_52
  Scenario: Testcase id = PTT_DVC_52, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_52"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_53
  Scenario: Testcase id = PTT_DVC_53, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_53"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_54
  Scenario: Testcase id = PTT_DVC_54, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_54"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_55
  Scenario: Testcase id = PTT_DVC_55, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_55"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_56
  Scenario: Testcase id = PTT_DVC_56, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_56"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_57
  Scenario: Testcase id = PTT_DVC_57, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_57"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_58
  Scenario: Testcase id = PTT_DVC_58, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_58"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_59
  Scenario: Testcase id = PTT_DVC_59, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_59"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_60
  Scenario: Testcase id = PTT_DVC_60, description = 100982 IMEI EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_60"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_61
  Scenario: Testcase id = PTT_DVC_61, description = 100982 PROVIDER_REFERENCE EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_61"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_62
  Scenario: Testcase id = PTT_DVC_62, description = 100982 ACCOUNT_NUMBER NOT_EQUAL DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_62"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_63
  Scenario: Testcase id = PTT_DVC_63, description = 100982 IMEI NOT_EQUAL DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_63"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_64
  Scenario: Testcase id = PTT_DVC_64, description = 100982 ACCOUNT_NUMBER LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_64"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_65
  Scenario: Testcase id = PTT_DVC_65, description = 100982 IMEI LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_65"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_66
  Scenario: Testcase id = PTT_DVC_66, description = 100982 ACCOUNT_NUMBER NOT_LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_66"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_67
  Scenario: Testcase id = PTT_DVC_67, description = 100982 IMEI NOT_LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_67"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_68
  Scenario: Testcase id = PTT_DVC_68, description = 100982 ACCOUNT_NUMBER CONTAINS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_68"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_69
  Scenario: Testcase id = PTT_DVC_69, description = 100982 IMEI CONTAINS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_69"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_70
  Scenario: Testcase id = PTT_DVC_70, description = 100982 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_70"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_71
  Scenario: Testcase id = PTT_DVC_71, description = 100982 IMEI DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_71"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_72
  Scenario: Testcase id = PTT_DVC_72, description = 100982 ACCOUNT_NUMBER  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_72"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_73
  Scenario: Testcase id = PTT_DVC_73, description = 100982 IMEI  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_73"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_74
  Scenario: Testcase id = PTT_DVC_74, description = 100982 PROVIDER_REFERENCE  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_74"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_75
  Scenario: Testcase id = PTT_DVC_75, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_75"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_76
  Scenario: Testcase id = PTT_DVC_76, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_76"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_77
  Scenario: Testcase id = PTT_DVC_77, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_77"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_78
  Scenario: Testcase id = PTT_DVC_78, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_78"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_79
  Scenario: Testcase id = PTT_DVC_79, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_79"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_80
  Scenario: Testcase id = PTT_DVC_80, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_80"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_81
  Scenario: Testcase id = PTT_DVC_81, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_81"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_82
  Scenario: Testcase id = PTT_DVC_82, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_82"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_83
  Scenario: Testcase id = PTT_DVC_83, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_83"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_84
  Scenario: Testcase id = PTT_DVC_84, description = 100982 IMEI EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_84"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_85
  Scenario: Testcase id = PTT_DVC_85, description = 100982 PROVIDER_REFERENCE EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_85"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_86
  Scenario: Testcase id = PTT_DVC_86, description = 100982 ACCOUNT_NUMBER NOT_EQUAL DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_86"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_87
  Scenario: Testcase id = PTT_DVC_87, description = 100982 IMEI NOT_EQUAL DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_87"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_88
  Scenario: Testcase id = PTT_DVC_88, description = 100982 ACCOUNT_NUMBER LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_88"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_89
  Scenario: Testcase id = PTT_DVC_89, description = 100982 IMEI LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_89"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_90
  Scenario: Testcase id = PTT_DVC_90, description = 100982 ACCOUNT_NUMBER NOT_LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_90"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_91
  Scenario: Testcase id = PTT_DVC_91, description = 100982 ACCOUNT_NUMBER CONTAINS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_91"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_92
  Scenario: Testcase id = PTT_DVC_92, description = 100982 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_92"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_93
  Scenario: Testcase id = PTT_DVC_93, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_93"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_94
  Scenario: Testcase id = PTT_DVC_94, description = 100982 IMEI EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_94"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_95
  Scenario: Testcase id = PTT_DVC_95, description = 100982 PROVIDER_REFERENCE EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_95"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_96
  Scenario: Testcase id = PTT_DVC_96, description = 100982 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_96"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_97
  Scenario: Testcase id = PTT_DVC_97, description = 100982 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_97"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_98
  Scenario: Testcase id = PTT_DVC_98, description = 100982 ACCOUNT_NUMBER NOT_LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_98"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_99
  Scenario: Testcase id = PTT_DVC_99, description = 100982 ACCOUNT_NUMBER CONTAINS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_99"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @PTT @PTT_DVC_100
  Scenario: Testcase id = PTT_DVC_100, description = 100982 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_100"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "PTT Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"