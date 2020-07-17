*** Settings ***
Documentation       Check Application - NPC Standard
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../check_url.robot
Resource            ../actions/checks/ch_1_personal_details.robot
Resource            ../actions/checks/ch_2_contact_details.robot
Resource            ../actions/checks/ch_3_date_of_birth.robot
Resource            ../actions/checks/ch_4_passport.robot
Resource            ../actions/checks/ch_5_drivers_licence.robot
Resource            ../actions/checks/ch_6_fireams_licence.robot
Resource            ../actions/checks/ch_7_current_residential_address.robot
Resource            ../actions/checks/ch_8_postal_address.robot
Resource            ../actions/checks/ch_9_purpose_police_check.robot
Resource            ../actions/checks/ch_10_npc_proof_identity.robot
Resource            ../actions/checks/ch_11_national_police_check_priority_level.robot
Resource            ../actions/checks/ch_12_realtime_identity_check.robot
Resource            ../actions/checks/ch_13_terms_and_conditions.robot


*** Test Cases ***

Scenario: Fillup NPC_Standard Check
    Given user is in Application Page
    And user enter Check Credentials
    Then user should be directed to Check Page
    And user enter Peronal Details
    And user enter Contact Details 
    And user enter Date of Birth
    And user enter Passport
    And user enter Drivers Licence
    And user enter Firearm Licence
    And user enter Current Residential Address
    And user enter Postal Address
    And user enter Purpose of Police Check
    And user enter National Police Check Priority Level
    And user enter Realtime Identity Check
    And user enter Terms and Conditions
    And user enter NPC Proof of Identity
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

user enter Passport
    Check if the form is Visible Passport
    Select Yes Passport
    Enter Passport Number   
    Select Passport Country of Issue

user enter Drivers Licence
    Check if the form is Visible Drivers
    Select Yes Drivers
    Enter Drivers Licence   
    Select State of Issue

user enter Firearm Licence
    Check if the form is Visible Firearms
    Select Yes Licence
    Enter Firearms Licence   
    Select Country of Issue


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

user enter Postal Address
    Check if the form is Visible Postal
    Select No Postal
    Enter Postal Given Name
    Enter Postal Surname
    Enter Postal Unit Number
    Enter Postal Street Number
    Enter Postal Street Name
    Select Postal Street Type
    Select Postal Country
    Enter Postal Suburb
    Enter Postal Postcode

user enter Purpose of Police Check
    Check if the form is Visible Police Check
    Enter Position       
    Enter Proposed Work Place       
    Enter Proposed Location       
    Select Purpose Supervised
    Click Yes Police Check
    Enter Purpose Company Name
    Enter Purpose Email
    Enter Purpose Phone

user enter National Police Check Priority Level
    Check if the form is Visible Priority Level
    Select Priority Level


user enter Realtime Identity Check
    Check if the form is Visible Realtime     
    Upload Realtime Identity Check
 

user enter Terms and Conditions
    Check if the form is Visible Terms and Conditions
    Accept Terms and Condition

user enter NPC Proof of Identity
    Check if the form is Visible Proof of Identity 
    Click Applicant Consent
    Click Upload Documents Modal
    Upload Realtime Identity Check


# user enter Submit Form Button




