*** Settings ***
Documentation     Tenant Application Form
# Suite Teardown    Close Browser
Library             Selenium2Library
Resource            ../test cases/sa_download_batch_records.robot

*** Test Cases ***
Scenario: Full Pass Testing
    Superadmin Pass Testing
    Orgadmin Pass Testing
    Orguser Pass Testing

*** Keywords ***
Superadmin Pass Testing
    Resource sa_download_batch_records

Orgadmin Pass Testing


Orguser Pass Testing



