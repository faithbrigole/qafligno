*** Settings ***
Documentation               Check Application - Contact Details
Library                     Selenium2Library
Library                     FakerLibrary                
Library                     String


*** Keywords ***
Check if the form is Visible Cotact
    Element Should Contain       xpath=//*[@id="personal-details-section-header"]    Personal Details   


Enter Email Address
    ${email}=                    FakerLibrary.Email
    Input text                   xpath=//*[@id="contact-details-section"]/div[2]/div[1]/div/input             ${email}

Enter Mobile Number
    ${phone}=                    FakerLibrary.Random Number              9
    Input text                   xpath=//*[@id="contact-details-section"]/div[2]/div[2]/div/input            ${phone}