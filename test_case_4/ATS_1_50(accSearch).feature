Feature: This feature file tests all the scenarios for ATS_1 to ATS_50

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @ATS @ATS_1
  Scenario: Testcase id = ATS_1, description = 200001 ATS_ICAO EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_1"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS ICAO" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_2
  Scenario: Testcase id = ATS_2, description = 200001 ATS_REG_TAIL_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_2"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS Reg/Tail Number" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_3
  Scenario: Testcase id = ATS_3, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_3"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_4
  Scenario: Testcase id = ATS_4, description = 200001 IMSI EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_4"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_5
  Scenario: Testcase id = ATS_5, description = 200001 IMEI EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_5"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMEI" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "Telephony" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_6
  Scenario: Testcase id = ATS_6, description = 200001 MSISDN EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_6"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_7
  Scenario: Testcase id = ATS_7, description = 200001 MSISDNC EQUALS DB_DATA ACTIVE ALL | Issue is BDEV-31157
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_7"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN-C" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_8
  Scenario: Testcase id = ATS_8, description = 200001 PROVIDER_REFERENCE EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_8"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_9
  Scenario: Testcase id = ATS_9, description = 200001 SIM_SERIAL_NUMBER EQUALS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_9"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_10
  Scenario: Testcase id = ATS_10, description = 200001 CAPCODE EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_10"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Capcode" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "ATS" dropdown is not available

  @ATS @ATS_11
  Scenario: Testcase id = ATS_11, description = 200001 DELIVERY_DEST EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_11"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Delivery Destination" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "ATS" dropdown is not available

  @ATS @ATS_12
  Scenario: Testcase id = ATS_12, description = 200001 ISDNA EQUALS * ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_12"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ISDNA" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "*" for "filterValue"
    Then I verify "ATS" dropdown is not available

  @ATS @ATS_13
  Scenario: Testcase id = ATS_13, description = 200001 ATS_ICAO NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_13"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS ICAO" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_14
  Scenario: Testcase id = ATS_14, description = 200001 ATS_REG_TAIL_NUMBER NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_14"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS Reg/Tail Number" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_15
  Scenario: Testcase id = ATS_15, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_15"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_16
  Scenario: Testcase id = ATS_16, description = 200001 IMSI NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_16"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_17
  Scenario: Testcase id = ATS_17, description = 200001 MSISDN NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_17"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_18
  Scenario: Testcase id = ATS_18, description = 200001 PROVIDER_REFERENCE NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_18"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_19
  Scenario: Testcase id = ATS_19, description = 200001 SIM_SERIAL_NUMBER NOT_EQUAL DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_19"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Not Equal" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_20
  Scenario: Testcase id = ATS_20, description = 200001 ATS_ICAO LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_20"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS ICAO" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_21
  Scenario: Testcase id = ATS_21, description = 200001 ATS_REG_TAIL_NUMBER LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_21"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS Reg/Tail Number" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_22
  Scenario: Testcase id = ATS_22, description = 200001 ACCOUNT_NUMBER LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_22"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_23
  Scenario: Testcase id = ATS_23, description = 200001 IMSI LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_23"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_24
  Scenario: Testcase id = ATS_24, description = 200001 MSISDN LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_24"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_25
  Scenario: Testcase id = ATS_25, description = 200001 PROVIDER_REFERENCE LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_25"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_26
  Scenario: Testcase id = ATS_26, description = 200001 SIM_SERIAL_NUMBER LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_26"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_27
  Scenario: Testcase id = ATS_27, description = 200001 ATS_ICAO NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_27"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS ICAO" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_28
  Scenario: Testcase id = ATS_28, description = 200001 ATS_REG_TAIL_NUMBER NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_28"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS Reg/Tail Number" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_29
  Scenario: Testcase id = ATS_29, description = 200001 ACCOUNT_NUMBER NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_29"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_30
  Scenario: Testcase id = ATS_30, description = 200001 IMSI NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_30"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_31
  Scenario: Testcase id = ATS_31, description = 200001 MSISDN NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_31"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_32
  Scenario: Testcase id = ATS_32, description = 200001 PROVIDER_REFERENCE NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_32"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_33
  Scenario: Testcase id = ATS_33, description = 200001 SIM_SERIAL_NUMBER NOT_LIKE DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_33"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Not Like" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_34
  Scenario: Testcase id = ATS_34, description = 200001 ATS_ICAO CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_34"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS ICAO" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_35
  Scenario: Testcase id = ATS_35, description = 200001 ATS_REG_TAIL_NUMBER CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_35"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS Reg/Tail Number" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_36
  Scenario: Testcase id = ATS_36, description = 200001 ACCOUNT_NUMBER CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_36"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_37
  Scenario: Testcase id = ATS_37, description = 200001 IMSI CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_37"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_38
  Scenario: Testcase id = ATS_38, description = 200001 MSISDN CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_38"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_39
  Scenario: Testcase id = ATS_39, description = 200001 PROVIDER_REFERENCE CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_39"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_40
  Scenario: Testcase id = ATS_40, description = 200001 SIM_SERIAL_NUMBER CONTAINS DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_40"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Contains" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_41
  Scenario: Testcase id = ATS_41, description = 200001 ATS_ICAO DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_41"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS ICAO" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_42
  Scenario: Testcase id = ATS_42, description = 200001 ATS_REG_TAIL_NUMBER DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_42"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "ATS Reg/Tail Number" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_43
  Scenario: Testcase id = ATS_43, description = 200001 ACCOUNT_NUMBER DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_43"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_44
  Scenario: Testcase id = ATS_44, description = 200001 IMSI DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_44"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "IMSI" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_45
  Scenario: Testcase id = ATS_45, description = 200001 MSISDN DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_45"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "MSISDN" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_46
  Scenario: Testcase id = ATS_46, description = 200001 PROVIDER_REFERENCE DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_46"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Provider Reference" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_47
  Scenario: Testcase id = ATS_47, description = 200001 SIM_SERIAL_NUMBER DOES_NOT_CONTAIN DB_DATA ACTIVE ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_47"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "SIM" for "filterType"
    When I select the value "Does Not Contain" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_48
  Scenario: Testcase id = ATS_48, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE PREVMONTH | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_48"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "Last Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_49
  Scenario: Testcase id = ATS_49, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE MTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_49"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Month" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @ATS @ATS_50
  Scenario: Testcase id = ATS_50, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ACTIVE YTD | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_50"
    Given I get db_data from soap with flag "Don't Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Equals" for "filterCond"
    When I set the value "DB_DATA" for "filterValue"
    When I select the value "ATS" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "This Year" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"