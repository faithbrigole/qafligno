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
    Open Browser            ${url}      ${browser}
    Maximize Browser Window
    Sleep   5

# LOGIN AS SUPERADMIN
Superadmin Account
    Input text              //*[@id="login-component"]/form/div[1]/input       ${super_admin}
    Input text              //*[@id="login-component"]/form/div[2]/input       ${sa_password}

# LOGIN AS COMPANY ADMIN
Organizational Admin
    Input text              //*[@id="login-component"]/form/div[1]/input       ${org_admin}
    Input text              //*[@id="login-component"]/form/div[2]/input       ${oa_password}

# LOGIN AS COMPANY USER
Organizational User
    Input text              //*[@id="login-component"]/form/div[1]/input       ${org_user}
    Input text              //*[@id="login-component"]/form/div[2]/input       ${ou_password}

Login Button
    Click element           //*[@id="login-component"]/form/div[3]/button

Dashboard 
    Sleep    5
    Page Should Contain        Dashboard



