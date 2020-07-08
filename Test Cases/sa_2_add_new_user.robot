*** Settings ***
Documentation     Tenant Application Form
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../common.robot
Resource            ../actions/1_super_admin/2_add_new_user.robot


*** Test Cases ***

Scenario: Create a user
    Given user is in Login Page
    And user enter Superadmin Credentials
    When user click Login button
    Then user should be directed to the Dashboard
    And user navigate to User Management
    And user click + New User Button
    And user enter First Name
    And user enter Last Name
    And user enter Birth Date
    And user select Gender
    And user enter Email Address
    And user select Role


*** Keywords ***
user is in Login page 
    Login page

user enter Superadmin Credentials
    Superadmin Account

user click Login button
    Login Button

user should be directed to the Dashboard
    Dashboard

user navigate to User Management
    User Management

user click + New User Button
    Click New User Button

user enter First Name
    First Name UM

user enter Last Name
    Last Name UM

user enter Birth Date
    Birth Date UM

user select Gender
    Gender UM

user enter Email Address
    Email Address UM

user select Role
    Role UM

