*** Settings ***
Library     Selenium2Library
Suite Setup     Go to homepage
Suite Teardown  Close All Browsers

*** Variables ***
${HOMEPAGE}     https://demo.midtrans.com/
${BROWSER}      chrome
${user}         .com
${pass}         password

*** Test Cases ***
Open Browser To Sign up Page
    Input Business Brand    abc@example.com
    Input Fullname    password
    Input Email 
    Input Instagram
    Input Telepon
    Input Password
    Input Confirm Pass
    Submit Credentials

*** Keywords ***
Open Midtras Page
    Maximize Browser Window
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Page Should Be Open

Go to Button Singup
    Selenium2Library.Click Element    xpath://div[@id="container"]