*** Settings ***
Documentation               Check Application - Postal Address
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Postal
    Element Should Contain       xpath=//*[@id="postal-address-section-header"]    Postal Address

Select No Postal
    Click Element                xpath=//*[@id="postal-address-section"]/div[2]/div/div/div/label[2]

Enter Postal Given Name
    ${postal_given_name}=        FakerLibrary.First Name              
    Input text                   xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[1]/div/input            ${postal_given_name}

Enter Postal Surname
    ${postal_surname}=           FakerLibrary.Last Name              
    Input text                   xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[2]/div/input            ${postal_surname}

Enter Postal Unit Number
    ${postal_unit_number}=       FakerLibrary.Random Number              5
    Input text                   xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[3]/div/input    ${postal_unit_number}
    Sleep    2

Enter Postal Street Number
    ${postal_street_number}=     FakerLibrary.Random Number              5
    Input text                   xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[4]/div/input    ${postal_street_number}
    Sleep    2

Enter Postal Street Name
    ${postal_street_name}=       FakerLibrary.Street Name              
    Input text                   xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[5]/div/input    ${postal_street_name}
    Sleep    2

Select Postal Street Type
    ${postal_street_type}=              Evaluate    random.randint(1,99)    random
    Click Element                xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[6]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[6]/div/div[2]/div[1]/div[1]/ul/li[${postal_street_type}]
    Sleep    2 

Select Postal Country
    ${postal_country}=           Evaluate    random.randint(1,250)    random
    Click Element                xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[7]/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[7]/div/div[2]/div[1]/div[1]/ul/li[${postal_country}]
    Sleep    2 

Enter Postal Suburb
    ${postal_suburb}=            FakerLibrary.Street Name          
    Input text                   xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[8]/div/input    ${postal_suburb}
    Sleep    2

Enter Postal Postcode
    ${postal_postcode}=          FakerLibrary.Random Number              5          
    Input text                   xpath=//*[@id="postal-address-section"]/div[2]/div[2]/div[9]/input    ${postal_postcode}
    Sleep    2