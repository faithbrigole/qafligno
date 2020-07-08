*** Settings ***
Documentation     Tenant Application Form
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../common.robot
Resource            ../admin_create_user.robot


*** Test Cases ***

Scenario: Create a user
    Given user is in Login Page
    And user enter Superadmin Credentials
    When user click Login button
    User should be directed to the Dashboard

*** Keywords ***
user is in Login page 
    Login page

user enter Superadmin Credentials
    Superadmin Account

user click Login button
    Login Button

user should be directed to the Dashboard
    Dashboard


