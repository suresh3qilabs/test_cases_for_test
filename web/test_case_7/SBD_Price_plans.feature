Feature: This feature file tests all the scenarios for SBD

  Background:
    * I read the data from the excel "Config_SBD_Price_Plans.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the excel "Config_SBD_Price_Plans.xlsx" and "Price_Plans" tab


  @SBD @story_1 @Activate_Account_SBD_0
  Scenario: Testcase id = Activate_Account_SBD_0, description = Activate a SBD 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_1 @Activate_Account_SBD_12
  Scenario: Testcase id = Activate_Account_SBD_12, description = Activate a SBD 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @ @Activate_with_static_shared_plan
  Scenario: Testcase id = Activate_with_static_shared_plan, description = Activate SBD account with static shared plan
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_with_static_shared_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Shared" for "Contract-Type"
    Then I select "Static Shared Group" for "Shared-Type"
    Then I select "Automation_default_static" for "Shared-Group"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @ @Activate_with_dynamic_shared_plan
  Scenario: Testcase id = Activate_with_dynamic_shared_plan, description = Activate SBD account with dynamic shared plan
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_with_dynamic_shared_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Shared" for "Contract-Type"
    Then I select "Dynamic Shared Group" for "Shared-Type"
    Then I select "Automation_default_dynamic" for "Shared-Group"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_1 @Activate_Account_SBD_100K_Annual_Fisheries_Non-Pool
  Scenario: Testcase id = Activate_Account_SBD_100K_Annual_Fisheries_Non-Pool, description = Activate a SBD 100K Annual Fisheries Non-Pool Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_100K_Annual_Fisheries_Non-Pool"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "100K Annual Fisheries Non-Pool" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_2 @Activate_Account_SBD_SBD130M_.2K
  Scenario: Testcase id = Activate_Account_SBD_SBD130M_.2K, description = Activate a SBD 130M .2K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_SBD130M_.2K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 130M .2K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_3 @Activate_Account_SBD_SBD3800M_60K
  Scenario: Testcase id = Activate_Account_SBD_SBD3800M_60K, description = Activate a SBD 3800M 60K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_SBD3800M_60K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 3800M 60K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_4 @Activate_Account_SBD_Boe_Unl
  Scenario: Testcase id = Activate_Account_SBD_Boe_Unl, description = Activate a Boe Unl Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Boe_Unl"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Boe Unl" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_5 @Activate_Account_SBD_NAL_Unl
  Scenario: Testcase id = Activate_Account_SBD_NAL_Unl, description = Activate a NAL Unl Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_NAL_Unl"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "NAL Unl" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_6 @Activate_Account_SBD_SBD250_M2MDC
  Scenario: Testcase id = Activate_Account_SBD_SBD250_M2MDC, description = Activate a SBD 250 M2MDC Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_SBD250_M2MDC"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 250 M2MDC" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_7 @Activate_Account_SBD_Geo_0
  Scenario: Testcase id = Activate_Account_SBD_Geo_0, description = Activate a Geo 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Geo_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Geo 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Joub_0
  Scenario: Testcase id = Activate_Account_SBD_Joub_0, description = Activate a Joub 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Joub_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Joub 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_9 @Activate_Account_SBD0_TIER
  Scenario: Testcase id = Activate_Account_SBD0_TIER, description = Activate a SBD 0 TIER Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD0_TIER"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 0 TIER" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBDKORE_SLB_0
  Scenario: Testcase id = Activate_Account_SBDKORE_SLB_0, description = Activate a SBD KORE SLB 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBDKORE_SLB_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD KORE SLB 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_RoadpostSBD_0
  Scenario: Testcase id = Activate_Account_RoadpostSBD_0, description = Activate a Roadpost SBD 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_RoadpostSBD_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Roadpost SBD 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_PNet_A
  Scenario: Testcase id = Activate_Account_SBD_PNet_A, description = Activate a PNet A Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_PNet_A"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "PNet A" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Zuni_0
  Scenario: Testcase id = Activate_Account_SBD_Zuni_0, description = Activate a Zuni 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Zuni_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Zuni 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_PNet_B
  Scenario: Testcase id = Activate_Account_SBD_PNet_B, description = Activate a PNet B Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_PNet_B"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "PNet B" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Deere_0
  Scenario: Testcase id = Activate_Account_SBD_Deere_0, description = Activate a Deere 0Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Deere_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Deere 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_BLUEMFO_0
  Scenario: Testcase id = Activate_Account_SBD_BLUEMFO_0, description = Activate a BLUE MFO 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_BLUEMFO_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "BLUE MFO 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_LRITB
  Scenario: Testcase id = Activate_Account_SBD_LRITB, description = Activate a LRIT B Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_LRITB"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LRIT B" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Tec_0
  Scenario: Testcase id = Activate_Account_SBD_Tec_0, description = Activate a Tec 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Tec_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Tec 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Sita_0
  Scenario: Testcase id = Activate_Account_SBD_Sita_0, description = Activate a Sita 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Sita_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Sita 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_LRITA
  Scenario: Testcase id = Activate_Account_SBD_LRITA, description = Activate a LRIT A Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_LRITA"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LRIT A" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_SBD_ZTR_0
  Scenario: Testcase id = Activate_Account_SBD_SBD_ZTR_0, description = Activate a SBD ZTR 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_SBD_ZTR_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD ZTR 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Space_0
  Scenario: Testcase id = Activate_Account_SBD_Space_0, description = Activate a Space 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Space_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Space 0" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_200M_.35KB
  Scenario: Testcase id = Activate_Account_SBD_200M_.35KB, description = Activate a SBD 200M .35 KB Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_200M_.35KB"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 200M .35 KB" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Track_.35KB
  Scenario: Testcase id = Activate_Account_SBD_Track_.35KB, description = Activate a SBD Track .35 KB Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Track_.35KB"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD Track .35 KB" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_LBS_1
  Scenario: Testcase id = Activate_Account_SBD_LBS_1, description = Activate a LBS 1 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_LBS_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LBS 1" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Sky_1.5
  Scenario: Testcase id = Activate_Account_SBD_Sky_1.5, description = Activate a Sky 1.5 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Sky_1.5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Sky 1.5" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_SBD1.5
  Scenario: Testcase id = Activate_Account_SBD_SBD1.5, description = Activate a SBD 1.5 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_SBD1.5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 1.5" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_ZATIX_ 2

  Scenario: Testcase id = Activate_Account_SBD_ZATIX_ 2, description = Activate a ZATIX  2 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_ZATIX_ 2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "ZATIX  2" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_SBD_2
  Scenario: Testcase id = Activate_Account_SBD_SBD_2, description = Activate a SBD 2 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_SBD_2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 2" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_SBD3_JoubehComdev
  Scenario: Testcase id = Activate_Account_SBD_SBD3_JoubehComdev, description = Activate a SBD 3 JoubehComdev Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_SBD3_JoubehComdev"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 3 JoubehComdev" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_3_MOD
  Scenario: Testcase id = Activate_Account_SBD_3_MOD, description = Activate a SBD 3 MOD Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_3_MOD"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 3 MOD" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_GT_3
  Scenario: Testcase id = Activate_Account_SBD_GT_3, description = Activate a SBD GT 3 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_GT_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD GT 3" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_500M_3K
  Scenario: Testcase id = Activate_Account_SBD_500M_3K, description = Activate a SBD 500M 3K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_500M_3K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 500M 3K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_ZATIX_3
  Scenario: Testcase id = Activate_Account_ZATIX_3, description = Activate a ZATIX 3 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_ZATIX_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "ZATIX 3" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_3
  Scenario: Testcase id = Activate_Account_SBD_3, description = Activate a SBD 3 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 3" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_350M_3.2KB
  Scenario: Testcase id = Activate_Account_SBD_350M_3.2KB, description = Activate a SBD 350M 3.2 KB Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_350M_3.2KB"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 350M 3.2 KB" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBDTrack_3.2_KB
  Scenario: Testcase id = Activate_Account_SBDTrack_3.2_KB, description = Activate a JSBD Track 3.2 KB Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBDTrack_3.2_KB"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD Track 3.2 KB" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Sky_3.3
  Scenario: Testcase id = Activate_Account_Sky_3.3, description = Activate a Sky 3.3 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Sky_3.3"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Sky 3.3" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_500M_4K
  Scenario: Testcase id = Activate_Account_SBD_500M_4K, description = Activate a SBD_500M_4K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_500M_4K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD_500M_4K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Inth_4
  Scenario: Testcase id = Activate_Account_Inth_4, description = Activate a Inth 4 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Inth_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Inth 4" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Tiered_350_1K
  Scenario: Testcase id = Activate_Account_SBD_Tiered_350_1K, description = Activate a SBD Tiered 350 1K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Tiered_350_1K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD Tiered 350 1K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_4
  Scenario: Testcase id = Activate_Account_SBD_4, description = Activate a SBD 4 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_4"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 4" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Tiered_1250_10K
  Scenario: Testcase id = Activate_Account_SBD_Tiered_1250_10K, description = Activate a SBD Tiered 1250 10K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Tiered_1250_10K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD Tiered 1250 10K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Tec_4.8
  Scenario: Testcase id = Activate_Account_Tec_4.8, description = Activate a Tec 4.8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Tec_4.8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Tec 4.8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_4.8
  Scenario: Testcase id = Activate_Account_SBD_4.8, description = Activate a SBD 4.8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_4.8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 4.8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_RUS_0M_5K_Test
  Scenario: Testcase id = Activate_Account_SBD_RUS_0M_5K_Test, description = Activate a SBD RUS 0M 5K Test Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_RUS_0M_5K_Test"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD RUS 0M 5K Test" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBDTest1
  Scenario: Testcase id = Activate_Account_SBDTest1, description = Activate a SBD Test 1 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBDTest1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD Test 1" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_BSM_5K
  Scenario: Testcase id = Activate_Account_BSM_5K, description = Activate a BSM 5K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_BSM_5K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "BSM 5K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_FMS_6
  Scenario: Testcase id = Activate_Account_FMS_6, description = Activate a FMS 6 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_FMS_6"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "FMS 6" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_550M_7.6KB
  Scenario: Testcase id = Activate_Account_SBD_550M_7.6KB, description = Activate a SBD 550M 7.6 KB Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_550M_7.6KB"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 550M 7.6 KB" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_Track_7.6KB
  Scenario: Testcase id = Activate_Account_SBD_Track_7.6KB, description = Activate a SBD Track 7.6 KB Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_Track_7.6KB"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD Track 7.6 KB" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Inth_8
  Scenario: Testcase id = Activate_Account_Inth_8, description = Activate a Inth 8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Inth_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Inth 8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_LBS_8
  Scenario: Testcase id = Activate_Account_LBS_8, description = Activate a LBS 8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_LBS_8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LBS 8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_GT8
  Scenario: Testcase id = Activate_Account_SBD_GT8, description = Activate a SBD GT 8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_GT8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD GT 8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Tuna8
  Scenario: Testcase id = Activate_Account_Tuna8, description = Activate a Tuna 8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Tuna8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Tuna 8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD8
  Scenario: Testcase id = Activate_Account_SBD8, description = Activate a SBD 8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Sky8
  Scenario: Testcase id = Activate_Account_Sky8, description = Activate a Sky 8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Sky8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Sky 8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Far8
  Scenario: Testcase id = Activate_Account_Far8, description = Activate a Far 8 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Far8"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Far 8" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_12a
  Scenario: Testcase id = Activate_Account_SBD_12a, description = Activate a SBD 12a Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_12a"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 12a" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Tec12
  Scenario: Testcase id = Activate_Account_Tec12, description = Activate a Tec 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Tec12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Tec 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_ZATIX_12
  Scenario: Testcase id = Activate_Account_ZATIX_12, description = Activate a ZATIX 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_ZATIX_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "ZATIX 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Inth_12S
  Scenario: Testcase id = Activate_Account_Inth_12S, description = Activate a Inth 12S Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Inth_12S"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Inth 12S" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Deere_12
  Scenario: Testcase id = Activate_Account_Deere_12, description = Activate a Deere 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Deere_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Deere 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Inth_12
  Scenario: Testcase id = Activate_Account_Inth_12, description = Activate a Inth 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Inth_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Inth 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_RNLI_12
  Scenario: Testcase id = Activate_Account_RNLI_12, description = Activate a RNLI 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_RNLI_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "RNLI 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_TUNA_12
  Scenario: Testcase id = Activate_Account_TUNA_12, description = Activate a TUNA 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_TUNA_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "TUNA 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Space_12
  Scenario: Testcase id = Activate_Account_Space_12, description = Activate a Space 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Space_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Space 12" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_PNet_C
  Scenario: Testcase id = Activate_Account_PNet_C, description = Activate a PNet C Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_PNet_C"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "PNet C" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_17
  Scenario: Testcase id = Activate_Account_SBD_17, description = Activate a SBD 17 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_17"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 17" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Tec_17
  Scenario: Testcase id = Activate_Account_Tec_17, description = Activate a Tec 17 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Tec_17"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Tec 17" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_ZATIX_17
  Scenario: Testcase id = Activate_Account_ZATIX_17, description = Activate a ZATIX 17 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_ZATIX_17"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "ZATIX 17" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Inth_17
  Scenario: Testcase id = Activate_Account_Inth_17, description = Activate a Inth 17 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Inth_17"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Inth 17" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_TUNA_16
  Scenario: Testcase id = Activate_Account_TUNA_16, description = Activate a TUNA 16 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_TUNA_16"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "TUNA 16" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Tec_30
  Scenario: Testcase id = Activate_Account_Tec_30, description = Activate a Tec 30 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Tec_30"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Tec 30" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_LBS_17
  Scenario: Testcase id = Activate_Account_LBS_17, description = Activate a LBS 17 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_LBS_17"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LBS 17" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_1.5Y
  Scenario: Testcase id = Activate_Account_SBD_1.5Y, description = Activate a SBD 1.5Y Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_1.5Y"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 1.5Y" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_TUNA_20
  Scenario: Testcase id = Activate_Account_TUNA_20, description = Activate a TUNA 20 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_TUNA_20"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "TUNA 20" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_ZATIX_30
  Scenario: Testcase id = Activate_Account_ZATIX_30, description = Activate a ZATIX 30 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_ZATIX_30"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "ZATIX 30" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Inth_30
  Scenario: Testcase id = Activate_Account_Inth_30, description = Activate a Inth 30 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Inth_30"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Inth 30" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_30
  Scenario: Testcase id = Activate_Account_SBD_30, description = Activate a SBD 30 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_30"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 30" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD30-2
  Scenario: Testcase id = Activate_Account_SBD30-2, description = Activate a SBD30-2 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD30-2"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD30-2" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_2500M_36K
  Scenario: Testcase id = Activate_Account_SBD_2500M_36K, description = Activate a SBD 2500M 36K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_2500M_36K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 2500M 36K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_50
  Scenario: Testcase id = Activate_Account_SBD_50, description = Activate a SBD 50 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_50"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 50" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Annual_60kb_Plan
  Scenario: Testcase id = Activate_Account_Annual_60kb_Plan, description = Activate a Annual 60kb Plan Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Annual_60kb_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Annual 60kb Plan" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_9500M_180K
  Scenario: Testcase id = Activate_Account_SBD_9500M_180K, description = Activate a SBD_9500M_180K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_9500M_180K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD_9500M_180K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_JOUB_300
  Scenario: Testcase id = Activate_Account_SBD_JOUB_300, description = Activate a SBD_JOUB_300 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_JOUB_300"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD_JOUB_300" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD 500K

  Scenario: Testcase id = Activate_Account_SBD 500K, description = Activate a SBD 500K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD 500K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 500K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_SBD_3000M_700K
  Scenario: Testcase id = Activate_Account_SBD_3000M_700K, description = Activate a SBD_3000M_700K Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_3000M_700K"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD_3000M_700K" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_Elogbook
  Scenario: Testcase id = Activate_Account_Elogbook, description = Activate a Elogbook Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_Elogbook"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Elogbook" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_900K_Plan
  Scenario: Testcase id = Activate_Account_900K_Plan, description = Activate a 900K Plan Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_900K_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "900K Plan" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_LMC_5
  Scenario: Testcase id = Activate_Account_LMC_5, description = Activate a LMC 5 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_LMC_5"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LMC 5" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_LMC_1
  Scenario: Testcase id = Activate_Account_LMC_1, description = Activate a LMC 1 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_LMC_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LMC 1" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account

  @SBD @story_8 @Activate_Account_LMC_10
  Scenario: Testcase id = Activate_Account_LMC_10, description = Activate a LMC 10 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_LMC_10"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element

    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "LMC 10" for "Service_Plan"
    Then I enter "qa.testing.iridium@gmail.com" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 5 seconds
    Then I capture the data from account activation page
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation
    Then I validate MRC charges for "SBD" Account