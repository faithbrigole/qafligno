*** Settings ***
Documentation               Check Application - NPC Proof of Identity
Library                     Selenium2Library           
Library                     String


*** Keywords ***
Check if the form is Visible Proof of Identity 
    Element Should Contain       xpath=//*[@id="npc-proof-of-identity-section-header"]    NPC Proof of Identity

Click Applicant Consent
    Click Element                xpath=//*[@id="npc-proof-of-identity-section"]/div[2]/div/div/label[3]
    Sleep    2

Click Upload Documents Modal
    Click Element                xpath=//*[@id="npc-proof-of-identity-section"]/div[2]/div/div/div[1]/button
    Sleep    2
    Element Should Be Visible    xpath=//*[@id="npc-proof-of-identity-section"]/div[5]/div/div
    Element Should Contain       xpath=//*[@id="npc-proof-of-identity-section"]/div[5]/div/div    Upload Identifications

Upload A File Random
    ${upload_file}=                Evaluate    random.randint(1,7)    random     
    Click Element                xpath=//*[@id="npc-proof-of-identity-section"]/div[5]/div/div/div/div/div/div/div[1]/div[1]/div/div/input
    Sleep    2
    Click Element                xpath=/html/body/div[3]/div[1]/div[1]/ul/li[${upload_file}]
    Sleep    2