Feature: This feature file tests all the scenarios for BURST_DVC_51 to BURST_DVC_84

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @BURST @BURST_DVC_81
  Scenario: Testcase id = BURST_DVC_81, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_81"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "BURST_DEVICE"

  @BURST @BURST_DVC_83
  Scenario: Testcase id = BURST_DVC_83, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_83"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "BURST_DEVICE"

  @BURST @BURST_DVC_51
  Scenario: Testcase id = BURST_DVC_51, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_51"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_52
  Scenario: Testcase id = BURST_DVC_52, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_52"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_53
  Scenario: Testcase id = BURST_DVC_53, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_53"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_54
  Scenario: Testcase id = BURST_DVC_54, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_54"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_55
  Scenario: Testcase id = BURST_DVC_55, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_55"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_56
  Scenario: Testcase id = BURST_DVC_56, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_56"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_57
  Scenario: Testcase id = BURST_DVC_57, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_57"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_58
  Scenario: Testcase id = BURST_DVC_58, description = 200001 IMEI EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_58"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_59
  Scenario: Testcase id = BURST_DVC_59, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_59"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_60
  Scenario: Testcase id = BURST_DVC_60, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_60"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_61
  Scenario: Testcase id = BURST_DVC_61, description = 200001 IMEI NOT_EQUAL DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_61"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_62
  Scenario: Testcase id = BURST_DVC_62, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_62"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_63
  Scenario: Testcase id = BURST_DVC_63, description = 200001 IMEI LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_63"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_64
  Scenario: Testcase id = BURST_DVC_64, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_64"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_65
  Scenario: Testcase id = BURST_DVC_65, description = 200001 IMEI NOT_LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_65"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_66
  Scenario: Testcase id = BURST_DVC_66, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_66"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_67
  Scenario: Testcase id = BURST_DVC_67, description = 200001 IMEI CONTAINS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_67"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_68
  Scenario: Testcase id = BURST_DVC_68, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_68"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_69
  Scenario: Testcase id = BURST_DVC_69, description = 200001 IMEI DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_69"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_70
  Scenario: Testcase id = BURST_DVC_70, description = 200001 ACCOUNT_NUMBER  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_70"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_71
  Scenario: Testcase id = BURST_DVC_71, description = 200001 IMEI  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_71"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_72
  Scenario: Testcase id = BURST_DVC_72, description = 200001 PROVIDER_REFERENCE  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_72"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_73
  Scenario: Testcase id = BURST_DVC_73, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_73"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_74
  Scenario: Testcase id = BURST_DVC_74, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_74"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_75
  Scenario: Testcase id = BURST_DVC_75, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_75"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_76
  Scenario: Testcase id = BURST_DVC_76, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_76"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_77
  Scenario: Testcase id = BURST_DVC_77, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_77"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_78
  Scenario: Testcase id = BURST_DVC_78, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_78"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_79
  Scenario: Testcase id = BURST_DVC_79, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_79"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_80
  Scenario: Testcase id = BURST_DVC_80, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_80"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_81
  Scenario: Testcase id = BURST_DVC_81, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_81"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_82
  Scenario: Testcase id = BURST_DVC_82, description = 200001 IMEI EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_82"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_83
  Scenario: Testcase id = BURST_DVC_83, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_83"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_84
  Scenario: Testcase id = BURST_DVC_84, description = 200001 IMEI EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_84"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"