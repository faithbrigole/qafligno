*** Settings ***
Documentation               Check Application - Firearms Licence
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Firearms
    Element Should Contain       xpath=//*[@id="firearm-section-header"]   Firearm Licence

Select Yes Licence
    Click Element                xpath=//*[@id="firearm-section"]/div[2]/div[1]/div/div/label[1]

Enter Firearms Licence   
    ${licence_number}=           FakerLibrary.Random Number              10
    Input text                   xpath=//*[@id="firearm-section"]/div[2]/div[2]/div[1]/div/input           ${licence_number}

Select Country of Issue
    ${firearms_country}=         Evaluate    random.randint(2,9)    random
    Click Element                xpath=//*[@id="firearm-section"]/div[2]/div[2]/div[2]/div/div[1]/input
    Sleep    5
    Click Element                xpath=//*[@id="firearm-section"]/div[2]/div[2]/div[2]/div/div[2]/div[1]/div[1]/ul/li[${firearms_country}]
    Sleep    2 