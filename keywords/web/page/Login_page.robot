***Variables***
&{dict_login_page}
...    txt_username=xpath=//input[@id="username"]
...    txt_password=xpath=//input[@id="password"]
...    btn_submit=xpath=//button[@type="submit"]

***Keywords***
Input username
    [Arguments]    ${username}
    web_common_keywords.Input text into textbox     ${dict_login_page.txt_username}    ${username}

Input password
    [Arguments]    ${password}
    web_common_keywords.Input text into textbox     ${dict_login_page.txt_password}    ${password}

Click submit button 
    web_common_keywords.Click element    ${dict_login_page.btn_submit}