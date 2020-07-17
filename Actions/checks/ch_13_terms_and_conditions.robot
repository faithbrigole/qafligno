*** Settings ***
Documentation               Check Application - Terms and Conditions
Library                     Selenium2Library           
Library                     String


*** Keywords ***
Check if the form is Visible Terms and Conditions
    Element Should Contain       xpath=//*[@id="terms-and-condition-header"]    Terms and Conditions

Accept Terms and Condition
    Click Element                xpath=//*[@id="additional-agreements-section"]/div[2]/div/label
    