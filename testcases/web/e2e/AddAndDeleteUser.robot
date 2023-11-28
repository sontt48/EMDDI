***Settings***
Resource    ${CURDIR}/../../../import/web_import.robot

***Test Cases***
Verify admin can create new user and delete that user
    Open Browser and go to url    ${url}  
    Login_features.Login by admin account    ${admin.username}    ${admin.password}
    Home_page.Go to employee management page
    Employee_management_features.Add new employee follow test data successfully    ${new_employee.name}     ${new_employee.id}     ${new_employee.departmentid} 
    Employee_management_features.Delete the newest card successfully