*** Settings ***
Documentation               NXT CHECKS - Automation 
Library                     Selenium2Library


*** Variables ***
${browser}                  chrome

${url_check}                    https://stg.nxtchecks.nxtform.com/application-info/263
${check_pass_key}               CBPBOFI94ZB8ZTAUUBAJMNZLIGBU2EWXMM2AO6IBYQ6FF2J9SEW


*** Keywords ***
Applicant Checks Page
    Open Browser                ${url_check}    ${browser}
    Maximize Browser Window
    Sleep    5

Applicant Checks Login
    Sleep    2
    Wait Until Page Contains    Enter Pass Key
    Input Text                  xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/div/input    ${check_pass_key}
    Sleep    2
    Click Button                xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/span/div/button
    Sleep    2

Applicant Checks Page Authenticated
    Sleep    2
    Wait Until Page Contains    Start The Application
    Sleep    2
