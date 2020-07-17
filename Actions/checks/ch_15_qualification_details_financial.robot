*** Settings ***
Documentation               Check Application - Qualification Details
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Qualification
    Element Should Contain       xpath=//*[@id="qualification-details-header"]    Qualification Details

Enter First Name Qualification
    ${first_name_qualification}  FakerLibrary.First Name
    Input text                   xpath=//*[@id="qualification-details"]/div[2]/div/div[2]/div/input        ${first_name_qualification}

Enter Other Names Qualification
    ${other_name_qualification}  FakerLibrary.First Name
    Input text                   xpath=//*[@id="qualification-details"]/div[2]/div/div[3]/div/input        ${other_name_qualification}

Enter Surname Qualification
    ${surname_qualification}     FakerLibrary.Last Name
    Input text                   xpath=//*[@id="qualification-details"]/div[2]/div/div[4]/div/input       ${surname_qualification}

Enter Name Qualification Obtained
    ${obtained_qualification}    FakerLibrary.First Name
    Input text                   xpath=//*[@id="qualification-details"]/div[2]/div/div[5]/div/input       ${obtained_qualification}

Enter Qualification Date
    ${qualification_day} =       Evaluate    random.randint(1,31)   random
    ${day_qualification} =       Convert to String           ${qualification_day}
    Input text                   xpath=//*[@id="qualification-details"]/div[2]/div/div[6]/section/div/div[1]/div/input     ${day_qualification}

Enter Qualification Month
    ${qualification_month}=      Evaluate    random.randint(1,12)       random
    ${month_qualification} =     Convert to String           ${qualification_month}
    Input text                   xpath=//*[@id="qualification-details"]/div[2]/div/div[6]/section/div/div[2]/div/input     ${month_qualification}

Enter Qualification Year
    ${qualification_year} =      Evaluate    random.randint(1980,2000)     random
    ${year_qualification} =      Convert to String           ${qualification_year}
    Input text                   xpath=//*[@id="qualification-details"]/div[2]/div/div[6]/section/div/div[3]/div/input     ${year_qualification}

