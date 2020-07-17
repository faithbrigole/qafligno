*** Settings ***
Documentation               Check Application - Credit Check Details
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Credit Check
    Element Should Contain       xpath=//*[@id="credit-check-header"]    Credit Check Details

Enter Credit Day
    ${credit_day} =              Evaluate    random.randint(1,31)   random
    ${day} =                     Convert to String           ${credit_day}
    Input text                   xpath=//*[@id="credit-check-details-section"]/div[2]/div[2]/section/div/div[1]/div/input     ${day}

Enter Credit Month
    ${credit_month}=             Evaluate    random.randint(1,12)       random
    ${month} =                   Convert to String           ${credit_month}
    Input text                   xpath=//*[@id="credit-check-details-section"]/div[2]/div[2]/section/div/div[2]/div/input     ${month}

Enter Credit Year
    ${credit_year} =             Evaluate    random.randint(1980,2000)     random
    ${year} =                    Convert to String           ${credit_year}
    Input text                   xpath=//*[@id="credit-check-details-section"]/div[2]/div[2]/section/div/div[3]/div/input     ${year}

Select Gender Credit
    ${gender}=                   Evaluate    random.randint(2,3)    random
    Click Element                xpath=//*[@id="credit-check-details-section"]/div[2]/div[3]/div/div[1]/input
    Click Element                xpath=//*[@id="credit-check-details-section"]/div[2]/div[3]/div/div[2]/div[1]/div[1]/ul/li[${gender}]
    Sleep    2

Enter Drivers Licence   
    ${licence_number}=           FakerLibrary.Random Number              10
    Input text                   xpath=//*[@id="credit-check-details-section"]/div[2]/div[4]/div/input            ${licence_number}

Enter Employer Name
    ${employer_name}=            FakerLibrary.First Name
    Input Text                   xpath=//*[@id="credit-check-details-section"]/div[2]/div[5]/div/input           ${employer_name}
    Sleep    2

Select Enquiry Type
    ${enquiry_type}=             Evaluate    random.randint(1,15)    random
    Click Element                xpath=//*[@id="credit-check-details-section"]/div[2]/div[6]/div/div[1]/input
    Click Element                xpath=//*[@id="credit-check-details-section"]/div[2]/div[6]/div/div[2]/div[1]/div[1]/ul/li[${enquiry_type}]
    Sleep    2

Select Obligation Code
    ${obligation_type}=          Evaluate    random.randint(1,5)    random
    Click Element                xpath=//*[@id="credit-check-details-section"]/div[2]/div[7]/div/div[1]/input
    Click Element                xpath=//*[@id="credit-check-details-section"]/div[2]/div[7]/div/div[2]/div[1]/div[1]/ul/li[${obligation_type}]
    Sleep    2
