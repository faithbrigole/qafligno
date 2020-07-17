*** Settings ***
Documentation               Check Application - Date of Birth
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible DOB
    Element Should Contain       xpath=//*[@id="birth-date-section-header"]    Date of Birth


Applicant Birth day 2
    ${day_int_2} =               Evaluate    random.randint(1,31)   random
    ${day_2} =                   Convert to String           ${day_int_2}
    Input text                   xpath=//*[@id="birth-date-section"]/div[2]/div[1]/section/div/div[1]/div/input     ${day_2}

Applicant Birth month 2
    ${month_int_2} =             Evaluate    random.randint(1,12)       random
    ${month_2} =                 Convert to String           ${month_int_2}
    Input text                   xpath=//*[@id="birth-date-section"]/div[2]/div[1]/section/div/div[2]/div/input     ${month_2}

Applicant Birth year 2
    ${year_int_2} =              Evaluate    random.randint(1980,2000)     random
    ${year_2} =                  Convert to String           ${year_int_2}
    Input text                   xpath=//*[@id="birth-date-section"]/div[2]/div[1]/section/div/div[3]/div/input     ${year_2}

Select Country of Birth
    ${country_birth}=            Evaluate    random.randint(1,250)    random
    Click Element                xpath=//*[@id="birth-date-section"]/div[2]/div[2]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="birth-date-section"]/div[2]/div[2]/div/div[2]/div[1]/div[1]/ul/li[${country_birth}]
    Sleep    2 

Enter City of Birth            
    ${city}                      FakerLibrary.City
    Input text                   xpath=//*[@id="birth-date-section"]/div[2]/div[3]/div/input        ${city}


