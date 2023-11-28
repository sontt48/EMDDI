***Keywords***
Add new employee follow test data successfully
    [Arguments]    ${name}    ${id}    ${departmentid}
    Employee_management_page.Click add employee card button
    Employee_management_page.Input card name    ${name}
    Employee_management_page.Input employee Id    ${id}
    Employee_management_page.Select department   ${departmentid}
    Employee_management_page.Select expired date
    Employee_management_page.Select only XanhSM Taxi
    Employee_management_page.Click Add button 
    Employee_management_page.Verify notification add successfully is appeared 

Delete the newest card successfully
    Employee_management_page.Click delete button at the first row in the table 
    Employee_management_page.Click Delete button in modal 
    Employee_management_page.Click accept button in modal 
    Employee_management_page.Verify notification delete successfully is appeared 
 