***Keywords***
Login by admin account 
    [Arguments]    ${username}    ${password}
    Login_page.Input username    ${username}
    Login_page.Input password    ${password}
    Login_page.Click submit button