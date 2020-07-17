*** Settings ***
Documentation               Check Application - Institute Details
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Institute
    Element Should Contain       xpath=//*[@id="institute-details-header"]    Institute Details

Enter Full Institute Name
    ${institute_name}=           FakerLibrary.Name             
    Input text                   xpath=//*[@id="institute-details"]/div[2]/div[1]/div/input            ${institute_name}

Enter Suburb Institute    
    ${institute_suburb}=         FakerLibrary.City         
    Input text                   xpath=//*[@id="institute-details"]/div[2]/div[2]/div/input            ${institute_suburb}

Select Institute Country
    ${institute_country}=        Evaluate    random.randint(1,250)    random
    Click Element                xpath=//*[@id="institute-details"]/div[2]/div[3]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="institute-details"]/div[2]/div[3]/div/div[2]/div[1]/div[1]/ul/li[${institute_country}]
    Sleep    2 