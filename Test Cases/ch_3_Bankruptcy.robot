*** Settings ***
Documentation       Check Application - Bankruptcy Check
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../check_url.robot
Resource            ../actions/checks/ch_1_personal_details.robot
Resource            ../actions/checks/ch_2_contact_details.robot
Resource            ../actions/checks/ch_14_bankruptcy_and_insolvency_details.robot
Resource            ../actions/checks/ch_13_terms_and_conditions.robot




*** Test Cases ***

Scenario: Fillup Bankruptcy Check
    Given user is in Application Page
    And user enter Check Credentials
    Then user should be directed to Check Page
    And user enter Peronal Details
    And user enter Contact Details 
    And user enter Bankruptcy & Insolvency Details
    And user enter Terms and Conditions
    # And user enter Submit Form Button

*** Keywords ***
user is in Application Page
    Sleep    3
    Applicant Checks Page

user enter Check Credentials
    Sleep    3
    Applicant Checks Login

user should be directed to Check Page
    Applicant Checks Page Authenticated

user enter Peronal Details
    Check if the form is Visible Personal
    Enter Given Name
    Enter Surname
    Select Gender
    Select Additional Previous Name
    Enter Previous Given Name
    Enter Previous Given Name 2
    Enter Previous Given Name 3
    Enter Previous Surname
    Select Name Type
    Applicant Birth day
    Applicant Birth month
    Applicant Birth year

user enter Contact Details
    Check if the form is Visible Cotact
    Enter Email Address
    Enter Mobile Number

user enter Bankruptcy & Insolvency Details
    Check if the form is Visible Bankruptcy
    Select Yes Bankruptcy 1
    Select Yes Bankruptcy 2
    Select Search Method
    Enter Bankruptcy Date
    Enter Bankruptcy Month
    Enter Bankruptcy Year
    Select Yes Bankruptcy 3    

user enter Terms and Conditions
    Check if the form is Visible Terms and Conditions
    Accept Terms and Condition



