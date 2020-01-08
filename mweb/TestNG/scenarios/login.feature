Feature: Free CRM Login Feature

Scenario Outline: Free CRM Login Test Scenario

Given user is already on Login Page
When title of login page is CRM
Then user enters "<username>" and "<password>"
Then user clicks on login button
Then user is on home page
#Then Open contacts page
#Then user enters contact details "<firstname>" and "<lastname>" and "<position>"
Then user logout
Then Close the browser


Examples:
	| username | password | firstname | lastname | position |
	| admin  | password | suresh | babu | 1 |
		