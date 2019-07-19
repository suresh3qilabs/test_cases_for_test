Feature: This feature file tests all the scenarios for OP_151 to OP_164

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @OP @OP_159
  Scenario: Testcase id = OP_159, description = 200005 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_159"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "OPEN_PORT"

  @OP @OP_151
  Scenario: Testcase id = OP_151, description = 200005 MSISDN CONTAINS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_151"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_152
  Scenario: Testcase id = OP_152, description = 200005 SIM_SERIAL_NUMBER CONTAINS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_152"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_153
  Scenario: Testcase id = OP_153, description = 200005 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_153"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_154
  Scenario: Testcase id = OP_154, description = 200005 MSISDN DOES_NOT_CONTAIN DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_154"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_155
  Scenario: Testcase id = OP_155, description = 200005 SIM_SERIAL_NUMBER DOES_NOT_CONTAIN DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_155"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_156
  Scenario: Testcase id = OP_156, description = 200005 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_156"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_157
  Scenario: Testcase id = OP_157, description = 200005 MSISDN EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_157"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_158
  Scenario: Testcase id = OP_158, description = 200005 SIM_SERIAL_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_158"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_159
  Scenario: Testcase id = OP_159, description = 200005 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_159"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_160
  Scenario: Testcase id = OP_160, description = 200005 MSISDN NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_160"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_161
  Scenario: Testcase id = OP_161, description = 200005 SIM_SERIAL_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_161"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_162
  Scenario: Testcase id = OP_162, description = 200005 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_162"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_163
  Scenario: Testcase id = OP_163, description = 200005 MSISDN LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_163"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @OP @OP_164
  Scenario: Testcase id = OP_164, description = 200005 SIM_SERIAL_NUMBER LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_164"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "OpenPort" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"