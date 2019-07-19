Feature: This feature file tests all activation scenarios and status update scenarios for SBD

  Background:
    * I read the data from the excel "Config_SBD.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @SBD @Activate_Account_with_Demo_Trial
  Scenario: Testcase id = Activate_Account_with_Demo_Trial, description = Activate a SBD account with demo_trial plan
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_with_Demo_Trial"
    Given I am logged into Iridium with flag "Run" and SpAccount number
#    Then I create a flist for pool group creation
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I enter "NEW_SBD_PR" for "Provider Reference"
    Then I select "Demo Plan" for "Demo/Trial"
    Then I save the number of demo_trial plans available
    Then I select "SBD Demo" for "Service_Plan"
    Then I enter "DeliveryDestinationIP" for "Delivery_Destination_1"
    Then I select "Direct IP" for "Delivery_Method_1"
    Then I enter "Delivery Destination" for "Delivery_Destination_2"
    Then I select "Email" for "Delivery_Method_2"
    Then I enter "SBD_IMEI" for "Delivery_Destination_3"
    Then I select "Iridium Device" for "Delivery_Method_3"
    Then I click on "MT_Filters_Expand"
    Then I enter "MT_Filter_Email" for "MT_Filter_1"
    Then I select "Email" for "MT_Filter_Type_1"
    Then I capture expected delivery destinations and MT Filters for DB validation
    Then I click on obj repo "Activate Account" button
    Then I wait 10 seconds
    Then I capture the data from account activation page
    Then I verify "Demo/Trial" count is reduced by 1
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I validate the service order for activation

  @SBD @Activate_Account_SBD_0
  Scenario: Testcase id = Activate_Account_SBD_0, description = Activate a SBD 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_0"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "Delivery Destination" for "Delivery_Destination_1"
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

  @SBD @ACTIVE_to_SUSPENDED
  Scenario: Testcase id = ACTIVE_to_SUSPENDED, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "ACTIVE_to_SUSPENDED"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @SBD @SUSPENDED_to_ACTIVE
  Scenario: Testcase id = SUSPENDED_to_ACTIVE, description = Change status from SUSPENDED to ACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SUSPENDED_to_ACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "ACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @SBD @ACTIVE_to_DEACTIVE
  Scenario: Testcase id = ACTIVE_to_DEACTIVE, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "ACTIVE_to_DEACTIVE"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @SBD @Activate_Account_SBD_12
  Scenario: Testcase id = Activate_Account_SBD_12, description = Activate a SBD 12 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_12"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 12" for "Service_Plan"
    Then I enter "Delivery Destination" for "Delivery_Destination_1"
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

  @SBD @ACTIVE_to_SUSPENDED_pre_req_1
  Scenario: Testcase id = ACTIVE_to_SUSPENDED_pre_req_1, description = Change status from ACTIVE to SUSPENDED
    Given Provisioning System Mode is set to "OFF" for testcase "ACTIVE_to_SUSPENDED_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "SUSPENDED"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @SBD @SUSPENDED_to_DEACTIVE_pre_req_1
  Scenario: Testcase id = SUSPENDED_to_DEACTIVE_pre_req_1, description = Change status from SUSPENDED to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "SUSPENDED_to_DEACTIVE_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server