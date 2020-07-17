*** Settings ***
Documentation               NXT CHECKS - Automation 
Library                     Selenium2Library


*** Variables ***
${browser}                  chrome

# DEV ENVIRONMENT
${url_dev}                               https://dev.nxtchecks.nxtform.com/

${url_check_dev_executive_bundle}        https://dev.nxtchecks.nxtform.com/application-info/139
${check_pass_key_dev_executive_bundle}   OMNOSK60R7L3DXN9SDZPGYH4I6K16LAGV3AHS8S3SB28MJ5DZ4Y


# STG ENVIRONMENT
${url_stg}                               https://stg.nxtchecks.nxtform.com/

${url_check_stg_asic}                    https://stg.nxtchecks.nxtform.com/application-info/261
${check_pass_key_stg_asic}               F7TAU40YL0QIRW5Q8NLU7QOA5W5NOVK26EYS5UTTE0AO5HOA9N8


${url_check_stg_entry_bundle}            https://stg.nxtchecks.nxtform.com/application-info/251
${check_pass_key_stg_entry_bundle}       SQ1J5VDD2RGQLXRV5Q8EBBKHJ84NTWL49F9J0R9V7KO9FENSFA4

${url_check_stg_financial_bundle}        https://stg.nxtchecks.nxtform.com/application-info/252
${check_pass_key_stg_financial_bundle}   6FD253M5MSN084EF2DBBV93IQCM68EL7SMNCPJDOZCJFXED4O0X

${url_check_stg_executive_bundle}        https://stg.nxtchecks.nxtform.com/application-info/250
${check_pass_key_stg_executive_bundle}   V6FRR77LZ0FUCK46DN4KY43CJLN0FA3D6VFRLG22KT23XJZ3AQK

${url_check_stg_npc_standard}            https://stg.nxtchecks.nxtform.com/application-info/134
${check_pass_key_stg_npc_standard}       5FJ4B85M2G66AW2VPKEJKQC6R2L6ZBXPZEX2SUFWNVATXDUA1W0  



#SUPER ADMIN ACCOUNTS
${super_admin}              globalchecksdeveloper@gmail.com
${sa_password}              qzRtC52

#ORG ADMIN ACCOUNTS
${org_admin}
${oa_password}

#ORG USER ACCOUNTS
${org_user}
${ou_password}

*** Keywords ***
# ASIC CHECK
Applicant Checks Page ASIC Check
    Open Browser                ${url_check_stg_asic}    ${browser}
    Maximize Browser Window
    Sleep    5

Applicant Checks Login ASIC Check
    Sleep    2
    Wait Until Page Contains    Enter Pass Key
    Input Text                  xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/div/input    ${check_pass_key_stg_asic}
    Sleep    2
    Click Button                xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/span/div/button
    Sleep    2

# ENTRY BUNDLE CHECK
Applicant Checks Page Entry Bundle
    Open Browser                ${url_check_stg_entry_bundle}    ${browser}
    Maximize Browser Window
    Sleep    5

Applicant Checks Login Entry Bundle
    Sleep    2
    Wait Until Page Contains    Enter Pass Key
    Input Text                  xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/div/input    ${check_pass_key_stg_entry_bundle}
    Sleep    2
    Click Button                xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/span/div/button
    Sleep    2

# FINANCIAL BUNDLE CHECK
Applicant Checks Page Financial Bundle
    Open Browser                ${url_check_stg_financial_bundle}    ${browser}
    Maximize Browser Window
    Sleep    5

Applicant Checks Login Financial Bundle
    Sleep    2
    Wait Until Page Contains    Enter Pass Key
    Input Text                  xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/div/input    ${check_pass_key_stg_financial_bundle}
    Sleep    2
    Click Button                xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/span/div/button
    Sleep    2

# EXECUTIVE BUNDLE CHECK
Applicant Checks Page Executive Bundle
    Open Browser                ${url_check_stg_executive_bundle}    ${browser}
    Maximize Browser Window
    Sleep    5

Applicant Checks Login Executive Bundle
    Sleep    2
    Wait Until Page Contains    Enter Pass Key
    Input Text                  xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/div/input    ${check_pass_key_stg_executive_bundle}
    Sleep    2
    Click Button                xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/span/div/button
    Sleep    2

# EXECUTIVE BUNDLE CHECK
Applicant Checks Page NPC Checks
    Open Browser                ${url_check_stg_npc_standard}    ${browser}
    Maximize Browser Window
    Sleep    5

Applicant Checks Login NPC Checks
    Sleep    2
    Wait Until Page Contains    Enter Pass Key
    Input Text                  xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/div/input    ${check_pass_key_stg_npc_standard}
    Sleep    2
    Click Button                xpath=//*[@id="application-form-page-component"]/div[1]/div/div[2]/form/span/div/button
    Sleep    2 


Applicant Checks Page Authenticated
    Sleep    2
    Wait Until Page Contains    Start The Application
    Sleep    2

Login Page
    #Open Browser            ${url_dev}      ${browser}
    Open Browser            ${url_stg}      ${browser}
    Maximize Browser Window
    Sleep    5

# LOGIN AS SUPERADMIN
Superadmin Account
    Sleep    5
    Wait Until Page Contains        Login Account
    Sleep    5
    Input Text              //*[@id="login-component"]/form/div[1]/input       ${super_admin}
    Input Text              //*[@id="login-component"]/form/div[2]/input       ${sa_password}

# LOGIN AS COMPANY ADMIN
Organizational Admin
    Wait Until Page Contains        Login Account
    Input Text              //*[@id="login-component"]/form/div[1]/input       ${org_admin}
    Input Text              //*[@id="login-component"]/form/div[2]/input       ${oa_password}

# LOGIN AS COMPANY USER
Organizational User
    Wait Until Page Contains        Login Account
    Input Text              //*[@id="login-component"]/form/div[1]/input       ${org_user}
    Input Text              //*[@id="login-component"]/form/div[2]/input       ${ou_password}

Login Button
    Click element           //*[@id="login-component"]/form/div[3]/button

Dashboard 
    Sleep    5
    Page Should Contain        Dashboard
    Sleep    5

Batch Record
    Click element           xpath=/html/body/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/a[2]
    Page Should Contain    Batch Records    Batch Key
    Sleep    5

User Management
    Click element           xpath=/html/body/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/a[3]        
    Page Should Contain    User Management    ian@nxtform.com
    Sleep    5

Organization List
    Click Link              xpath=/html/body/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/a[4]
    Page Should Contain    Organization List    NXT Form
    Sleep    5

Checks Management
    Click Link        xpath=/html/body/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/a[5]
    Page Should Contain    Checks Management    Jack Hamilton
    Sleep    5

Invoices
    Click Link        xpath=/html/body/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/a[6]
    Page Should Contain    Invoices    Rem Test Organisation
    Sleep    5

App Settings
    Click Link        xpath=/html/body/div/div[2]/div/div[2]/div[1]/div/div[2]/div/div/a[7]
    Page Should Contain    App Settings    GENERAL SETTINGS
    Sleep    5

Account Settings
    Click Link        xpath=/html/body/div/div[2]/div/div[2]/div[1]/div/div[2]/a[1]
    Page Should Contain    Account Settings
    Sleep    5

