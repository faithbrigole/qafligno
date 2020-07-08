*** Settings ***
Documentation               Dashboard super admin
Library                     Selenium2Library
Library                     String


*** Keywords ***
Search Batch
    Input Text                    xpath=//*[@id="responsive-table"]/div[1]/div[1]/div/input    BRF1791G8TCHIX63
    Sleep    2
    Element Should Be Visible     xpath=//*[@id="batch-table-searchInputNotNullResults"]/div/div

Show More Information Batch Record
    Click Element                 xpath=//*[@id="batch-table-searchInputNotNullResults"]/div/div/div[5]/div/a
    Sleep    2
    Element Should Be Visible     xpath=//*[@id="collapse-17"]/div/div/div/div/button

Click Dropdown 1 Batch Record
    Click Element                 xpath=//*[@id="collapse-17"]/div/div/div/div/button
    Sleep    2
    Element Should Be Visible     xpath=//*[@id="collapse-17"]/div/div/div/div/div

Click CSV
    Click Element                 xpath=//*[@id="collapse-17"]/div/div/div/div/div/a[1]
    Sleep    2

Click Dropdown 2 Batch Record
    Click Element                 xpath=//*[@id="collapse-17"]/div/div/div/div/button
    Sleep    2
    Element Should Be Visible     xpath=//*[@id="collapse-17"]/div/div/div/div/div

Click XLSX
    Click Element                 xpath=//*[@id="collapse-17"]/div/div/div/div/div/a[2]
    Sleep    2




