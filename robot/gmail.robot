*** Settings ***
Library   Selenium2Library    timeout=10   
Library   OperatingSystem
***Variables***
${Browser}      Chrome
${SiteUrl1}     https://gmail.com/
${Delay}        5s

*** Keywords ***
Open Page
    Open Browser    ${SiteUrl}   ${Browser}
    Maximize Browser Window

Login Button
    Selenium2Library.Click Button  xpath:/html/body/div[1]/div[1]/div[5]/ul/li[2]/a
    
***Test Cases***
Open Gmail Confirmation
    Open Page
    Login Button