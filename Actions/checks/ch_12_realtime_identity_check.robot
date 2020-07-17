*** Settings ***
Documentation               Check Application - Realtime Identity Check
Library                     Selenium2Library           
Library                     String


*** Keywords ***
Check if the form is Visible Realtime 
    Element Should Contain       xpath=//*[@id="realtime-identity-check-section-header"]    Realtime Identity Check
   
Upload Realtime Identity Check
    Choose File             xpath=//*[@id="realtime-file-uploader"]         ${EXECDIR}/Files/Passport.jpg
    Sleep    2
    Wait until element is enabled   xpath=//*[@id="realtime-identity-check-section"]/div[2]/div/div[2]/div[2]
    Sleep    3    