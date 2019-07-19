Feature: This feature file tests all the scenarios for Prep Work before running AccountSearch

  Background:
    * I read the data from the excel "Config_PrepWorkaccountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @PTT @PTT_DVC_35
  Scenario: Testcase id = PTT_DVC_35, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_DVC_35"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "PTT_DEVICE"

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

  @PTT @PTT_TG_39
  Scenario: Testcase id = PTT_TG_39, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_39"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "PTT_TALKGROUP"

  @PTT @PTT_TG_87
  Scenario: Testcase id = PTT_TG_87, description = 100982 ACCOUNT_NUMBER NOT_EQUAL DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_87"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "PTT Talkgroup"

  @PTT @PTT_TG_100
  Scenario: Testcase id = PTT_TG_100, description = 101185 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PTT_TG_100"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "PTT Talkgroup"

  @M2M @M2M_128
  Scenario: Testcase id = M2M_128, description = 200350 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_128"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "M2M+"

  @M2M @M2M_38
  Scenario: Testcase id = M2M_38, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_38"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "MACHINE_TO_MACHINE"

  @M2M @M2M_112
  Scenario: Testcase id = M2M_112, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_112"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "M2M+"

  @M2M @M2M_130
  Scenario: Testcase id = M2M_130, description = 200350 ACCOUNT_NUMBER LIKE DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_130"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "M2M+"

  @M2M @M2M_112
  Scenario: Testcase id = M2M_112, description = 200350 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "M2M_112"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "M2M+"

  @TEL @TEL_Standard_54
  Scenario: Testcase id = TEL_Standard_54, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_54"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "TELEPHONY"

  @TEL @TEL_Standard_143
  Scenario: Testcase id = TEL_Standard_143, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_143"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "TELEPHONY"

  @TEL @TEL_Standard_163
  Scenario: Testcase id = TEL_Standard_163, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL | Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "TEL_Standard_163"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "TELEPHONY"

  @OP @OP_57
  Scenario: Testcase id = OP_57, description = 100982 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_57"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "OPEN_PORT"

  @OP @OP_132
  Scenario: Testcase id = OP_132, description = 200005 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_132"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "OPEN_PORT"

  @OP @OP_159
  Scenario: Testcase id = OP_159, description = 200005 ACCOUNT_NUMBER NOT_EQUAL DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "OP_159"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "OPEN_PORT"

  @ATS @ATS_63
  Scenario: Testcase id = ATS_63, description = 200001 ACCOUNT_NUMBER NOT_EQUAL DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_63"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "ATS"

  @ATS @ATS_80
  Scenario: Testcase id = ATS_80, description = 200001 ATS_ICAO EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_80"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "ATS"

  @ATS @ATS_87
  Scenario: Testcase id = ATS_87, description = 200001 ATS_ICAO EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "ATS_87"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "ATS"


  @PAG @PAG_49
  Scenario: Testcase id = PAG_49, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_49"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "PAGING"

  @PAG @PAG_46
  Scenario: Testcase id = PAG_46, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_46"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "PAGING"

  @PAG @PAG_31
  Scenario: Testcase id = PAG_31, description = 101026 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "PAG_31"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "PAGING"

  @SBD @SBD_33
  Scenario: Testcase id = SBD_33, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_33"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "SHORT_BURST_DATA"

  @SBD @SBD_93
  Scenario: Testcase id = SBD_93, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_93"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "PENDING" accounts for "SHORT_BURST_DATA"

  @SBD @SBD_102
  Scenario: Testcase id = SBD_102, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SBD_102"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "ERROR" accounts for "SHORT_BURST_DATA"

  @BURST @BURST_DVC_33
  Scenario: Testcase id = BURST_DVC_33, description = 200001 ACCOUNT_NUMBER EQUALS DB_DATA SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "BURST_DVC_33"
    Given I get db_data from soap with flag "Run"
    Then I create 2 "SUSPENDED" accounts for "BURST_DEVICE"

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



