*** Settings ***
Documentation               Check Application - VEVO Details
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible VEVO
    Element Should Contain           xpath=//*[@id="passport-section-header-section"]    Passport

Enter VEVO Passport Number   
    ${vevo_passport_number}=         FakerLibrary.Random Number              15
    Input text                       xpath=//*[@id="vevo-details-section"]/div[2]/div[2]/div/input            ${vevo_passport_number}

Select VEVO Country of Issue
    ${vevo_passport_country}=        Evaluate    random.randint(1,250)    random
    Click Element                    xpath=//*[@id="vevo-details-section"]/div[2]/div[3]/div/div[1]/input
    Sleep    2
    Click Element                    xpath=//*[@id="vevo-details-section"]/div[2]/div[3]/div/div[2]/div[1]/div[1]/ul/li[${vevo_passport_country}]
    Sleep    2 

Upload VEVO Passport
    Choose File                      xpath=//*[@id="vevo-file-upload"]         ${EXECDIR}/Files/Passport.jpg
    Sleep    2
    Wait until element is enabled    xpath=//*[@id="vevo-details-section"]/div[2]/div[4]/div
    Sleep    3   
