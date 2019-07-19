Feature: This feature file tests amazon login

  @login @amazon_login
  Scenario: Testcase id = amazon_login, description = amazon login
    Given I open a new browser
    Then I open the url
    Then I click on signin button
    Then I enter username
	Then I click on continue button
	Then I enter password
	Then I click on login button