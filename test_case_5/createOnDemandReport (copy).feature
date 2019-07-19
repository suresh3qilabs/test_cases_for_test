Feature: This feature file tests all the scenarios for createOnDemandReport

  Background:
    * I read the data from the excel "Config_createOnDemandReport.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @SPNetIWS @SPNetIWS_1
  Scenario: Testcase id = SPNetIWS_1, description = Invalid email address
    Given Provisioning System Mode is set to "OFF" for testcase "SPNetIWS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Account Sync Report" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "mayra.delrio" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "*" for "Contract ID" on Reporting page
    Then I click on "Create Report" button
    Then I verify error message "Please provide a valid email address." on screen

  @SB @SB_1
  Scenario: Testcase id = SB_1, description = DELIVERED, TEL, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @SB @SB_2
  Scenario: Testcase id = SB_2, description = TEL, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_3
  Scenario: Testcase id = SB_3, description = SBD, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SB_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "Short Burst Data" for "Market" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I use "name" to select the value "Demo" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "15" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_4
  Scenario: Testcase id = SB_4, description = PAG, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "Paging" for "Market" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "8" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_5
  Scenario: Testcase id = SB_5, description = OP, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "OpenPort" for "Market" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I use "name" to select the value "Internal" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_6
  Scenario: Testcase id = SB_6, description = BURST_DEVICE, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SB_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "Burst Device" for "Market" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I use "name" to select the value "Demo" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_7
  Scenario: Testcase id = SB_7, description = BURST_SERVICE, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Burst Service" for "Market" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_8
  Scenario: Testcase id = SB_8, description = ATS, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "ATS" for "Market" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I use "name" to select the value "Internal" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_9
  Scenario: Testcase id = SB_9, description = PTT_DVC, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SB_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "PTT Device" for "Market" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I use "name" to select the value "Internal" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_10
  Scenario: Testcase id = SB_10, description = PTT_TG, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "PTT Talkgroup" for "Market" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_11
  Scenario: Testcase id = SB_11, description = M2M, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SB_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "M2M" for "Market" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_12
  Scenario: Testcase id = SB_12, description = TEL, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SB_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I use "name" to select the value "Demo" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_13
  Scenario: Testcase id = SB_13, description = SBD, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_13"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Short Burst Data" for "Market" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_14
  Scenario: Testcase id = SB_14, description = PAG, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_14"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Paging" for "Market" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I use "name" to select the value "Internal" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_15
  Scenario: Testcase id = SB_15, description = OP, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SB_15"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "OpenPort" for "Market" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I use "name" to select the value "Demo" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_16
  Scenario: Testcase id = SB_16, description = BURST_DEVICE, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_16"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Burst Device" for "Market" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_17
  Scenario: Testcase id = SB_17, description = BURST_SERVICE, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SB_17"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "Burst Service" for "Market" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I use "name" to select the value "Internal" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_18
  Scenario: Testcase id = SB_18, description = ATS, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_18"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "ATS" for "Market" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I use "name" to select the value "Demo" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_19
  Scenario: Testcase id = SB_19, description = PTT_DVC, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_19"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "PTT Device" for "Market" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I use "name" to select the value "Commercial" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SB @SB_20
  Scenario: Testcase id = SB_20, description = PTT_TG, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SB_20"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Subscriber Base" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "PTT Talkgroup" for "Market" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I use "name" to select the value "Internal" for "Type" on Reporting page
    When I use "name" to select the value "All" for "Search Activation Date Range" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @PCH @PCH_1
  Scenario: Testcase id = PCH_1, description = DELIVERED, 20, *
    Given Provisioning System Mode is set to "OFF" for testcase "PCH_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Prepaid Call History" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @PCH @PCH_2
  Scenario: Testcase id = PCH_2, description = 20, *
    Given Provisioning System Mode is set to "OFF" for testcase "PCH_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Call History" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_1
  Scenario: Testcase id = PAS_1, description = DELIVERED, 3KPREPAY, CREW
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "3K" for "Service Plan" on Reporting page
    When I use "name" to select the value "Crew" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @PAS @PAS_4
  Scenario: Testcase id = PAS_4, description = AFRICAPREPAYR, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "Africa" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "8" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_6
  Scenario: Testcase id = PAS_6, description = CHINASEAPREPAYR, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "ChinaSea" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_7
  Scenario: Testcase id = PAS_7, description = CREWCALLING, CREW
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Crew" for "Service Plan" on Reporting page
    When I use "name" to select the value "Crew" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_8
  Scenario: Testcase id = PAS_8, description = GOPREPAY, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "GO" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_9
  Scenario: Testcase id = PAS_9, description = LATAMPREPAYR, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Latam" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_10
  Scenario: Testcase id = PAS_10, description = MENAPREPAY, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Mena" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_11
  Scenario: Testcase id = PAS_11, description = NORTHLIGHTSPREPAYR, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "NorthernLights" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_12
  Scenario: Testcase id = PAS_12, description = RUSSIAPREPAY, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Russia" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_13
  Scenario: Testcase id = PAS_13, description = RUSSIAPREPAYR, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_13"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Russia" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_15
  Scenario: Testcase id = PAS_15, description = STDPREPAY, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_15"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Standard" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @PAS @PAS_16
  Scenario: Testcase id = PAS_16, description = STDPREPAYNR, PP
    Given Provisioning System Mode is set to "OFF" for testcase "PAS_16"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Prepaid Account Summary" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Standard" for "Service Plan" on Reporting page
    When I use "name" to select the value "Prepaid" for "Payment Model" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Created Date Range" on Reporting page
    When I use "name" to select the value "All" for "Expired Date Range" on Reporting page
    When I set the value "0" for "Balance" on Reporting page
    When I use "name" to select the value "Greater Than or Equal To" for "Operator" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify sub number belong to selected sp

  @VD @VD_1
  Scenario: Testcase id = VD_1, description = DELIVERED, CSV, SERIAL_NUMBER
    Given Provisioning System Mode is set to "OFF" for testcase "VD_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Voucher Details" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Serial Number" for "Parameter Type" on Reporting page
    When I set the value "*" for "Parameter Contents" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @VUD @VUD_1
  Scenario: Testcase id = VUD_1, description = DELIVERED, CSV, SERIAL_NUMBER
    Given Provisioning System Mode is set to "OFF" for testcase "VUD_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Voucher Usage Details" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Serial Number" for "Parameter Type" on Reporting page
    When I set the value "*" for "Parameter Contents" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @RI @RI_1
  Scenario: Testcase id = RI_1, description = DELIVERED, IP, ASSIGNED, TEL
    Given Provisioning System Mode is set to "OFF" for testcase "RI_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "IP Address" for "Resource Type" on Reporting page
    When I use "name" to select the value "Assigned" for "Resource Status" on Reporting page
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @RI @RI_2
  Scenario: Testcase id = RI_2, description = ICCID, ASSIGNED, TEL
    Given Provisioning System Mode is set to "OFF" for testcase "RI_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "SIM" for "Resource Type" on Reporting page
    When I use "name" to select the value "Assigned" for "Resource Status" on Reporting page
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_3
  Scenario: Testcase id = RI_3, description = IMEI, RESERVED, SBD
    Given Provisioning System Mode is set to "OFF" for testcase "RI_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "IMEI" for "Resource Type" on Reporting page
    When I use "name" to select the value "Reserved" for "Resource Status" on Reporting page
    When I use "name" to select the value "Short Burst Data" for "Market" on Reporting page
    When I set the value "10" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_4
  Scenario: Testcase id = RI_4, description = IMEI, RESERVED, M2M
    Given Provisioning System Mode is set to "OFF" for testcase "RI_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "IMEI" for "Resource Type" on Reporting page
    When I use "name" to select the value "Reserved" for "Resource Status" on Reporting page
    When I use "name" to select the value "M2M" for "Market" on Reporting page
    When I set the value "15" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_5
  Scenario: Testcase id = RI_5, description = MSISDN, ASSIGNED, OP
    Given Provisioning System Mode is set to "OFF" for testcase "RI_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "MSISDN" for "Resource Type" on Reporting page
    When I use "name" to select the value "Assigned" for "Resource Status" on Reporting page
    When I use "name" to select the value "OpenPort" for "Market" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_6
  Scenario: Testcase id = RI_6, description = IMEI, RESERVED, CERTUS
    Given Provisioning System Mode is set to "OFF" for testcase "RI_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "IMEI" for "Resource Type" on Reporting page
    When I use "name" to select the value "Reserved" for "Resource Status" on Reporting page
    When I use "name" to select the value "Certus" for "Market" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_7
  Scenario: Testcase id = RI_7, description = ISDNA, DEASSIGNED, PAG
    Given Provisioning System Mode is set to "OFF" for testcase "RI_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "ISDNA" for "Resource Type" on Reporting page
    When I use "name" to select the value "De-assigned" for "Resource Status" on Reporting page
    When I use "name" to select the value "Paging" for "Market" on Reporting page
    When I set the value "10" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_8
  Scenario: Testcase id = RI_8, description = IMEI, ASSIGNED, BURST_DEVICE
    Given Provisioning System Mode is set to "OFF" for testcase "RI_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "IMEI" for "Resource Type" on Reporting page
    When I use "name" to select the value "Assigned" for "Resource Status" on Reporting page
    When I use "name" to select the value "Burst Device" for "Market" on Reporting page
    When I set the value "15" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_10
  Scenario: Testcase id = RI_10, description = MSISDN, ASSIGNED, ATS
    Given Provisioning System Mode is set to "OFF" for testcase "RI_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "MSISDN" for "Resource Type" on Reporting page
    When I use "name" to select the value "Assigned" for "Resource Status" on Reporting page
    When I use "name" to select the value "ATS" for "Market" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @RI @RI_11
  Scenario: Testcase id = RI_11, description = IMEI, ASSIGNED, PTT_DVC
    Given Provisioning System Mode is set to "OFF" for testcase "RI_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Resource Inventory" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "IMEI" for "Resource Type" on Reporting page
    When I use "name" to select the value "Assigned" for "Resource Status" on Reporting page
    When I use "name" to select the value "PTT Device" for "Market" on Reporting page
    When I set the value "10" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    When I set the value "" for "SubMarket" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all Service Type is the selected one on screen

  @PH @PH_1
  Scenario: Testcase id = PH_1, description = DELIVERED, TEL, *
    Given Provisioning System Mode is set to "OFF" for testcase "PH_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "true" for "Compressed" on Reporting page
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I set the value "*" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @PH @PH_2
  Scenario: Testcase id = PH_2, description = TEL, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "true" for "Compressed" on Reporting page
    When I use "name" to select the value "Telephony" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_3
  Scenario: Testcase id = PH_3, description = SBD, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "ShortBurstData" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "10" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_4
  Scenario: Testcase id = PH_4, description = PAG, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Paging" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "15" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_5
  Scenario: Testcase id = PH_5, description = OP, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "OpenPort" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_6
  Scenario: Testcase id = PH_6, description = BURST_DEVICE, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "BurstDevice" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_7
  Scenario: Testcase id = PH_7, description = BURST_SERVICE, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_7"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "BurstService" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "10" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_8
  Scenario: Testcase id = PH_8, description = ATS, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "ATS" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "15" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_9
  Scenario: Testcase id = PH_9, description = PTT_DVC, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "PTTDevice" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_10
  Scenario: Testcase id = PH_10, description = PTT_TG, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "true" for "Compressed" on Reporting page
    When I use "name" to select the value "PTTTalkgroup" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @PH @PH_11
  Scenario: Testcase id = PH_11, description = M2M, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "PH_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Provisioning History" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "M2M" for "Market" on Reporting page
    When I set the value "DB_DATA" for "Subscriber ID" on Reporting page
    When I use "name" to select the value "All" for "Search Date Range" on Reporting page
    When I set the value "10" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify sub number belong to selected sp

  @SDS @SDS_1
  Scenario: Testcase id = SDS_1, description = DELIVERED, SBD, *, ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SDS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "SBD Device Search" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "*" for "IMEI" on Reporting page
    When I use "name" to select the value "All" for "Status" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @SDS @SDS_2
  Scenario: Testcase id = SDS_2, description = SBD, *, ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SDS_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "SBD Device Search" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "*" for "IMEI" on Reporting page
    When I use "name" to select the value "All" for "Status" on Reporting page
    When I set the value "5" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SDS @SDS_3
  Scenario: Testcase id = SDS_3, description = SBD, DB_DATA, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SDS_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "SBD Device Search" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "true" for "Compressed" on Reporting page
    When I set the value "DB_DATA" for "IMEI" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I set the value "35" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SDS @SDS_4
  Scenario: Testcase id = SDS_4, description = SBD, DB_DATA, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "SDS_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "SBD Device Search" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com, Praneetha.Madapati@iridium.com, Ruhavi.Mudumba@iridium.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "DB_DATA" for "IMEI" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I set the value "15" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SDS @SDS_5
  Scenario: Testcase id = SDS_5, description = SBD, DB_DATA, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SDS_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "SBD Device Search" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "DB_DATA" for "IMEI" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I set the value "15" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @MDS @MDS_1
  Scenario: Testcase id = MDS_1, description = DELIVERED, M2M, CSV, *, ALL
    Given Provisioning System Mode is set to "OFF" for testcase "MDS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "M2M Device Search" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "*" for "IMEI" on Reporting page
    When I use "name" to select the value "All" for "Status" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @MDS @MDS_2
  Scenario: Testcase id = MDS_2, description = M2M, CSV, *, ALL
    Given Provisioning System Mode is set to "OFF" for testcase "MDS_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "M2M Device Search" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "*" for "IMEI" on Reporting page
    When I use "name" to select the value "All" for "Status" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @MDS @MDS_3
  Scenario: Testcase id = MDS_3, description = M2M, EXCEL, DB_DATA, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "MDS_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "M2M Device Search" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "DB_DATA" for "IMEI" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @MDS @MDS_4
  Scenario: Testcase id = MDS_4, description = M2M, PDF, DB_DATA, SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "MDS_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "M2M Device Search" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "DB_DATA" for "IMEI" on Reporting page
    When I use "name" to select the value "Suspended" for "Status" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @MDS @MDS_5
  Scenario: Testcase id = MDS_5, description = M2M, ACCESS, DB_DATA, DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "MDS_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "M2M Device Search" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "DB_DATA" for "IMEI" on Reporting page
    When I use "name" to select the value "Deactive" for "Status" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @MDS @MDS_6
  Scenario: Testcase id = MDS_6, description = M2M, EXCEL_2007, DB_DATA, ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "MDS_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "M2M Device Search" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "DB_DATA" for "IMEI" on Reporting page
    When I use "name" to select the value "Active" for "Status" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen
    Then I verify all Service Type is the selected one on screen
    Then I verify all status is the selected one on screen
    Then I verify sub number belong to selected sp

  @SPR @SPR_1
  Scenario: Testcase id = SPR_1, description = DELIVERED, TELEPHONY, DIRECT, CSV
    Given Provisioning System Mode is set to "OFF" for testcase "SPR_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Service Plan Report" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Telephony" for "Service" on Reporting page
    When I use "name" to select the value "No" for "Show Deactive Accounts" on Reporting page
    When I use "name" to select the value "Yes" for "Show Active Sub Count" on Reporting page
    When I use "name" to select the value "Yes" for "Include Obsolete" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @SPR @SPR_2
  Scenario: Testcase id = SPR_2, description = DELIVERED, SHORT BURST DATA, DIRECT, EXCEL
    Given Provisioning System Mode is set to "OFF" for testcase "SPR_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Service Plan Report" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Short Burst Data" for "Service" on Reporting page
    When I use "name" to select the value "Yes" for "Show Deactive Accounts" on Reporting page
    When I use "name" to select the value "Yes" for "Show Active Sub Count" on Reporting page
    When I use "name" to select the value "Yes" for "Include Obsolete" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @SPR @SPR_3
  Scenario: Testcase id = SPR_3, description = ONSCREEN, OPENPORT, EMAIL, PDF
    Given Provisioning System Mode is set to "OFF" for testcase "SPR_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Service Plan Report" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "OpenPort" for "Service" on Reporting page
    When I use "name" to select the value "No" for "Show Deactive Accounts" on Reporting page
    When I use "name" to select the value "No" for "Show Active Sub Count" on Reporting page
    When I use "name" to select the value "No" for "Include Obsolete" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCS @SCS_1
  Scenario: Testcase id = SCS_1, description = DELIVERED, CSV, 20
    Given Provisioning System Mode is set to "OFF" for testcase "SCS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Scratch Card Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @SCS @SCS_2
  Scenario: Testcase id = SCS_2, description = CSV, 20
    Given Provisioning System Mode is set to "OFF" for testcase "SCS_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Summary" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCS @SCS_3
  Scenario: Testcase id = SCS_3, description = EXCEL, 40
    Given Provisioning System Mode is set to "OFF" for testcase "SCS_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Summary" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCS @SCS_4
  Scenario: Testcase id = SCS_4, description = PDF, 40
    Given Provisioning System Mode is set to "OFF" for testcase "SCS_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Summary" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCS @SCS_5
  Scenario: Testcase id = SCS_5, description = ACCESS, 40
    Given Provisioning System Mode is set to "OFF" for testcase "SCS_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Summary" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCS @SCS_6
  Scenario: Testcase id = SCS_6, description = EXCEL_2007, 40
    Given Provisioning System Mode is set to "OFF" for testcase "SCS_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Summary" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "40" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCD @SCD_1
  Scenario: Testcase id = SCD_1, description = DELIVERED, BALANCE > 100
    Given Provisioning System Mode is set to "OFF" for testcase "SCD_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Scratch Card Details" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Balance" for "Search Type 1" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 1" on Reporting page
    When I set the value "100" for "Search Value 1" on Reporting page
    When I use "name" to select the value "Value" for "Search Type 2" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 2" on Reporting page
    When I set the value "100" for "Search Value 2" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @SCD @SCD_2
  Scenario: Testcase id = SCD_2, description = BALANCE > 10
    Given Provisioning System Mode is set to "OFF" for testcase "SCD_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Details" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Balance" for "Search Type 1" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 1" on Reporting page
    When I set the value "10" for "Search Value 1" on Reporting page
    When I use "name" to select the value "Value" for "Search Type 2" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 2" on Reporting page
    When I set the value "100" for "Search Value 2" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCD @SCD_3
  Scenario: Testcase id = SCD_3, description = ACTDATE = 20151107
    Given Provisioning System Mode is set to "OFF" for testcase "SCD_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Details" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "Activation Date" for "Search Type 1" on Reporting page
    When I use "name" to select the value "Equal To" for "Search Operator 1" on Reporting page
    When I set the value "20151107" for "Search Value 1" on Reporting page
    When I use "name" to select the value "Value" for "Search Type 2" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 2" on Reporting page
    When I set the value "100" for "Search Value 2" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCD @SCD_4
  Scenario: Testcase id = SCD_4, description = FIRSTUSEDATE LIKE 20050101
    Given Provisioning System Mode is set to "OFF" for testcase "SCD_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Details" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I use "name" to select the value "First Use Date" for "Search Type 1" on Reporting page
    When I use "name" to select the value "Like" for "Search Operator 1" on Reporting page
    When I set the value "20050101" for "Search Value 1" on Reporting page
    When I use "name" to select the value "Value" for "Search Type 2" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 2" on Reporting page
    When I set the value "100" for "Search Value 2" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCD @SCD_5
  Scenario: Testcase id = SCD_5, description = EXPIRYDATE > 20050101
    Given Provisioning System Mode is set to "OFF" for testcase "SCD_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Details" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Expiry Date" for "Search Type 1" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 1" on Reporting page
    When I set the value "20050101" for "Search Value 1" on Reporting page
    When I use "name" to select the value "Value" for "Search Type 2" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 2" on Reporting page
    When I set the value "100" for "Search Value 2" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @SCD @SCD_6
  Scenario: Testcase id = SCD_6, description = VALUE LIKE 200*
    Given Provisioning System Mode is set to "OFF" for testcase "SCD_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Scratch Card Details" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "EXCEL_2007" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I use "name" to select the value "Value" for "Search Type 1" on Reporting page
    When I use "name" to select the value "Like" for "Search Operator 1" on Reporting page
    When I set the value "200*" for "Search Value 1" on Reporting page
    When I use "name" to select the value "Value" for "Search Type 2" on Reporting page
    When I use "name" to select the value "Greater Than" for "Search Operator 2" on Reporting page
    When I set the value "100" for "Search Value 2" on Reporting page
    When I set the value "20" for "Results Limit" on Reporting page
    When I set the value "1" for "Start Row" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify result count with Results Limit on screen
    Then I verify all sp account is the selected one on screen

  @ASR @ASR_1
  Scenario: Testcase id = ASR_1, description = DELIVERED, CSV, *
    Given Provisioning System Mode is set to "OFF" for testcase "ASR_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "DELIVERED" for "Request Type" on Reporting page
    When I select the value "Account Sync Report" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "CSV" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "*" for "Contract ID" on Reporting page
    Then I click on "Create Report" button
    Then I verify popup "Your request has been queued"

  @ASR @ASR_2
  Scenario: Testcase id = ASR_2, description = EXCEL, *
    Given Provisioning System Mode is set to "OFF" for testcase "ASR_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Account Sync Report" for Report Type on Reporting page
    When I use "id" to select the value "NONE" for "Delivery Type" on Reporting page
    When I set the value "*" for "Contract ID" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify sub number belong to selected sp

  @ASR @ASR_3
  Scenario: Testcase id = ASR_3, description = PDF, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "ASR_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Account Sync Report" for Report Type on Reporting page
    When I use "id" to select the value "DIRECT" for "Delivery Type" on Reporting page
    When I use "id" to select the value "PDF" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "false" for "Compressed" on Reporting page
    When I set the value "DB_DATA" for "Contract ID" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify sub number belong to selected sp

  @ASR @ASR_4
  Scenario: Testcase id = ASR_4, description = ACCESS, DB_DATA
    Given Provisioning System Mode is set to "OFF" for testcase "ASR_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Reporting" tab
    When I use "id" to select the value "ONSCREEN" for "Request Type" on Reporting page
    When I select the value "Account Sync Report" for Report Type on Reporting page
    When I use "id" to select the value "EMAIL" for "Delivery Type" on Reporting page
    When I use "id" to select the value "ACCESS" for "File Format" on Reporting page
    When I set the value "qa.testing.iridium@gmail.com" for "Distribution Address" on Reporting page
    When I use "id" to select the value "true" for "Compressed" on Reporting page
    When I set the value "DB_DATA" for "Contract ID" on Reporting page
    Then I click on "Create Report" button
    Then I collect report results on screen
    Then I verify sub number belong to selected sp