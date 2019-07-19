Feature: This feature file tests all the scenarios for TEL_Standard_151 to TEL_Standard_167

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @TEL @TEL_Standard_163
  Scenario: Testcase id = TEL_Standard_163, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_163"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "TELEPHONY"

  @TEL @TEL_Standard_151
  Scenario: Testcase id = TEL_Standard_151, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA PENDING ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_151"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_152
  Scenario: Testcase id = TEL_Standard_152, description = 200001 MSISDN NOT_EQUAL DB_DATA PENDING ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_152"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_153
  Scenario: Testcase id = TEL_Standard_153, description = 200001 SIM_SERIAL_NUMBER NOT_EQUAL DB_DATA PENDING ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_153"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_154
  Scenario: Testcase id = TEL_Standard_154, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_154"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_155
  Scenario: Testcase id = TEL_Standard_155, description = 200001 MSISDN LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_155"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_156
  Scenario: Testcase id = TEL_Standard_156, description = 200001 SIM_SERIAL_NUMBER LIKE DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_156"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_157
  Scenario: Testcase id = TEL_Standard_157, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA PENDING ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_157"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_158
  Scenario: Testcase id = TEL_Standard_158, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_158"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_159
  Scenario: Testcase id = TEL_Standard_159, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA PENDING ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_159"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_160
  Scenario: Testcase id = TEL_Standard_160, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_160"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_161
  Scenario: Testcase id = TEL_Standard_161, description = 200001 MSISDN EQUALS DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_161"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_162
  Scenario: Testcase id = TEL_Standard_162, description = 200001 SIM_SERIAL_NUMBER EQUALS DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_162"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_163
  Scenario: Testcase id = TEL_Standard_163, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_163"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_164
  Scenario: Testcase id = TEL_Standard_164, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_164"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_165
  Scenario: Testcase id = TEL_Standard_165, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_165"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_166
  Scenario: Testcase id = TEL_Standard_166, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_166"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_Standard_167
  Scenario: Testcase id = TEL_Standard_167, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_167"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"