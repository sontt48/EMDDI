***Settings***
Library    SeleniumLibrary
Resource    ${CURDIR}/../keywords/${platform}/common/web_common_keywords.robot
Resource    ${CURDIR}/../keywords/${platform}/page/Login_page.robot
Resource    ${CURDIR}/../keywords/${platform}/page/Home_page.robot
Resource    ${CURDIR}/../keywords/${platform}/page/Employee_management_page.robot

Resource    ${CURDIR}/../keywords/${platform}/features/Login_features.robot
Resource    ${CURDIR}/../keywords/${platform}/features/Employee_management_features.robot
Variables    ${CURDIR}/../testdata/${platform}/testdata.yaml