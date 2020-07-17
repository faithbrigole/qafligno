*** Settings ***
Documentation       Check Application - ANTI MONEY 
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../check_url.robot
Resource            ../actions/checks/ch_1_personal_details.robot
Resource            ../actions/checks/ch_2_contact_details.robot
Resource            ../actions/checks/ch_3_date_of_birth.robot
Resource            ../actions/checks/ch_13_terms_and_conditions.robot




*** Test Cases ***

Scenario: Fillup Anti Money
    Given user is in Application Page
    And user enter Check Credentials
    Then user should be directed to Check Page
    And user enter Peronal Details
    And user enter Contact Details 
    And user enter Date of Birth
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

user enter Date of Birth
    Check if the form is Visible DOB
    Applicant Birth day 2
    Applicant Birth month 2
    Applicant Birth year 2
    Select Country of Birth
    Enter City of Birth    

user enter Terms and Conditions
    Check if the form is Visible Terms and Conditions
    Accept Terms and Condition



