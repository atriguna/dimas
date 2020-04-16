
*** Keywords ***
Open Kitabisa
	Open Browser    ${SiteUrl}   ${Browser}
    Maximize Browser Window
    Sleep	${Delay}

Donasi
	Selenium2Library.Click Element 	id:horizontal-image-slider-5
	Sleep 	${Delay}
	Selenium2Library.Click Button 	id:campaign-detail_button_donasi-sekarang
	Sleep 	${Delay}
	Selenium2Library.Click Element 	xpath:/html/body/div[1]/main/div[1]/div/label
	Sleep 	${Delay}
	Selenium2Library.Click Element 	xpath:html/body/div[1]/main/div[6]/div[5]/span
	Sleep 	${Delay}
	Selenium2Library.Input Text 	xpath:html/body/div[1]/main/form[2]/div[3]/div[2]/input 	${fullname}
	Sleep 	${Delay}
	Selenium2Library.Input Text 	xpath:html/body/div[1]/main/form[2]/div[3]/div[3]/input 	${hp}
	Sleep 	${Delay}
	Selenium2Library.Click Button 	id:contribute_button_lanjutkan-pembayaran
	Selenium2Library.Wait Until Element Is Visible 	xpath:html/body/div[1]/main/div[8]/a[1]/span
	Selenium2Library.Click Element 	xpath:html/body/div[1]/main/div[8]/a[1]/span
	Sleep 	${Delay}
	Selenium2Library.Click Element 	xpath:html/body/div[1]/main/div[6]/div[3]/button/span
	Sleep 	${Delay}
	    
***Test Cases***
Kitabisa

    Open Kitabisa
    Donasi