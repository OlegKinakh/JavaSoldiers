Feature: This feature will show user his checking account and what can he do with it


  Scenario: Verify User can create a new Checking account
    Given User is on homepage
    When User click on Checking to get the options
    And User click on New Checking option
    And User Select "Standard Checking" radio-button
    And User Select "Individual" radio-button
    Then User write the "122333" in the Account Name field
    Then User write the "1000" in the Initial Deposit Amount
    Then User click Submit button
    And User see the Success message "Confirmation Successfully created new Standard Checking account named 'Account Name'"


  Scenario: Verify User can view checking
    Given User is on homepage
    When User click on Checking to get the options
    And User click on View Checking option
    When User click on the Deposit Box on the "ON" button
    Then User see the details of the deposit
    And User verify Balance and Amount