*** Settings ***
Documentation               Check Application - Drivers Licence
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Drivers
    Element Should Contain       xpath=//*[@id="drivers-licence-header"]   Driver's Licence

Select Yes Drivers
    Click Element                xpath=//*[@id="drivers-licence-section"]/div[2]/div/div/div/label[1]

Enter Drivers Licence   
    ${licence_number}=           FakerLibrary.Random Number              10
    Input text                   xpath=//*[@id="drivers-licence-section"]/div[2]/div[2]/div[1]/div/input            ${licence_number}

Select State of Issue
    ${passport_country}=         Evaluate    random.randint(2,9)    random
    Click Element                xpath=//*[@id="drivers-licence-section"]/div[2]/div[2]/div[2]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="drivers-licence-section"]/div[2]/div[2]/div[2]/div/div[2]/div[1]/div[1]/ul/li[${passport_country}]
    Sleep    2 