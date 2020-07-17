*** Settings ***
Documentation               Check Application - Purpose of Police Check
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Police Check
    Element Should Contain       xpath=//*[@id="passport-section-header-section"]    Passport

Enter Position       
    ${purpose_position}=         FakerLibrary.First Name              
    Input text                   xpath=//*[@id="purpose-of-police-check-section"]/div[2]/div[1]/div[2]/div/input            ${purpose_position}

Enter Proposed Work Place       
    ${purpose_work_place}=       FakerLibrary.Address              
    Input text                   xpath=//*[@id="purpose-of-police-check-section"]/div[2]/div[1]/div[3]/div/input            ${purpose_work_place}

Enter Proposed Location       
    ${purpose_location}=         FakerLibrary.Address              
    Input text                   xpath=//*[@id="purpose-of-police-check-section"]/div[2]/div[1]/div[4]/div/input            ${purpose_location}

Select Purpose Supervised
    ${passport_country}=         Evaluate    random.randint(1,3)    random
    Click Element                xpath=//*[@id="purpose-of-police-check-section"]/div[2]/div[1]/div[5]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="purpose-of-police-check-section"]/div[2]/div[1]/div[5]/div/div[2]/div[1]/div[1]/ul/li[${passport_country}]
    Sleep    2 

Click Yes Police Check
    Click Element                xpath=//*[@id="purpose-of-police-check-section"]/div[2]/div[2]/div/div/label[1]
    Sleep    2
    Element Should Be Visible    xpath=//*[@id="employer-details-section-header"]
    Element Should Contain       xpath=//*[@id="employer-details-section-header"]    Employer Details

Enter Purpose Company Name
    ${purpose_company_name}=     FakerLibrary.Company              
    Input text                   xpath=//*[@id="purpose-of-police-check-section"]/div[3]/div[2]/div[1]/div/input            ${purpose_company_name}

Enter Purpose Email
    ${purpose_company_email}=    FakerLibrary.Email              
    Input text                   xpath=//*[@id="purpose-of-police-check-section"]/div[3]/div[2]/div[2]/div/input            ${purpose_company_email}

Enter Purpose Phone
    ${purpose_company_phone}=    FakerLibrary.Random Number        10              
    Input text                   xpath=//*[@id="purpose-of-police-check-section"]/div[3]/div[2]/div[3]/div/input            ${purpose_company_phone}
