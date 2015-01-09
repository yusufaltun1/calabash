Feature: Category

@categoryTest
 Scenario: Category
    	Then I wait for "Atla" to appear
    	Then I wait for a second
    	Given I press the "Atla" button 
    	Then I wait for the view with id "drawerLayout" to appear
    	Then I swipe left  
    	Then I wait for the view with id "leftDrawerCategoryLL" to appear
    	Then I press view with id "leftDrawerCategoryLL"
	Then I press list item number 1
	Then I wait for a second
	Then I press list item number 2
	Then I wait for a second
	Then I press list item number 2
	Then I wait for a second
	Then I press list item number 2
	Then I wait for a second
	Then I press list item number 1
	Then I press view with id "closeBtn"
	Then I wait for a second 
	Then I press view with id "add_to_basket_btn"
	Then I enter text "asfffff45612@mailcatch.com" into field with id "loginEmailET"
	Then I enter text "Q1w2e3r4" into field with id "loginPassET"
	Then I press view with id "LoginBtn"
	Then I wait for 10 seconds 
	
Feature: Login 

@loginTest
Scenario: Login
Then I wait for "Atla" to appear
Then I wait for a second
Given I press the "Atla" button 
Then I wait for the view with id "drawerLayout" to appear
Then I swipe left   
Then I wait for the view with id "leftDrawerSignInLL" to appear
Then I press view with id "leftDrawerSignInLL"
Then I wait for the view with id "loginEmailET" to appear
Then I enter text "asfffff45612@mailcatch.com" into field with id "loginEmailET"
Then I enter text "Q1w2e3r4" into field with id "loginPassET"
Then I press view with id "LoginBtn"

