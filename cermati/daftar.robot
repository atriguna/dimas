*** Settings ***
Library   Selenium2Library    timeout=10   
Library   OperatingSystem
***Variables***
${Browser}      Firefox
${SiteUrl}      https://www.cermati.com/gabung
${Delay}        2s
${name}			ario
${lastname}		triguna
${hp}			08170150500
${email}		aryotriguna3@gmail.com
${pass}			ariodimas1
${pass1}		ariodimas1
${kota}			bekasi

*** Keywords ***
Open Cermati
	Open Browser    ${SiteUrl}   ${Browser}
    Maximize Browser Window
    Sleep	${Delay}

Daftar Akun
	Selenium2Library.Input Text 	id:email		${email}		\\input email
	Sleep 	${Delay}
	Selenium2Library.Input Text 	id:password		${pass}			\\input passwrd
	Sleep 	${Delay}
	Selenium2Library.Input Text 	id:confirm-password		${pass1}	\\input confirm passwrd
	Sleep 	${Delay}
	Selenium2Library.Input Text 	id:first-name		${name}		\\input firsname
	Sleep 	${Delay}
	Selenium2Library.Input Text 	id:last-name 	${lastname}		\\input lastname
	Sleep 	${Delay}
	Selenium2Library.Input Text 	id:mobile-phone		${hp}		\\input phonenumber
	Sleep 	${Delay}
	Selenium2Library.Input Text 	id:residence-city		${kota}		\\input kota
	Selenium2Library.Wait Until Element Is Visible		xpath:html/body/div[3]/div/div/div[1]/div/div/div[2]/div/div[7]/div/div[2]/div/div[1]
	Selenium2Library.Click Element	xpath:html/body/div[3]/div/div/div[1]/div/div/div[2]/div/div[7]/div/div[2]/div/div[1]
	Sleep 	${Delay}
	Selenium2Library.Click Button 	xpath:html/body/div[3]/div/div/div[1]/div/div/div[2]/div/div[9]/Button
		    
***Test Cases***	
Cermati

    Open Cermati
    Daftar Akun