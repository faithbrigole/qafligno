*** Settings ***
Documentation               Check Application - Current Residential Address + Previous Residential Address
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Residential
    Element Should Contain       xpath=//*[@id="current-residential-address-section-header"]    Current Residential Address   


Enter Residential Unit Number
    ${unit_number}=              FakerLibrary.Random Number              5
    Input text                   xpath=//*[@id="residential-address-section"]/div[2]/div[1]/div/input    ${unit_number}
    Sleep    2

Enter Residential Street Number
    ${street_number}=            FakerLibrary.Random Number              5
    Input text                   xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[2]/div/input    ${street_number}
    Sleep    2

Enter Residential Street Name
    ${street_name}=              FakerLibrary.Street Name              
    Input text                   xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[3]/div/input    ${street_name}
    Sleep    2

Select Residential Street Type
    ${street_type}=              Evaluate    random.randint(1,99)    random
    Click Element                xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[4]/div/div[1]/input
    Sleep    2
    Click Element                xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[4]/div/div[2]/div[1]/div[1]/ul/li[ ${street_type}]
    Sleep    2 

Select Residential Country
    ${residential_country}=      Evaluate    random.randint(1,250)    random
    Click Element                xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[5]/div/div[1]/input
    Sleep    2
    Click Element                xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[5]/div/div[2]/div[1]/div[1]/ul/li[${residential_country}]
    Sleep    2 

Enter Residential Suburb
    ${residential_suburb}=       FakerLibrary.Street Name          
    Input text                   xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[6]/div/input    ${residential_suburb}
    Sleep    2

Enter Residential Postcode
    ${residential_postcode}=     FakerLibrary.Random Number              5          
    Input text                   xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[7]/input    ${residential_postcode}
    Sleep    2

Enter Residential From Day
    ${day_int} =                 Evaluate    random.randint(1,31)   random
    ${day} =                     Convert to String           ${day_int}
    Input text                   xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[8]/section/div/div[1]/div/input    ${day}
    Sleep    2

Enter Residential From Month
    ${month_int} =               Evaluate    random.randint(1,12)       random
    ${month} =                   Convert to String           ${month_int}
    Input text                   xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[8]/section/div/div[2]/div/input     ${month}
    Sleep    3

Enter Residential From Year
    # ${year_int} =                Evaluate    random.sample(range(1980, 2000), 1)     random
    # ${year} =                    Convert to String           ${year_int}
    Sleep    2
    Input text                   xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[8]/section/div/div[3]/div/input    2017     #${year}
    Sleep    2

Select Currently Living Checkbox
    Click Element                xpath=/html/body/div/div[2]/div/div/div[2]/div/div/div/div/div/div/div[2]/div/div[2]/div[8]/div[2]/div[9]/label
    Sleep    2
    Element Should Be Visible    xpath=//*[@id="residential-address-section"]/div[4]
    Element Should Contain       xpath=//*[@id="previous-address-section-header"]    Previous Address
    
Enter Previous Address Unit Number
    ${previous_unit_number}=     FakerLibrary.Random Number              5
    Input text                   xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[1]/div/input    ${previous_unit_number}
    Sleep    2

Enter Previous Residential Street Number
    ${previous_street_number}=   FakerLibrary.Random Number              5
    Input text                   xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[2]/div/input    ${previous_street_number}
    Sleep    2

Enter Previous Residential Street Name 
    ${previous_street_name}=     FakerLibrary.Street Name  
    Input text                   xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[3]/div/input    ${previous_street_name}
    Sleep    2

Select Previous Residential Street Type
    ${previous_street_type}=     Evaluate    random.randint(1,99)    random
    Click Element                xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[4]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[4]/div/div[2]/div[1]/div[1]/ul/li[${previous_street_type}]
    Sleep    2 

Select Previous Residential Country
    ${previous_residential_country}=      Evaluate    random.randint(1,250)    random
    Click Element                xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[5]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[5]/div/div[2]/div[1]/div[1]/ul/li[${previous_residential_country}]
    Sleep    2 

Enter Previous Residential Suburb
    ${previous_residential_suburb}=       FakerLibrary.Street Name          
    Input text                   xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[6]/div/input    ${previous_residential_suburb}
    Sleep    2

Enter Previous Residential Postcode
    ${previous_residential_postcode}=     FakerLibrary.Random Number              5          
    Input text                   xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[7]/input    ${previous_residential_postcode}
    Sleep    2

Select Live at This Year
    Click Element                xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[8]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="residential-address-section"]/div[3]/div[2]/div[8]/div/div[2]/div[1]/div[1]/ul/li[5]

    