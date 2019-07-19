Feature: This feature file tests all the scenarios for BURST_DVC_1 to BURST_DVC_50

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @BURST @BURST_DVC_33
  Scenario: Testcase id = BURST_DVC_33, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_33"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "BURST_DEVICE"

  @BURST @BURST_DVC_1
  Scenario: Testcase id = BURST_DVC_1, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_1"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_2
  Scenario: Testcase id = BURST_DVC_2, description = 200001 IMEI EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_2"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_3
  Scenario: Testcase id = BURST_DVC_3, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_3"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_4
  Scenario: Testcase id = BURST_DVC_4, description = 200001 MT_FILTER EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_4"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Burst Device" dropdown is not available

  @BURST @BURST_DVC_5
  Scenario: Testcase id = BURST_DVC_5, description = 200001 DELIVERY_DEST EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_5"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Burst Device" dropdown is not available

  @BURST @BURST_DVC_6
  Scenario: Testcase id = BURST_DVC_6, description = 200001 SHARED_GROUP EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_6"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Shared Group" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "Burst Device" dropdown is not available

  @BURST @BURST_DVC_7
  Scenario: Testcase id = BURST_DVC_7, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_7"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_8
  Scenario: Testcase id = BURST_DVC_8, description = 200001 IMEI NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_8"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_9
  Scenario: Testcase id = BURST_DVC_9, description = 200001 PROVIDER_REFERENCE NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_9"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_10
  Scenario: Testcase id = BURST_DVC_10, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_10"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_11
  Scenario: Testcase id = BURST_DVC_11, description = 200001 IMEI LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_11"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_12
  Scenario: Testcase id = BURST_DVC_12, description = 200001 PROVIDER_REFERENCE LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_12"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_13
  Scenario: Testcase id = BURST_DVC_13, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_13"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_14
  Scenario: Testcase id = BURST_DVC_14, description = 200001 IMEI NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_14"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_15
  Scenario: Testcase id = BURST_DVC_15, description = 200001 PROVIDER_REFERENCE NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_15"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_16
  Scenario: Testcase id = BURST_DVC_16, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_16"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_17
  Scenario: Testcase id = BURST_DVC_17, description = 200001 IMEI CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_17"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_18
  Scenario: Testcase id = BURST_DVC_18, description = 200001 PROVIDER_REFERENCE CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_18"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_19
  Scenario: Testcase id = BURST_DVC_19, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_19"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_20
  Scenario: Testcase id = BURST_DVC_20, description = 200001 IMEI DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_20"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_21
  Scenario: Testcase id = BURST_DVC_21, description = 200001 PROVIDER_REFERENCE DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_21"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_22
  Scenario: Testcase id = BURST_DVC_22, description = 200001 ACCOUNT_NUMBER  * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_22"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_23
  Scenario: Testcase id = BURST_DVC_23, description = 200001 IMEI  * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_23"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_24
  Scenario: Testcase id = BURST_DVC_24, description = 200001 PROVIDER_REFERENCE  * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_24"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_25
  Scenario: Testcase id = BURST_DVC_25, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_25"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_26
  Scenario: Testcase id = BURST_DVC_26, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_26"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_27
  Scenario: Testcase id = BURST_DVC_27, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_27"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_28
  Scenario: Testcase id = BURST_DVC_28, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE TODAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_28"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Today" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_29
  Scenario: Testcase id = BURST_DVC_29, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YESTERDAY | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_29"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Yesterday" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_30
  Scenario: Testcase id = BURST_DVC_30, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE WTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_30"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_31
  Scenario: Testcase id = BURST_DVC_31, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVWEEK | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_31"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Week" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_32
  Scenario: Testcase id = BURST_DVC_32, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE CUSTOM | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_32"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Custom Range" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_33
  Scenario: Testcase id = BURST_DVC_33, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_33"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_34
  Scenario: Testcase id = BURST_DVC_34, description = 200001 IMEI EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_34"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_35
  Scenario: Testcase id = BURST_DVC_35, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_35"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_36
  Scenario: Testcase id = BURST_DVC_36, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_36"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_37
  Scenario: Testcase id = BURST_DVC_37, description = 200001 IMEI NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_37"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_38
  Scenario: Testcase id = BURST_DVC_38, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_38"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_39
  Scenario: Testcase id = BURST_DVC_39, description = 200001 IMEI LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_39"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_40
  Scenario: Testcase id = BURST_DVC_40, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_40"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_41
  Scenario: Testcase id = BURST_DVC_41, description = 200001 IMEI NOT_LIKE DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_41"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_42
  Scenario: Testcase id = BURST_DVC_42, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_42"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_43
  Scenario: Testcase id = BURST_DVC_43, description = 200001 IMEI CONTAINS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_43"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_44
  Scenario: Testcase id = BURST_DVC_44, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_44"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_45
  Scenario: Testcase id = BURST_DVC_45, description = 200001 IMEI DOES_NOT_CONTAIN DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_45"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_46
  Scenario: Testcase id = BURST_DVC_46, description = 200001 ACCOUNT_NUMBER  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_46"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_47
  Scenario: Testcase id = BURST_DVC_47, description = 200001 IMEI  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_47"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_48
  Scenario: Testcase id = BURST_DVC_48, description = 200001 PROVIDER_REFERENCE  * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_48"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Select" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_49
  Scenario: Testcase id = BURST_DVC_49, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_49"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @BURST @BURST_DVC_50
  Scenario: Testcase id = BURST_DVC_50, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_50"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Burst Device" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"