*** Settings ***
Documentation     Tenant Application Form
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../common.robot
Resource            ../actions/download_batch_records.robot


*** Test Cases ***

Scenario: Create a user
    Given user is in Login Page
    And user enter Superadmin Credentials
    When user click Login button
    Then user should be directed to the Dashboard
    And user navigate to Batch Records 
    And user click + icon (Show more Options)
    And user click Download Dropdown
    And user click CSV
    And user click Download Dropdown again
    And user click XLSX

*** Keywords ***
user is in Login page 
    Login page

user enter Superadmin Credentials
    Superadmin Account

user click Login button
    Login Button

user should be directed to the Dashboard
    Dashboard

user navigate to Batch Records 


user click + icon (Show more Options)


user click Download Dropdown


user click CSV


user click Download Dropdown again


user click XLSX





