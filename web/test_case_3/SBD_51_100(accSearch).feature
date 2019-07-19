Feature: This feature file tests all the scenarios for SBD_51 to SBD_100

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @SBD @SBD_93
  Scenario: Testcase id = SBD_93, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_93"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "SHORT_BURST_DATA"

  @SBD @SBD_51
  Scenario: Testcase id = SBD_51, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_51"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_52
  Scenario: Testcase id = SBD_52, description = 200001 IMEI DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_52"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_53
  Scenario: Testcase id = SBD_53, description = 200001 ACCOUNT_NUMBER  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_53"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_54
  Scenario: Testcase id = SBD_54, description = 200001 IMEI  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_54"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_55
  Scenario: Testcase id = SBD_55, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_55"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_56
  Scenario: Testcase id = SBD_56, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_56"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_57
  Scenario: Testcase id = SBD_57, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_57"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_58
  Scenario: Testcase id = SBD_58, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_58"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_59
  Scenario: Testcase id = SBD_59, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_59"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_60
  Scenario: Testcase id = SBD_60, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_60"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_61
  Scenario: Testcase id = SBD_61, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_61"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_62
  Scenario: Testcase id = SBD_62, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_62"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_63
  Scenario: Testcase id = SBD_63, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_63"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_64
  Scenario: Testcase id = SBD_64, description = Wildcard Search
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_64"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_65
  Scenario: Testcase id = SBD_65, description = 200001 IMEI EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_65"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_66
  Scenario: Testcase id = SBD_66, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_66"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_67
  Scenario: Testcase id = SBD_67, description = 200001 MT_FILTER EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_67"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_68
  Scenario: Testcase id = SBD_68, description = 200001 DELIVERY_DEST EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_68"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_69
  Scenario: Testcase id = SBD_69, description = 101088 SHARED_GROUP EQUALS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_69"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_70
  Scenario: Testcase id = SBD_70, description = 200001 SIM_SERIAL_NUMBER EQUALS * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_70"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "SBD" dropdown is not available

  @SBD @SBD_71
  Scenario: Testcase id = SBD_71, description = 200001 CAPCODE EQUALS * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_71"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "SBD" dropdown is not available

  @SBD @SBD_72
  Scenario: Testcase id = SBD_72, description = 200001 VESSEL_NAME EQUALS * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_72"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Vessel Name" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "SBD" dropdown is not available

  @SBD @SBD_73
  Scenario: Testcase id = SBD_73, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_73"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_74
  Scenario: Testcase id = SBD_74, description = 200001 IMEI NOT_EQUAL DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_74"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_75
  Scenario: Testcase id = SBD_75, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_75"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_76
  Scenario: Testcase id = SBD_76, description = 200001 IMEI LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_76"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_77
  Scenario: Testcase id = SBD_77, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_77"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_78
  Scenario: Testcase id = SBD_78, description = 200001 IMEI NOT_LIKE DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_78"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_79
  Scenario: Testcase id = SBD_79, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_79"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_80
  Scenario: Testcase id = SBD_80, description = 200001 IMEI CONTAINS DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_80"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_81
  Scenario: Testcase id = SBD_81, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_81"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_82
  Scenario: Testcase id = SBD_82, description = 200001 IMEI DOES_NOT_CONTAIN DB_DATA DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_82"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_83
  Scenario: Testcase id = SBD_83, description = 200001 ACCOUNT_NUMBER  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_83"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_84
  Scenario: Testcase id = SBD_84, description = 200001 IMEI  * DEACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_84"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_85
  Scenario: Testcase id = SBD_85, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_85"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_86
  Scenario: Testcase id = SBD_86, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_86"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_87
  Scenario: Testcase id = SBD_87, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_87"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_88
  Scenario: Testcase id = SBD_88, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_88"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_89
  Scenario: Testcase id = SBD_89, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_89"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_90
  Scenario: Testcase id = SBD_90, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_90"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_91
  Scenario: Testcase id = SBD_91, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_91"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_92
  Scenario: Testcase id = SBD_92, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA DEACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_92"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Deactive" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_93
  Scenario: Testcase id = SBD_93, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_93"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_94
  Scenario: Testcase id = SBD_94, description = 200001 IMEI LIKE * PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_94"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_95
  Scenario: Testcase id = SBD_95, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_95"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_96
  Scenario: Testcase id = SBD_96, description = 200001 MT_FILTER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_96"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_97
  Scenario: Testcase id = SBD_97, description = 200001 DELIVERY_DEST EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_97"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_98
  Scenario: Testcase id = SBD_98, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_98"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_99
  Scenario: Testcase id = SBD_99, description = 200001 IMEI NOT_EQUAL DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_99"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_100
  Scenario: Testcase id = SBD_100, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_100"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"