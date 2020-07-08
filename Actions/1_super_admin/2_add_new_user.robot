*** Settings ***
Documentation               Dashboard super admin
Library                     Selenium2Library
Library                     FakerLibrary
Library                     String


*** Keywords ***
Click New User Button
    Click Button                 xpath=//*[@id="super-admin-dashboard-user-management-component"]/div[1]/div[1]/button 
    Sleep    3
    Element Should Be Visible    xpath=//*[@id="super-admin-dashboard-user-management-component"]/div[2]/div/div/div
    Element Should Contain       xpath=//*[@id="super-admin-dashboard-user-management-component"]/div[2]/div/div/div    User Form

First Name UM
    ${fname}=                    FakerLibrary.First Name
    Input Text                   xpath=//*[@id="new-user-form-component"]/form/div/div[2]/div/input            ${fname}

Last Name UM
    ${lname}=                    FakerLibrary.Last Name
    Input Text                   xpath=//*[@id="new-user-form-component"]/form/div/div[3]/div/input            ${lname}                 

Birth Date UM
    #${date}=                     2020-07-15
    Input Text                   xpath=//*[@id="new-user-form-component"]/form/div/div[4]/div/input           2020-07-15

Gender UM
    ${gender}=                   Evaluate    random.randint(2,3)    random
    Click Element                xpath=//*[@id="new-user-form-component"]/form/div/div[5]/div/div[1]/input
    Click Element                xpath=//*[@id="new-user-form-component"]/form/div/div[5]/div/div[2]/div[1]/div[1]/ul/li[${gender}]

Email Address UM
    ${email}=                    FakerLibrary.Email    
    Input Text                   xpath=//*[@id="new-user-form-component"]/form/div/div[6]/div/input            ${email}                   

Role UM
    ${role}=                     Evaluate    random.randint(2,3)    random   
    Click Element                xpath=//*[@id="new-user-form-component"]/form/div/div[7]/div/div[1]/input
    Click Element                xpath=//*[@id="new-user-form-component"]/form/div/div[7]/div/div[2]/div[1]/div[1]/ul/li[${role}]

