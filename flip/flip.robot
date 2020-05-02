*** Settings ***
Library   Selenium2Library    timeout=10   
Library   OperatingSystem

***Variables***
${Browser}      Chrome
${SiteUrl}      https://flip.id/signup
${Delay}        25s
@{user}			ario triguna  aryotriguna3@gmail.com  88Ario88	08170150589  bekasi barat


*** Keywords ***
Open Flip
	Open Browser    ${SiteUrl}   ${Browser}
    Maximize Browser Window
    

Register
	Selenium2Library.Input Text 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div/form/div/div[1]/input		@{user}[0]
	Selenium2Library.Input Text 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div/form/div/div[2]/input		@{user}[1]
	Selenium2Library.Input Text 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div/form/div/div[3]/input		@{user}[2]
	Selenium2Library.Input Text 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div/form/div/div[5]/input 		@{user}[3]
	Selenium2Library.Click Button 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div/form/button
	Sleep	${Delay}			\\input manual code verification
	Selenium2Library.Click Button 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div[2]/div/form/div/button

Login
	Selenium2Library.Input Text 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div[1]/div/div/form/div/div[1]/input 		@{user}[1]
	Selenium2Library.Input Text 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div[1]/div/div/form/div/div[2]/input 		@{user}[3]
	Selenium2Library.Click Button 	xpath://*[@id="app"]/div/div/div/div/div/div[2]/div/div[1]/div/div/form/button

Modaldatadiri
	Selenium2Library.Wait Until Element Is Visible 	xpath:/html/body/div[3]/div/div/div/div/form/div[1]/div/input
	Selenium2Library.Input Text 	xpath:/html/body/div[3]/div/div/div/div/form/div[1]/div/input 	@{user}[0]
	Selenium2Library.Click Element 	xpath://select[@name="job"]/option[@value="private_employee"]
	Selenium2Library.Click Element 	xpath://select[@name="birthplace"]/option[@value="198"]
	Selenium2Library.Click Element 	xpath://select[@name="birthdate"]/option[@value="15"]
	Selenium2Library.Click Element 	xpath://select[@name="birthmonth"]/option[@value="05"]
	Selenium2Library.Click Element 	xpath://select[@name="birthyear"]/option[@value="1989"]
	Selenium2Library.Click Element 	xpath://select[@name="cityOfResidence"]/option[@value="198"]
	Selenium2Library.Input Text 	xpath:/html/body/div[3]/div/div/div/div/form/div[6]/div/textarea 	@{user}[4]	
	Selenium2Library.Click Button 	xpath:/html/body/div[3]/div/div/div/div/form/div[7]/button
	

***Test Case***
Signup

	Open Flip
	Register
	Login
	Modaldatadiri