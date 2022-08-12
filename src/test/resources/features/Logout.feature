Feature: This feature allows User to LogOut form the app


  Scenario Outline: Verify User can able to LogOut
    When  user login with valid credentials "<username>" and password "<password>"
    Then verify if user is on home page
    Then user clicks on profile icon
    Then user click on "Logout"
    And  check if user is on login page with the "Success Logout completed."


    Examples:
      | username            | password      |
      | budjicrop@gmail.com | Javasoldier1! |

