***Keywords***
Open Browser and go to url  
    [Arguments]    ${url}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window   

Input text into textbox 
    [Arguments]    ${locator}    ${value}
    SeleniumLibrary.Wait Until Element Is Visible 	 locator=${locator} 	 timeout=None 	 error=None
    SeleniumLibrary.Input Text 	 locator=${locator}  	 text=${value} 	 clear=True

Click element  
    [Arguments]    ${locator}
    SeleniumLibrary.Wait Until Element Is Visible 	 locator=${locator} 	 timeout=None 	 error=None
    SeleniumLibrary.Click Element 	 locator=${locator}  	 modifier=False 	 action_chain=False

Select value from dropdown list 
    [Arguments]    ${locator}    ${value}
    SeleniumLibrary.Wait Until Element Is Visible 	 locator=${locator} 	 timeout=None 	 error=None
    Select From List By Label    ${locator}     ${value}

Click Element Using Javascript
    [Documentation]    click element using javascript function 'click'
    [Arguments]    ${locator}
    ${elem}=    SeleniumLibrary.Get Web Elements    ${locator}
    ${s2l}=    Get Library Instance    SeleniumLibrary
    ${driver}     Evaluate    $s2l._current_browser() if "_current_browser" in dir($s2l) else $s2l._drivers.current
    Call Method    ${driver}    execute_script    arguments[0].click();    ${elem}[0]