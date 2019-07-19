Feature: This feature file tests all the scenarios for TEL_Standard_51 to TEL_Standard_100

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @TEL @TEL_Standard_54
  Scenario: Testcase id = TEL_Standard_54, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_54"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "TELEPHONY"

  @TEL @TEL_Standard_51
  Scenario: Testcase id = TEL_Standard_51, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_51"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_52
  Scenario: Testcase id = TEL_Standard_52, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_52"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_53
  Scenario: Testcase id = TEL_Standard_53, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_53"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_54
  Scenario: Testcase id = TEL_Standard_54, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_54"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_55
  Scenario: Testcase id = TEL_Standard_55, description = 200001 IMSI EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_55"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_56
  Scenario: Testcase id = TEL_Standard_56, description = 200001 SIM_SERIAL_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_56"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_57
  Scenario: Testcase id = TEL_Standard_57, description = 200001 MSISDN EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_57"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_58
  Scenario: Testcase id = TEL_Standard_58, description = 101225 MSISDNB EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_58"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-B" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_59
  Scenario: Testcase id = TEL_Standard_59, description = 200001 MSISDNC EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_59"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_60
  Scenario: Testcase id = TEL_Standard_60, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_60"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_61
  Scenario: Testcase id = TEL_Standard_61, description = 200001 LOCAL EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_61"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Local Number" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_62
  Scenario: Testcase id = TEL_Standard_62, description = 101020 SHARED_GROUP EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_62"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_63
  Scenario: Testcase id = TEL_Standard_63, description = 200001 CAPCODE EQUALS * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_63"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Telephony" dropdown is not available

  @TEL @TEL_Standard_64
  Scenario: Testcase id = TEL_Standard_64, description = 200001 MT_FILTER EQUALS * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_64"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Telephony" dropdown is not available

  @TEL @TEL_Standard_65
  Scenario: Testcase id = TEL_Standard_65, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_65"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_66
  Scenario: Testcase id = TEL_Standard_66, description = 200001 MSISDN NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_66"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_67
  Scenario: Testcase id = TEL_Standard_67, description = 200001 IMSI NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_67"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_68
  Scenario: Testcase id = TEL_Standard_68, description = 200001 LOCAL NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_68"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Local Number" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_69
  Scenario: Testcase id = TEL_Standard_69, description = 101225 MSISDNB NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_69"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-B" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_70
  Scenario: Testcase id = TEL_Standard_70, description = 200001 PROVIDER_REFERENCE NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_70"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_71
  Scenario: Testcase id = TEL_Standard_71, description = 101020 SHARED_GROUP NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_71"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_72
  Scenario: Testcase id = TEL_Standard_72, description = 200001 SIM_SERIAL_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_72"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_73
  Scenario: Testcase id = TEL_Standard_73, description = 200001 MSISDNC NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_73"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_74
  Scenario: Testcase id = TEL_Standard_74, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_74"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_75
  Scenario: Testcase id = TEL_Standard_75, description = 200001 MSISDN LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_75"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_76
  Scenario: Testcase id = TEL_Standard_76, description = 200001 IMSI LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_76"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_77
  Scenario: Testcase id = TEL_Standard_77, description = 200001 SIM_SERIAL_NUMBER LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_77"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_78
  Scenario: Testcase id = TEL_Standard_78, description = 200001 MSISDNC LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_78"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_79
  Scenario: Testcase id = TEL_Standard_79, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_79"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_80
  Scenario: Testcase id = TEL_Standard_80, description = 200001 MSISDN NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_80"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_81
  Scenario: Testcase id = TEL_Standard_81, description = 200001 IMSI NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_81"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_82
  Scenario: Testcase id = TEL_Standard_82, description = 200001 SIM_SERIAL_NUMBER NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_82"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_83
  Scenario: Testcase id = TEL_Standard_83, description = 200001 MSISDNC NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_83"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_84
  Scenario: Testcase id = TEL_Standard_84, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_84"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_85
  Scenario: Testcase id = TEL_Standard_85, description = 200001 MSISDN CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_85"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_86
  Scenario: Testcase id = TEL_Standard_86, description = 200001 IMSI CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_86"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_87
  Scenario: Testcase id = TEL_Standard_87, description = 200001 SIM_SERIAL_NUMBER CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_87"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_88
  Scenario: Testcase id = TEL_Standard_88, description = 200001 MSISDNC CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_88"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_89
  Scenario: Testcase id = TEL_Standard_89, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_89"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_90
  Scenario: Testcase id = TEL_Standard_90, description = 200001 MSISDN DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_90"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_91
  Scenario: Testcase id = TEL_Standard_91, description = 200001 IMSI DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_91"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_92
  Scenario: Testcase id = TEL_Standard_92, description = 200001 SIM_SERIAL_NUMBER DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_92"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_93
  Scenario: Testcase id = TEL_Standard_93, description = 200001 MSISDNC DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_93"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_94
  Scenario: Testcase id = TEL_Standard_94, description = 200001 ACCOUNT_NUMBER  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_94"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_95
  Scenario: Testcase id = TEL_Standard_95, description = 200001 SIM_SERIAL_NUMBER  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_95"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_96
  Scenario: Testcase id = TEL_Standard_96, description = 200001 MSISDN  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_96"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_97
  Scenario: Testcase id = TEL_Standard_97, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_97"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_98
  Scenario: Testcase id = TEL_Standard_98, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_98"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_99
  Scenario: Testcase id = TEL_Standard_99, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_99"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_100
  Scenario: Testcase id = TEL_Standard_100, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_100"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"