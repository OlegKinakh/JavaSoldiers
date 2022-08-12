Feature: This feature allows user to make changes to My profile


  Scenario: Verify User is able to change name
    Given User Logged into account
    When User click on Profile Icon
    Then User Click On My Profile Button
    And User change Name on Input Field to "Name"
    And User click on Submit Button
    And User Check for message "Profile Updated Successfully."
    And User click on Home Page Option
    Then User check for Update "Welcome message"

    Scenario Outline: Verify user is able to change all Critical Fields
      Given User Logged into account
      When User click on Profile Icon
      Then User Click On My Profile Option
      And  User change "<Address>" ,"<Country>" , "<Home Phone>", "<First Name>", "<Last Name>",  "<Title>"

      Examples:
        | Address          | Country | Home Phone   | First Name | Last Name | Title |
        | 123 Digital Lane | USA     | 773-747-2953 | Bob        | Ross      | Mr.   |



