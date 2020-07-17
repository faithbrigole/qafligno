*** Settings ***
Documentation               Check Application - Bankruptcy & Insolvency Details
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Bankruptcy
    Element Should Contain       xpath=//*[@id="bankruptcy-section-header"]   Bankruptcy & Insolvency Details

Select Yes Bankruptcy 1
    Click Element                xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[1]/div/div[2]/label[1]

Select Yes Bankruptcy 2
    Click Element                xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[1]/div/div[3]/label[1]

Select Search Method
    ${Search_method}=            Evaluate    random.randint(2,4)    random
    Click Element                xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[1]/div/div[4]/div[1]/input
    Sleep    5
    Click Element                xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[1]/div/div[4]/div[2]/div[1]/div[1]/ul/li[${Search_method}]
    Sleep    2 
    
Enter Bankruptcy Date
    ${bankruptcy_date} =               Evaluate    random.randint(1,31)   random
    ${day_bank} =                   Convert to String           ${bankruptcy_date}
    Input text                   xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[1]/div/div[5]/section/div/div[1]/div/input     ${day_bank}

Enter Bankruptcy Month
    ${bankruptcy_month}=             Evaluate    random.randint(1,12)       random
    ${month_bank} =                 Convert to String           ${bankruptcy_month}
    Input text                   xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[1]/div/div[5]/section/div/div[2]/div/input     ${month_bank}

Enter Bankruptcy Year
    ${bankruptcy_year} =              Evaluate    random.randint(1980,2000)     random
    ${year_bank} =                  Convert to String           ${bankruptcy_year}
    Input text                   xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[1]/div/div[5]/section/div/div[3]/div/input     ${year_bank}

Select Yes Bankruptcy 3
    Click Element                xpath=//*[@id="bankruptcy-and-insolvency-details-section"]/div[2]/div[2]/div/div/label[1]
