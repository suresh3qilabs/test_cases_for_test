Feature: This feature file tests all the scenarios for TEL_RGW_CREW_1 to TEL_RGW_CREW_6

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab
 

  @TEL @TEL_RGW_CREW_1
  Scenario: Testcase id = TEL_RGW_CREW_1, description = 200515 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_RGW_CREW_1"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_RGW_CREW_2
  Scenario: Testcase id = TEL_RGW_CREW_2, description = 200515 IMSI EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_RGW_CREW_2"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_RGW_CREW_3
  Scenario: Testcase id = TEL_RGW_CREW_3, description = 200515 SIM_SERIAL_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_RGW_CREW_3"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_RGW_CREW_4
  Scenario: Testcase id = TEL_RGW_CREW_4, description = 200515 MSISDN EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_RGW_CREW_4"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_RGW_CREW_5
  Scenario: Testcase id = TEL_RGW_CREW_5, description = 200515 MSISDNB EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_RGW_CREW_5"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-B" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @TEL @TEL_RGW_CREW_6
  Scenario: Testcase id = TEL_RGW_CREW_6, description = 200515 MSISDNC EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_RGW_CREW_6"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"