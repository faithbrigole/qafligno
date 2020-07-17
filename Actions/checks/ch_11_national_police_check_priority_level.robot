*** Settings ***
Documentation               Check Application - National Police Check Priority Level
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Priority Level
    Element Should Contain       xpath=//*[@id="npc-priority-header"]    National Police Check Priority Level

Select Priority Level
    ${priority_level}=         Evaluate    random.randint(1,2)    random
    Click Element                xpath=//*[@id="npc-proof-of-identity-section"]/div[4]/div/div/div[1]/input
    Sleep    2
    Click Element                xpath=//*[@id="npc-proof-of-identity-section"]/div[4]/div/div/div[2]/div[1]/div[1]/ul/li[${priority_level}]
    Sleep    2 
