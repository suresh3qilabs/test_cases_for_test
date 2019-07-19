Feature: This feature file tests all the scenarios for OpenPort Scratch Cards

  Background:
    * I read the data from the excel "Config_Functional_Openport_Scratch_Cards.xlsx" and "Config" tab
    * I read obj data from the excel "obj_repo.xlsx" and "obj" tab

  @OpenPort @Activate_OP_ScratchCards_FullBatch
  Scenario: Testcase id = Activate_OP_ScratchCards_FullBatch, description = Activate Openport ScratchCards with Full Batch
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_FullBatch"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I capture the serial number for open port scratch cards
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Full Batch" for "Action"
#    Then I enter "190207PROD000003" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Success_Message_On_SPNet_Screen" for "Scratch Cards"
    Then I click on "Close_Window_Button"
    Then I interact with window having title "Iridium SPNet :: Scratch Card Manager"
    Then I run scratch card jobs on brm server
    Then I verify the scratchcards are active

  @OpenPort @Activate_OP_ScratchCards_Single
  Scenario: Testcase id = Activate_OP_ScratchCards_Single, description = Activate OP ScratchCards Single
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I capture the serial number for open port scratch cards
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Single" for "Action"
#    Then I enter "190207PROD000003" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Success_Message_On_SPNet_Screen" for "Scratch Cards"
    Then I click on "Close_Window_Button"
    Then I interact with window having title "Iridium SPNet :: Scratch Card Manager"
    Then I run scratch card jobs on brm server
    Then I verify the scratchcards are active

  @OpenPort @Activate_OP_ScratchCards_Single_with_invalid_StartingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_Single_with_invalid_StartingSerial#, description = Activate OP ScratchCards Single with invalid StartingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single_with_invalid_StartingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I capture the serial number for open port scratch cards
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Single" for "Action"
    Then I enter "TEST" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Starting_Serial_On_SPNet_Screen" for "Scratch Cards"


  @OpenPort @Activate_OP_ScratchCards_Single_with_empty_StartingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_Single_with_empty_StartingSerial#, description = Activate OP ScratchCards Single with empty StartingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single_with_empty_StartingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Single" for "Action"
    Then I enter "" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Starting_Serial_On_SPNet_Screen" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_Single_with_alreadyActive_StartingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_Single_with_alreadyActive_StartingSerial#, description = Activate OP ScratchCards Single with alreadyActive StartingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single_with_alreadyActive_StartingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Single" for "Action"
    Then I enter "" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Re_Submitting_Already_Active_Scratch_Cards" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_PartialBatch
  Scenario: Testcase id = Activate_OP_ScratchCards_PartialBatch, description = Activate OP ScratchCards PartialBatch
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_PartialBatch"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I capture the serial number for open port scratch cards
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial" for "Action"
#    Then I enter "190207PROD000003" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Success_Message_On_SPNet_Screen" for "Scratch Cards"
    Then I click on "Close_Window_Button"
    Then I interact with window having title "Iridium SPNet :: Scratch Card Manager"
    Then I run scratch card jobs on brm server
    Then I verify the scratchcards are active

  @OpenPort @Activate_OP_ScratchCards_PartialBatch_with_empty_StartingAndEndingSerial
  Scenario: Testcase id = Activate_OP_ScratchCards_PartialBatch_with_empty_StartingAndEndingSerial, description = Activate OP ScratchCards PartialBatch with empty StartingAndEndingSerial
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_PartialBatch_with_empty_StartingAndEndingSerial"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial Batch" for "Action"
    Then I enter "" for "Starting_Serial_Number"
    Then I enter "" for "Ending_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Starting_Serial_On_SPNet_Screen" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_PartialBatch_with_invalid_StartingAndEndingSerial
  Scenario: Testcase id = Activate_OP_ScratchCards_PartialBatch_with_invalid_StartingAndEndingSerial, description = Activate OP ScratchCards PartialBatch with invalid StartingAndEndingSerial
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_PartialBatch_with_invalid_StartingAndEndingSerial"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial Batch" for "Action"
    Then I enter "TEST" for "Starting_Serial_Number"
    Then I enter "TEST" for "Ending_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Starting_Serial_On_SPNet_Screen" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_Single_with_invalidStartingSerial#_validEndingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_Single_with_invalidStartingSerial#_validEndingSerial#, description = Activate OP ScratchCards Single with invalidStartingSerial# validEndingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single_with_invalidStartingSerial#_validEndingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial Batch" for "Action"
    Then I enter "TEST" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Starting_Serial_On_SPNet_Screen" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_Single_with_validStartingSerial#_invalidEndingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_Single_with_validStartingSerial#_invalidEndingSerial#, description = Activate OP ScratchCards Single with validStartingSerial# invalidEndingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single_with_validStartingSerial#_invalidEndingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial Batch" for "Action"
    Then I enter "TEST" for "Ending_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Ending_Serial_On_SPNet_Screen" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_Single_with_emptyStartingSerial#_validEndingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_Single_with_emptyStartingSerial#_validEndingSerial#, description = Activate OP ScratchCards Single with emptyStartingSerial# validEndingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single_with_emptyStartingSerial#_validEndingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial Batch" for "Action"
    Then I enter "" for "Starting_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Starting_Serial_On_SPNet_Screen" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_Single_with_validStartingSerial#_emptyEndingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_Single_with_validStartingSerial#_emptyEndingSerial#, description = Activate OP ScratchCards Single with validStartingSerial# emptyEndingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_Single_with_validStartingSerial#_emptyEndingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial Batch" for "Action"
    Then I enter "" for "Ending_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Ending_Serial_On_SPNet_Screen" for "Scratch Cards"

  @OpenPort @Activate_OP_ScratchCards_PartialBatch_with_EndingSerial#_lessthan_StartingSerial#
  Scenario: Testcase id = Activate_OP_ScratchCards_PartialBatch_with_EndingSerial#_lessthan_StartingSerial#, description = Activate OP ScratchCards PartialBatch with EndingSerial# lessthan StartingSerial#
    Given Provisioning System Mode is set to "ON" for testcase "Activate_OP_ScratchCards_PartialBatch_with_EndingSerial#_lessthan_StartingSerial#"
    Given I am logged into Iridium with flag "Run" and SpAccount number
    Then I hover over "OpenPort_tab" tab
    Then I click on "ScratchCard_Inventory" link
    Then I enter "Test_0611_01" for "Search"
    Then I click on "Search_Button"
    Then I wait 5 seconds
    Then I click on "Activate_Button"
    Then I wait 5 seconds
    Then I interact with window having title "Iridium SPNet :: Scratch Card Activation"
    Then I select "Partial Batch" for "Action"
    Then I enter "" for "Ending_Serial_Number"
    Then I click on "Submit_Button"
    Then I verify the message "Invalid_Ending_Serial_On_SPNet_Screen" for "Scratch Cards"