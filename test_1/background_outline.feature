Feature: Test Cucumber script
	I want to test cucumber

Background:
	Given I run with Watir-webdriver
	When I open a new browser
	Then I go to the url "google.com"
	Then I wait 3 seconds

Scenario: TestScenario1
	Then I go to the url "facebook.com"

Scenario: TestScenario2
	Then I go to the url "www.bing.com"

Scenario: TestScenario3
	Then I go to the url "google.co.in"

Scenario: TestScenario4
	Then I go to the url "yahoo.com"

Scenario: TestScenario5
	Then I go to the url "3qilabs.com"