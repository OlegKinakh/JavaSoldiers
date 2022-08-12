Feature: This feature allows user to login into the app or website

  Scenario Outline: Verify if user can login with valid credentials

    When  user login with valid credentials "<username>" and password "<password>"
    Then verify if user is on home page

    Examples:
      | username  | password  |
      | budjicrop@gmail.com | Javasoldier1! |

