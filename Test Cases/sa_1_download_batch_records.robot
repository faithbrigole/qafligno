*** Settings ***
Documentation     Tenant Application Form
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../common.robot
Resource            ../actions/1_super_admin/1_download_batch_records.robot


*** Test Cases ***

Scenario: Create a user
    Given user is in Login Page
    And user enter Superadmin Credentials
    When user click Login button
    Then user should be directed to the Dashboard
    And user navigate to Batch Records 
    And user search for a Batch
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
    Batch Record

 And user search for a Batch
    Search Batch

user click + icon (Show more Options)
    Show More Information Batch Record

user click Download Dropdown
    Click Dropdown 1 Batch Record

user click CSV
    Click CSV

user click Download Dropdown again
    Click Dropdown 2 Batch Record

user click XLSX
    Click XLSX



