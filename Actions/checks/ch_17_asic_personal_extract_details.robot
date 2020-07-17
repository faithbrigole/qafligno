*** Settings ***
Documentation               Check Application - ASIC Personal Extract Details
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible ASIC
    Element Should Contain       xpath=//*[@id="asic-section-header"]    ASIC Personal Extract Details

Enter ASIC Day From
    ${asic_day_from} =           Evaluate    random.randint(1,31)   random
    ${day_asic_from} =           Convert to String           ${asic_day_from}
    Input text                   xpath=//*[@id="asic-personal-extract-check-section"]/div[2]/div[2]/section/div/div[1]/div/input     ${day_asic_from}

Enter ASIC Month From
    ${asic_month_from}=          Evaluate    random.randint(1,12)       random
    ${month_asic_from} =         Convert to String           ${asic_month_from}
    Input text                   xpath=//*[@id="asic-personal-extract-check-section"]/div[2]/div[2]/section/div/div[2]/div/input     ${month_asic_from}

Enter ASIC Year From
    ${asic_year_from} =          Evaluate    random.randint(1980,2000)     random
    ${year_asic_from} =          Convert to String           ${asic_year_from}
    Input text                   xpath=//*[@id="asic-personal-extract-check-section"]/div[2]/div[2]/section/div/div[3]/div/input     ${year_asic_from}

Enter ASIC Day To
    ${asic_day_to} =             Evaluate    random.randint(1,31)   random
    ${day_asic_to} =             Convert to String           ${asic_day_to}
    Input text                   xpath=//*[@id="asic-personal-extract-check-section"]/div[2]/div[3]/section/div/div[1]/div/input     ${day_asic_to}

Enter ASIC Month To
    ${asic_month_to}=            Evaluate    random.randint(1,12)       random
    ${month_asic_to} =           Convert to String           ${asic_month_to}
    Input text                   xpath=//*[@id="asic-personal-extract-check-section"]/div[2]/div[3]/section/div/div[2]/div/input     ${month_asic_to}

Enter ASIC Year To
    ${asic_year_to} =            Evaluate    random.randint(1980,2000)     random
    ${year_asic_to} =            Convert to String           ${asic_year_to}
    Input text                   xpath=//*[@id="asic-personal-extract-check-section"]/div[2]/div[3]/section/div/div[3]/div/input     ${year_asic_to}
