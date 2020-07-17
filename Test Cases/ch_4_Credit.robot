*** Settings ***
Documentation       Check Application - Credit Check
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../check_url.robot
Resource            ../actions/checks/ch_1_personal_details.robot
Resource            ../actions/checks/ch_2_contact_details.robot
Resource            ../actions/checks/ch_7_current_residential_address.robot
Resource            ../actions/checks/ch_19_credit_check_details.robot
Resource            ../actions/checks/ch_13_terms_and_conditions.robot




*** Test Cases ***

Scenario: Fillup Bankruptcy Check
    Given user is in Application Page
    And user enter Check Credentials
    Then user should be directed to Check Page
    And user enter Peronal Details
    And user enter Contact Details 
    And user enter Current Residential Address
    And user enter Credit Check Details
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

user enter Current Residential Address
    Check if the form is Visible Residential
    Enter Residential Unit Number
    Enter Residential Street Number
    Enter Residential Street Name
    Select Residential Street Type
    Select Residential Country
    Enter Residential Suburb
    Enter Residential Postcode
    Enter Residential From Day
    Enter Residential From Month
    Enter Residential From Year
    Select Currently Living Checkbox
    Enter Previous Address Unit Number
    Enter Previous Residential Street Number
    Enter Previous Residential Street Name 
    Select Previous Residential Street Type
    Select Previous Residential Country
    Enter Previous Residential Suburb
    Enter Previous Residential Postcode
    Select Live at This Year

user enter Credit Check Details
    Check if the form is Credit Check
    Enter Credit Day
    Enter Credit Month
    Enter Credit Year
    Select Gender Credit
    Enter Drivers Licence   
    Enter Employer Name
    Select Enquiry Type
    Select Obligation Code

user enter Terms and Conditions
    Check if the form is Visible Terms and Conditions
    Accept Terms and Condition



