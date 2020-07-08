*** Settings ***
Documentation               ORANGE - TEST
Library                     Selenium2Library


*** Variables ***
${browser}                  chrome

# DEV ENVIRONMENT
${url_dev}                  https://dev.nxtchecks.nxtform.com/
${url_stg}                  https://stg.nxtchecks.nxtform.com/

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

