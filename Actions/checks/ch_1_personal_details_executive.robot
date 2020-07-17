*** Settings ***
Documentation               Check Application - Personal Details + Additional Previous Name
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Personal
    Element Should Contain       xpath=//*[@id="personal-details-section-header"]    Personal Details   


Enter Given Name
    ${given_name}=               FakerLibrary.First Name
    Input Text                   xpath=//*[@id="personal-details-section"]/div[2]/div[1]/div/input           ${given_name}
    Sleep    2

Enter Surname
    ${surname}=                  FakerLibrary.First Name
    Input Text                   xpath=//*[@id="personal-details-section"]/div[2]/div[4]/div/input           ${surname}
    Sleep    2

Select Gender
    ${gender}=                   Evaluate    random.randint(2,3)    random
    Click Element                xpath=//*[@id="personal-details-section"]/div[2]/div[5]/div/div[1]/input
    Click Element                xpath=//*[@id="personal-details-section"]/div[2]/div[5]/div/div[2]/div[1]/div[1]/ul/li[${gender}]
    Sleep    2
    
Enter Personal Occupation
    ${personal_occupation}=          FakerLibrary.Job              
    Input text                       xpath=//*[@id="personal-details-section"]/div[2]/div[6]/div/input            ${personal_occupation}
                    
Select Additional Previous Name
    Click Element                xpath=//*[@id="personal-details-section"]/div[2]/div[7]/div/label[1]
    Sleep    2
    Element Should Be Visible    xpath=//*[@id="previous-name-section-header"]
    Element Should Contain       xpath=//*[@id="previous-name-section-header"]    Previous Names

Enter Previous Given Name
    ${previous_given_name}=      FakerLibrary.First Name
    Input Text                   xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[1]/div/input           ${previous_given_name}
    Sleep    2

Enter Previous Given Name 2
    ${previous_given_name_2}=    FakerLibrary.First Name
    Input Text                   xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[2]/div/input           ${previous_given_name_2}
    Sleep    2

Enter Previous Given Name 3
    ${previous_given_name_3}=    FakerLibrary.First Name
    Input Text                   xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[3]/div/input           ${previous_given_name_3}
    Sleep    2

Enter Previous Surname
    ${previous_surname}=         FakerLibrary.First Name
    Input Text                   xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[4]/div/input           ${previous_surname}
    Sleep    2

Select Name Type
    ${name_type}=                Evaluate    random.randint(1,3)    random  
    Click Element                xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[5]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[5]/div/div[2]/div[1]/div[1]/ul/li[${name_type}]
    Sleep    2

Applicant Birth day
    ${day_int} =                 Evaluate    random.randint(1,31)   random    #credits to master franz and kenny XD
    ${day} =                     Convert to String           ${day_int}
    Input text                   xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[6]/section/div/div[1]/div/input     ${day}
    Sleep    3
    
Applicant Birth month
    ${month_int} =               Evaluate    random.randint(1,12)       random
    ${month} =                   Convert to String           ${month_int}
    Input text                   xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[6]/section/div/div[2]/div/input     ${month}
    Sleep    3

Applicant Birth year
    ${year_int} =                Evaluate    random.randint(1980,2000)     random
    ${year} =                    Convert to String           ${year_int}
    Input text                   xpath=//*[@id="personal-details-section"]/div[3]/div[2]/div[6]/section/div/div[3]/div/input     ${year}
     Sleep    3





