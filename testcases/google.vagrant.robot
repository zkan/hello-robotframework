*** Settings ***
Resource         ../resources/common_res.txt
Library          XvfbRobot
Test Setup       Start Virtual Display
Test Teardown    Close Browser


*** Variables ***
${URLwelcome}    https://www.google.com
${BROWSER}       firefox


*** Keywords ***
Open Google
    Open Browser    ${URLwelcome}    ${BROWSER}


*** Test Cases ***
Google for robot framework
    Open Google
    Input Text    q    robot framework
    Submit Form
