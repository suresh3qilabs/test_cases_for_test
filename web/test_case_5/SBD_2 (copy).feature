Feature: This feature file tests all the scenarios except activation, status update, bulk for SBD

  Background:
    * I read the data from the excel "Config_SBD.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab
    * I read the data from the "iridium_service.xlsx" and "Smoke_test" tab

  @SBD @Activate_Account_SBD_0_pre_req_1
  Scenario: Testcase id = Activate_Account_SBD_0_pre_req_1, description = Activate a SBD 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_0_pre_req_1"
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

  @SBD @IMEI_Swap
  Scenario: Testcase id = IMEI_Swap, description = IMEI Swap on Active account under SBD Service
    Given Provisioning System Mode is set to "OFF" for testcase "IMEI_Swap"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then click on swap device link and enter value based on "get_sbd_imei_Query"
    #Then I validate that element "Device Swap Window" is present
#    Then I validate the check mark for "Valid_new_IMEI_check_mark" is "valid"
    Then I verify the status is updated followed by check on BRM Server
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I check status and cleanup on Network Elements if activation went to Error
    Then I verify the new Device id on BRM DB Server

  @SBD @Activate_Account_SBD_0_pre_req_2
  Scenario: Testcase id = Activate_Account_SBD_0_pre_req_2, description = Activate a SBD 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_0_pre_req_2"
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

  @SBD @Update_Service_Plan
  Scenario: Testcase id = Update_Service_Plan, description = Update Service plan from SBD 0 to SBD 12
    Given Provisioning System Mode is set to "OFF" for testcase "Update_Service_Plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I click on the Contract ID to swap device
    Then I select "SBD 12" for "Service_Plan"
    Then I click on obj repo "Update_Account" button
    Then I wait 5 seconds
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements

  @SBD @Activate_Account_SBD_0_pre_req_3
  Scenario: Testcase id = Activate_Account_SBD_0_pre_req_3, description = Activate a SBD 0 Service Plan SBD Account
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_0_pre_req_3"
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

  @SBD @ACTIVE_to_DEACTIVE_pre_req_1
  Scenario: Testcase id = ACTIVE_to_DEACTIVE_pre_req_1, description = Change status from ACTIVE to DEACTIVE
    Given Provisioning System Mode is set to "OFF" for testcase "ACTIVE_to_DEACTIVE_pre_req_1"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I search for the contract id
    Then I change the status to "DEACTIVE"
    Then I verify the status is updated successfully on BRM Server
    Then I verify the lifecycle state and service state on BRM DB Server

  @SBD @IMEI_Reuse
  Scenario: Testcase id = IMEI_Reuse, description = Reuse the IMEI which is in DEACTIVE status
    Given Provisioning System Mode is set to "OFF" for testcase "IMEI_Reuse"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "Delivery Destination" for "Delivery_Destination_1"
    Then I select "Email" for "Delivery_Method_1"
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

  @SBD @Save_As_Template
  Scenario: Testcase id = Save_As_Template, description = Create a Template for SBD
    Given Provisioning System Mode is set to "ON" for testcase "Save_As_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "Delivery Destination" for "Delivery_Destination_1"
    Then I click on "Save As Template" button
    Then I enter "RANDOM_NAME" for "Template_Name"
    Then I click on "Submit_Template" button
    Then I wait 10 seconds

  @SBD @Search_For_The_Saved_Template
  Scenario: Testcase id = Search_For_The_Saved_Template, description = Search for a saved template
    Given Provisioning System Mode is set to "ON" for testcase "Search_For_The_Saved_Template"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Admin" tab
    Then I scroll into view of the element "Admin_tab"
    Then I hover over "Admin_tab" tab
    Then I click on "Manage_Templates"
    Then I select "SBD" for "Service_Type"
    Then I enter "NAME_LAST_USED" for "Template_Name"
    Then I click on "Search" button
    Then I verify that created template is available in the search results

  @SBD @Activate_with_static_shared_plan
  Scenario: Testcase id = Activate_with_static_shared_plan, description = Activate SBD account with static shared plan
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_with_static_shared_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I check if the pool group "Automation_default_static" is present and create it if it is not present
    Then I refresh the page
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Shared" for "Contract-Type"
    Then I select "Static Shared Group" for "Shared-Type"
    #Then I create "STATIC" pooling group "Automation_default_static" if it does not exist
    Then I check if the pool group "Automation_default_static" is present and create it if it is not present
    Then I select "Automation_default_static" for "Shared-Group"
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

  @SBD @Activate_with_dynamic_shared_plan
  Scenario: Testcase id = Activate_with_dynamic_shared_plan, description = Activate SBD account with dynamic shared plan
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_with_dynamic_shared_plan"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I check if the pool group "Automation_default_dynamic" is present and create it if it is not present
    Then I enter "NEW_SBD_IMEI" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I select "Shared" for "Contract-Type"
    Then I select "Dynamic Shared Group" for "Shared-Type"
#    Then I create "DYNAMIC" pooling group "Automation_default_dynamic" if it does not exist
    Then I check if the pool group "Automation_default_dynamic" is present and create it if it is not present
    Then I select "Automation_default_dynamic" for "Shared-Group"
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


  @SBD @Activate_non_SIM_based_Home_Gateway_Account #RUSSIA Device
  Scenario: Testcase id = Activate_non_SIM_based_Home_Gateway_Account, description = Activate a home gateway account with SIM based IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_non_SIM_based_Home_Gateway_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_HOMEGATEWAY" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I should not see "Home Gateway"
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "DeliveryDestinationIP" for "Delivery_Destination_IP"
    Then I select "Direct IP" for "Delivery_Method_1"
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


  @SBD @Activate_SIM_based_Home_Gateway_Account  #GLOBAL device
  Scenario: Testcase id = Activate_SIM_based_Home_Gateway_Account, description = Activate a home gateway account with SIM based IMEI
    Given Provisioning System Mode is set to "OFF" for testcase "Activate_SIM_based_Home_Gateway_Account"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "SBD" tab
    Then I enter "NEW_HOMEGATEWAY" for "IMEI"
    Then I cleanup the SBD device on network element
    Then I wait 5 seconds
    Then I validate the check mark for "Valid_IMEI_check_mark" is "valid"
    Then I validate that element "Home_Gateway_Label" is present
    Then I select "GLOBAL" for "Home_Gateway_Dropdown"
    Then I select "SBD 0" for "Service_Plan"
    Then I enter "DeliveryDestinationIP" for "Delivery_Destination_IP"
    Then I select "Direct IP" for "Delivery_Method_1"
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

  @SBD @Change_Home_Gateway_from_Global_to_Russia  #RUSSIA device
  Scenario: Testcase id = Change_Home_Gateway_from_Global_to_Russia, description = Change home gateway from Global to Russia
    Given Provisioning System Mode is set to "OFF" for testcase "Change_Home_Gateway_from_Global_to_Russia"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I get the first contract id
    Then I click on the Contract ID to swap device
    Then I click on "Update_Home_Gateway_Link" link
    Then I click on "Update_Home_Gateway_Button" button
    Then I wait 10 seconds
    Then I click on obj repo "Update_Account" button
    Then I click on "Search" tab
    Then I select the value "Contract ID" for "filterType"
    Then I select the value "Equals" for "filterCond"
    Then I enter "Contract ID" for "Search"
    Then I click on "Search" button
    Then I validate Delivery Destinations and MT Filters
    Then I validate products purchased and enabled services
    Then I validate the account details on network elements
    Then I get the first contract id
    Then I click on the Contract ID to swap device
    Then I wait 5 seconds
    Then I should see "RUSSIA"

#  @SBD @Activate_Account_SBD_0
#  Scenario: Testcase id = Activate_Account_SBD_0, description = Activate a SBD 0 Service Plan SBD Account
#    Given Provisioning System Mode is set to "OFF" for testcase "Activate_Account_SBD_0"
#    Given I am logged into Iridium with flag "Don't Run" and SpAccount number
#    Then I click on "SBD" tab
#    Then I enter "NEW_SBD_IMEI" for "IMEI"
#    Then I select "SBD 0" for "Service_Plan"
#    Then I enter "Delivery Destination" for "Delivery_Destination_1"
#    Then I select "Email" for "Delivery_Method_1"
#    Then I capture expected delivery destinations and MT Filters for DB validation
#    Then I click on obj repo "Activate Account" button
#    Then I wait 5 seconds
#    Then I capture the data from account activation page
#    Then I click on "Search" tab
#    Then I select the value "Contract ID" for "filterType"
#    Then I select the value "Equals" for "filterCond"
#    Then I enter "Contract ID" for "Search"
#    Then I click on "Search" button
#    Then I validate Delivery Destinations and MT Filters
#    Then I validate products purchased and enabled services
#    Then I validate the account details on network elements
#
#
#  @SBD @SBD_Message_Manager_Functionality
#  Scenario: Testcase id = SBD_Message_Manager_Functionality, description = Validate SBD message manager functionality
#    Given Provisioning System Mode is set to "OFF" for testcase "SBD_Message_Manager_Functionality"
#    Given I am logged into Iridium with flag "Don't Run" and SpAccount number
#    Then I hover over "SBD" tab
#    Then I click on "SBD_Messenger"
#    Then I enter "NEW_SBD_IMEI" for "IMEI"
#    Then I enter "Hello!" for "SBD_Message_Box"
#    Then I click on "Message_Send_Button"
#    Then I should see "Success!"





