***Variables***
&{dict_home_page}
...    btn_employee_card=xpath=//a[contains(text(),'Thẻ - Nhân viên')]

***Keywords***
Go to employee management page 
    web_common_keywords.Click element       ${dict_home_page.btn_employee_card}
