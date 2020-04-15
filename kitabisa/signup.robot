*** Settings ***
Library   Selenium2Library    timeout=10   
Library   OperatingSystem
***Variables***
${Browser}      Chrome
${SiteUrl}      https://kitabisa.com/register
${Delay}        5s
${FullName}     Ario Triguna
${Email}        aryotriguna3@gmail.com

*** Keywords ***
Open Page
    Open Browser    ${SiteUrl}   Chrome
    Maximize Browser Window

Input Field Signup
    Selenium2Library.Input Text    id:register_inputfield_wa-email    ${Email}
    Selenium2Library.Input Text    id:register_inputfield_nama-lengkap        ${FullName}        
    Selenium2Library.Click Button  id:register_button_daftar
    
***Test Cases***
Midtrans Signup

    Open Page
    Click Signup Button
    Input Field Signup