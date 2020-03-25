*** Settings ***
Library   Selenium2Library    timeout=10   
Library   OperatingSystem
***Variables***
${Browser}      Chrome
${SiteUrl}      https://demo.midtrans.com/
${SiteUrl1}     https://gmail.com/
${Delay}        5s
${Delay1}       3s
${Business}     Testing
${FullName}     Ario Triguna
${Email}        aryotriguna3@gmail.com
${website}      #
${Telepon}      08170156872
${Password}     Ariodimas123
${ConfirmPass}  Ariodimas123     

*** Keywords ***
Open Page
    Open Browser    ${SiteUrl}   Chrome
    Maximize Browser Window

Click Signup Button
    Selenium2Library.Wait Until Element Is Visible    xpath://*[@id="container"]/div/div/div[1]/div[2]/div/div/div[4]/a    timeout=10
    Sleep   ${Delay}
    Selenium2Library.Click Element    xpath://*[@id="container"]/div/div/div[1]/div[2]/div/div/div[4]/a
    Sleep   ${Delay}

Input Field Signup
    Switch Window   locator=NEW
    Selenium2Library.Input Text    id:user_merchant_name    ${Business}
    Selenium2Library.Input Text    id:user_full_name        ${FullName}        
    Selenium2Library.Input Text    id:user_email            ${Email}
    Selenium2Library.Input Text    id:user_url              ${website}
    Selenium2Library.Input Text    id:user_phone            ${Telepon}
    Selenium2Library.Input Text    id:user_password         ${Password}
    Selenium2Library.Input Text    id:user_password_confirmation    ${ConfirmPass}
    Selenium2Library.Click Button  id:button_id
    
***Test Cases***
Midtrans Signup

    Open Page
    Click Signup Button
    Input Field Signup