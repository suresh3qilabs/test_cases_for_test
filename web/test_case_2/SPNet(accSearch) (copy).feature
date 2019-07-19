Feature: This feature file tests All the scenarios for SPNet

  Background:
    * I read the data from the excel "Config_accountSearch.xlsx" and "Config" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab


  @SPNet @SPNet_1
  Scenario: Testcase id = SPNet_1, description = SPNet Page: Validate UI elements on Search page
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_1"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    Then I confirm "Iridium logo" is present
    Then I confirm "Welcome" is present
    Then I confirm "My Account" is present
    Then I confirm "Contact" is present
    Then I confirm "Log out" is present
    Then I verify "Search" tab is highlighted
    Then I verify "Smart Search" button exists
    Then I verify "Search" button exists
    Then I verify "Export to CSV" button exists
    Then I verify "Clear" button exists
    Then I verify "content-header" text is "Search"
    Then I verify "content-block-heading" text is "Search"
    Then I verify "content-block-elements" has text "Search By"
    Then I verify "content-block-elements" has text "Primary Service"
    Then I verify "content-block-elements" has text "Date Range"
    Then I verify "content-block-elements" has text "Results Per Page"
    Then I should see "Iridium SPNet Pro" in footer
    Then I should see "Terms of Use" in footer
    Then I should see "Iridium Communications Inc. All rights reserved." in footer

  @SPNet @SPNet_2
  Scenario: Testcase id = SPNet_2, description = SPNet Page: Search button validation
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_2"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "SBD" for "ServiceType"
    When I select the value "Active" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_3
  Scenario: Testcase id = SPNet_3, description = SPNet Page: Clear button validation | Issue is Timerange
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_3"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Model" for "filterType"
    Then I select the value "Not Equal" for "filterCond"
    Then I set the value "SUB-16559311080" for "TI1"
    Then I select the value "Certus" for "ServiceType"
    Then I select the value "Active" for "Status"
    Then I select the value "SBD" for "secondarySvcType"
    Then I select the value "Pending" for "secondarySvcStatus"
    When I select the value "Custom Range" for "dateSearchType"
    Then I select the value "25" for "Results per page"
    Then I click on "Clear" button
    Then I verify all inputs are set to default

  @SPNet @SPNet_4
  Scenario: Testcase id = SPNet_4, description = SPNet Page: Export To CSV button validation
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_4"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Select" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "All" for "ServiceType"
    When I select the value "All" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "100" for "Results per page"
    Then I delete "AccountSearchResults" files in Downloads
    Then I click on "Export to CSV" button
    Then I click save if browser is Firefox
    Then I capture the first 100 results
    Then I read file "AccountSearchResults.csv"
    Then I verify web results match downloaded csv file
    Then I delete "AccountSearchResults" files in Downloads

  @SPNet @SPNet_5
  Scenario: Testcase id = SPNet_5, description = SPNet Page: Pagination validation
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_5"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Select" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "All" for "ServiceType"
    When I select the value "All" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "100" for "Results per page"
    Then I capture the first 4 results
    Then I click the "link" with "text" "2"
    Then I capture the first 4 results
    Then I click the "link" with "text" "3"
    Then I capture the first 4 results
    Then I click the "link" with "text" "4"
    Then I capture the first 4 results
    Then I check if there are any duplicate contract IDs

  @SPNet @SPNet_6
  Scenario: Testcase id = SPNet_6, description = SPNet Page: Results per page validation
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_6"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Select" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "All" for "ServiceType"
    When I select the value "All" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify 10 results are displayed
    When I select the value "25" for "Results per page"
    Then I verify 25 results are displayed
    When I select the value "50" for "Results per page"
    Then I verify 50 results are displayed
    When I select the value "100" for "Results per page"
    Then I verify 100 results are displayed

  @SPNet @SPNet_7
  Scenario: Testcase id = SPNet_7, description = SPNet Page: Text inside of box validation
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_7"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I select the value "Select" for "filterType"
    When I select the value "Select" for "filterCond"
    When I select the value "All" for "ServiceType"
    When I select the value "All" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "100" for "Results per page"
    Then I verify text is inside of box

  @SPNet @SPNet_IWS_1
  Scenario: Testcase id = SPNet_IWS_1, description = Validate Smart/Global search with IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_1"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "IMEI" "DB_DATA"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_2
  Scenario: Testcase id = SPNet_IWS_2, description = Validate Smart/Global search with SIM, Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_2"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "SIM" "DB_DATA"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_3
  Scenario: Testcase id = SPNet_IWS_3, description = Validate Smart/Global search with MSISDN, Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_3"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "MSISDN" "DB_DATA"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_4
  Scenario: Testcase id = SPNet_IWS_4, description = Validate Smart/Global search with MSISDNB | Issue is BDEV-31163
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_4"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "MSISDNB" "DB_DATA"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_5
  Scenario: Testcase id = SPNet_IWS_5, description = Validate Smart/Global search with MSISDNC, Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_5"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "MSISDNC" "DB_DATA"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_6
  Scenario: Testcase id = SPNet_IWS_6, description = Validate Smart/Global search with IMSI, Issue is data/audit_issue
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_6"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "IMSI" "DB_DATA"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_7
  Scenario: Testcase id = SPNet_IWS_7, description = Validate Smart/Global search with SIM
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_7"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "VESSEL_NAME" "DB_DATA"
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_8
  Scenario: Testcase id = SPNet_IWS_8, description = Validate Smart/Global search with Capcode
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_8"
    Given I get db_data from soap with flag "Run"
    Given I am logged into Iridium with SpAccount number
    Then I click on "Search" tab
    When I perform "SMART" search with "PROVIDER_REFERENCE" "DB_DATA"
    When I select the value "Capcode" for "filterType"
    Then I click on "Search" button
    Then I verify the actual result with DB query and excel result "POSITIVE"

  @SPNet @SPNet_IWS_9
  Scenario: Testcase id = SPNet_IWS_9, description = 200001 ACCOUNT_NUMBER LIKE * SUSPENDED ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_9"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Service" for "ServiceType"
    When I select the value "Suspended" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "0"

  @SPNet @SPNet_IWS_10
  Scenario: Testcase id = SPNet_IWS_10, description = 200001 ACCOUNT_NUMBER LIKE * PENDING ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Service" for "ServiceType"
    When I select the value "Pending" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "0"

  @SPNet @SPNet_IWS_11
  Scenario: Testcase id = SPNet_IWS_11, description = 200001 ACCOUNT_NUMBER LIKE * ERROR ALL
    Given Provisioning System Mode is set to "OFF" for testcase "SPNet_IWS_11"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    When I select the value "Contract ID" for "filterType"
    When I select the value "Like" for "filterCond"
    When I set the value "*" for "filterValue"
    When I select the value "Burst Service" for "ServiceType"
    When I select the value "Error" for "Status"
    When I select the value "All" for "dateSearchType"
    When I select the value "10" for "Results per page"
    Then I verify the actual result with DB query and excel result "0"