***Variables***
&{dict_employee_management_page}
...    btn_add_card=xpath=//button[text()='Thêm thẻ']

&{dict_add_new_employee}
...    txt_card_name=xpath=//input[@id="holderName"]
...    drop_department_list=xpath=//select[@id="departmentId"]
...    txt_employeeId=xpath=//input[@id="employeeId"]
...    txt_expired_date=xpath=//input[@aria-haspopup="dialog"]
...    btn_add_12_months=xpath=//button[@aria-label="Go forward 12 months"]
...    btn_test_date=xpath=//button[@aria-label="Sun Nov 30 2025"]
...    checkbox_add_all_service=xpath=//span[text()='Tất cả dịch vụ']
...    checkbox_add_XanhTaxi_service=xpath=//span[text()='XanhSM Taxi']
...    btn_Add=xpath=//button[text()='Thêm']
...    noti_add_success=xpath=//div[text()='Thêm thẻ thành công']


&{dict_delete_newest_employee}
...    btn_delete_newest_card_table=xpath=//table/tbody/tr[1]/td[last()] 
...    btn_delete_card_modal=xpath=//button[text()="Xóa"]
...    btn_accept_card_modal=xpath=//button[text()="Đồng ý"]
...    noti_delete_success=xpath=//div[text()='Xoá thẻ thành công'] 

***Keywords***
Click add employee card button 
    web_common_keywords.Click element    ${dict_employee_management_page.btn_add_card}

Input card name 
    [Arguments]    ${name}
    web_common_keywords.Input text into textbox    ${dict_add_new_employee.txt_card_name}    ${name}

Select department 
    [Arguments]    ${departmentId}
    web_common_keywords.Select value from dropdown list    ${dict_add_new_employee.drop_department_list}    ${departmentId}

Input employee Id
    [Arguments]    ${id}
    web_common_keywords.Input text into textbox    ${dict_add_new_employee.txt_employeeId}    ${id}

Select expired date  
    SeleniumLibrary.Wait Until Element Is Visible 	 ${dict_add_new_employee.txt_expired_date}
    web_common_keywords.Click element    ${dict_add_new_employee.txt_expired_date}
    SeleniumLibrary.Double Click Element   ${dict_add_new_employee.btn_add_12_months}
    web_common_keywords.Click element    ${dict_add_new_employee.btn_test_date}

Select only XanhSM Taxi 
    web_common_keywords.Click element  ${dict_add_new_employee.checkbox_add_all_service}
    web_common_keywords.Click element  ${dict_add_new_employee.checkbox_add_XanhTaxi_service}

Click Add button 
    web_common_keywords.Click element  ${dict_add_new_employee.btn_Add}

Verify notification add successfully is appeared 
    SeleniumLibrary.Wait Until Element Is Visible  	 ${dict_add_new_employee.noti_add_success}
    SeleniumLibrary.Wait Until Element Is Not Visible 	 ${dict_add_new_employee.noti_add_success}    10s

Click delete button at the first row in the table 
    Execute JavaScript   document.querySelector('.chakra-table__container.css-zipzvv').scrollLeft=4000
    Click element   ${dict_delete_newest_employee.btn_delete_newest_card_table}

Click Delete button in modal 
    web_common_keywords.Click element  ${dict_delete_newest_employee.btn_delete_card_modal}

Click accept button in modal 
    web_common_keywords.Click element  ${dict_delete_newest_employee.btn_accept_card_modal}

Verify notification delete successfully is appeared 
    SeleniumLibrary.Wait Until Element Is Visible  	 ${dict_delete_newest_employee.noti_delete_success}
    SeleniumLibrary.Wait Until Element Is Not Visible 	 ${dict_delete_newest_employee.noti_delete_success}    10s



