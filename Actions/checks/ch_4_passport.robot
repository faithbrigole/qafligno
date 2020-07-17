*** Settings ***
Documentation               Check Application - Passport
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Passport
    Element Should Contain       xpath=//*[@id="passport-section-header-section"]    Passport

Select Yes Passport
    Click Element                xpath=//*[@id="passport-section"]/div[2]/div[1]/div/div/label[1]

Enter Passport Number   
    ${passport_number}=          FakerLibrary.Random Number              15
    Input text                   xpath=//*[@id="passport-section"]/div[2]/div[2]/div[1]/div/input            ${passport_number}

Select Passport Country of Issue
    ${passport_country}=         Evaluate    random.randint(1,250)    random
    Click Element                xpath=//*[@id="passport-section"]/div[2]/div[2]/div[2]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="passport-section"]/div[2]/div[2]/div[2]/div/div[2]/div[1]/div[1]/ul/li[${passport_country}]
    Sleep    2 