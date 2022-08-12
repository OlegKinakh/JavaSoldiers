Feature: Registration functionality
    #Arrange
    #Action
    #Assertion

  #Positive Scenarios

  Background:
    Given User is on the login page of the Digital Bank
    When User clicks on "Sign Up Here" link
    Then User able to see registration form

  Scenario: User Registration 1 (Positive Test)
    And User fill up the first page of the registration form
    Then User clicks on "Next" button
    Then User fill up the second page of the registration form
    When User clicks on "Register" button
    Then User will be redirected to login page
    Then User will verify message "Registration Successful. Please Login."


  Scenario: User Registration 2 (Positive Test)
    When User clicks on title drop down and choose "Mr."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "12/12/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then User will be redirected to the second registration form
    When User clicks on Address input field and types address "123 Digital"
    When User clicks on Locality input field and types locality "Internet City"
    When User clicks on Region input field and types region "IL"
    When User clicks on Postal Code input field and types postal code "94302"
    When User clicks on Country input field and types Country "USA"
    When User clicks on Home Phone field and types Home Phone "(547)-392-5436"
    When User clicks on Mobile Phone field and types Mobile Phone "(547)-392-4321"
    When User clicks on Work Phone field and types Work Phone "(547)-392-2345"
    Then User clicks on "Agree the terms and policy" check box
    Then User clicks on "Register" button
    Then User will be redirected to login page
    Then User will verify message "Registration Successful. Please Login."

#  Scenario: User Registration 3 (Negative Test)

#    Then User clicks on First Name field and type "Alex"
#    Then User clicks on Last name field and type "Smith"
#    Then User clicks on Gender radio button option "M"
#    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
#    Then User clicks on Social Security Number field and types SSN "123-34-1234"
#    Then User clicks on Email Address field and types users email "email@gmail.com"
#    Then User clicks on Password field and types users password "Password123!"
#    Then User clicks on Confirm Password field and types users password "Password123!"
#    Then User clicks on the "Next" button
#    Then Verify error message: "Please match the requested format."
#    Then Verify error message: "Please match the requested format. Social security must be in a valid format. ###-##-####.
#    Then Verify error message: "Please match the requested format."
#    Then Verify error message: "Please match the requested format. Password must contain at least one number and one uppercase and one lowercase letter, and at least 8 or more characters "
#    Then Verify error message: "Passwords Do Not Match"
#    Then User will be redirected to the second registration form
#    When User clicks on Address input field and types address "123 Digital"
#    When User clicks on Locality input field and types locality "Internet City"
#    When User clicks on Region input field and types region "IL"
#    When User clicks on Postal Code input field and types postal code "94302"
#    When User clicks on Country input field and types Country "USA"
#    When User clicks on Home Phone field and types Home Phone "(547)-392-5436"
#    When User clicks on Mobile Phone field and types Mobile Phone "(547)-392-4321"
#    When User clicks on Work Phone field and types Work Phone "(547)-392-2345"
#    Then User clicks on "Agree the terms and policy" check box
#    Then User click on "Register" button
#    Then User will be redirected to login page
#    Then User will verify message "Registration Successful. Please Login."
#    Then Verify error message: "Please the requested format. "
#    Then Verify error message: "Please the requested format. "
#    Then Verify error message: "Please the requested format. "
#    Then Verify error message: "Please check this box if you want to proceed."

  Scenario Outline: User Registration 4 (Negative Test) Verify Date of Birth error message

    When User clicks on title drop down and choose "<Ms.>"
    Then User clicks on First Name field and type "<Alex>"
    Then User clicks on Last name field and type "<Smith>"
    Then User clicks on Gender radio button option "<M>"
    Then User clicks on Date Of birth field and types users DOB "<1/1/20001>"
    Then User clicks on Social Security Number field and types SSN "<123-34-1234>"
    Then User clicks on Email Address field and types users email "<email@gmail.com>"
    Then User clicks on Password field and types users password "<Password123!>"
    Then User clicks on Confirm Password field and types users password "<Password123!>"
    Then User clicks on the "Next" button
    Then Verify error message: "Please match the requested format." is displayed

    Examples:
      | Title | First Name | Last Name | Gender | DOB       | SSN         | Email           | Password     | Confirm Password |
      | Ms.   | Alex       | Smith     | M      | 1/1/20001 | 123-34-1234 | email@gmail.com | Password123! | Password123!     |

  Scenario: User Registration 5 (Negative Test) Verify Social Security error message

    When User clicks on title drop down and choose "Ms."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "1231-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then Verify error message: "Please match the requested format." is displayed
  8:40
  Scenario: User Registration 6 (Negative Test) Verify Email Address error message

    When User clicks on title drop down and choose "Ms."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmailcom"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then Verify error message: "Please match the requested format." is displayed

  Scenario: User Registration 7 (Negative Test) Verify Password error message

    When User clicks on title drop down and choose "Ms."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then Verify error message: "Please match the requested format. Password must contain at least one number and one uppercase and one lowercase letter, and at least 8 or more characters" is displayed.

  Scenario: User Registration 8 (Negative Test) Verify Confirm Password error message

    When User clicks on title drop down and choose "Ms."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123"
    Then User clicks on the "Next" button
    Then Verify error message: "Passwords Do Not Match"

  Scenario: User Registration 9 (Negative Test) Verify Home Phone error message
    When User clicks on title drop down and choose "Ms."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then User will be redirected to the second registration form
    When User clicks on Address input field and types address "123 Digital"
    When User clicks on Locality input field and types locality "Internet City"
    When User clicks on Region input field and types region "IL"
    When User clicks on Postal Code input field and types postal code "94302"
    When User clicks on Country input field and types Country "USA"
    When User clicks on Home Phone field and types Home Phone "(547$$)-392-5436"
    When User clicks on Mobile Phone field and types Mobile Phone "(547)-392-4321"
    When User clicks on Work Phone field and types Work Phone "(547)-392-2345"
    Then User clicks on "Agree the terms and policy" check box
    Then User clicks on "Register" button
    Then Verify error message: "Please the requested format. "

  Scenario: User Registration 10 (Negative Test) Verify Mobile Phone error message
    When User clicks on title drop down and choose "Ms."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then User will be redirected to the second registration form
    When User clicks on Address input field and types address "123 Digital"
    When User clicks on Locality input field and types locality "Internet City"
    When User clicks on Region input field and types region "IL"
    When User clicks on Postal Code input field and types postal code "94302"
    When User clicks on Country input field and types Country "USA"
    When User clicks on Home Phone field and types Home Phone "(547)-392-5436"
    When User clicks on Mobile Phone field and types Mobile Phone "(547%%)-392-4321"
    When User clicks on Work Phone field and types Work Phone "(547)-392-2345"
    Then User clicks on "Agree the terms and policy" check box
    Then User clicks on "Register" button
    Then Verify error message: "Please the requested format. "

  Scenario: User Registration 11 (Negative Test) Verify Work Phone error message
    When User click on title drop down and choose "Ms."
    Then User click on First Name field and type "Alex"
    Then User click on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then User will be redirected to the second registration form
    When User clicks on Address input field and types address "123 Digital"
    When User clicks on Locality input field and types locality "Internet City"
    When User clicks on Region input field and types region "IL"
    When User clicks on Postal Code input field and types postal code "94302"
    When User clicks on Country input field and types Country "USA"
    When User clicks on Home Phone field and types Home Phone "(547)-392-5436"
    When User clicks on Mobile Phone field and types Mobile Phone "(547)-392-4321"
    When User clicks on Work Phone field and types Work Phone "(547^^)-392-2345"
    Then User clicks on "Agree the terms and policy" check box
    Then User clicks on "Register" button
    Then Verify error message: "Please the requested format. "

  Scenario: User Registration 12 (Negative Test) Verify Check Box Agreement error message
    When User clicks on title drop down and choose "Ms."
    Then User clicks on First Name field and type "Alex"
    Then User clicks on Last name field and type "Smith"
    Then User clicks on Gender radio button option "M"
    Then User clicks on Date Of birth field and types users DOB "1/1/2000"
    Then User clicks on Social Security Number field and types SSN "123-34-1234"
    Then User clicks on Email Address field and types users email "email@gmail.com"
    Then User clicks on Password field and types users password "Password123!"
    Then User clicks on Confirm Password field and types users password "Password123!"
    Then User clicks on the "Next" button
    Then User will be redirected to the second registration form
    When User clicks on Address input field and types address "123 Digital"
    When User clicks on Locality input field and types locality "Internet City"
    When User clicks on Region input field and types region "IL"
    When User clicks on Postal Code input field and types postal code "94302"
    When User clicks on Country input field and types Country "USA"
    When User clicks on Home Phone field and types Home Phone "(547)-392-5436"
    When User clicks on Mobile Phone field and types Mobile Phone "(547)-392-4321"
    When User clicks on Work Phone field and types Work Phone "(547)-392-2345"
    Then User clicks on "Register" button
    Then Verify error message: "Please check this box if you want to proceed."