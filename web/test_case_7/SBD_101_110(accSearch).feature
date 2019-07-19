Feature: This feature file tests all the scenarios for SBD_101 to SBD_110

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @SBD @SBD_102
  Scenario: Testcase id = SBD_102, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_102"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "SHORT_BURST_DATA"

  @SBD @SBD_101
  Scenario: Testcase id = SBD_101, description = 200001 IMEI LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_101"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_102
  Scenario: Testcase id = SBD_102, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_102"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_103
  Scenario: Testcase id = SBD_103, description = 200001 IMEI EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_103"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_104
  Scenario: Testcase id = SBD_104, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_104"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_105
  Scenario: Testcase id = SBD_105, description = 200001 MT_FILTER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_105"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MT Filter" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_106
  Scenario: Testcase id = SBD_106, description = 200001 DELIVERY_DEST EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_106"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_107
  Scenario: Testcase id = SBD_107, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_107"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_108
  Scenario: Testcase id = SBD_108, description = 200001 IMEI NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_108"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_109
  Scenario: Testcase id = SBD_109, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_109"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SBD @SBD_110
  Scenario: Testcase id = SBD_110, description = 200001 IMEI LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_110"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"