*** Settings ***
Resource         ../resources/common_res.txt
Test Teardown    Close Browser


*** Variables ***
${URLwelcome}    https://www.google.com
${BROWSER}       chrome


*** Keywords ***
Open Google
    Open Browser    ${URLwelcome}    ${BROWSER}


*** Test Cases ***
Google for robot framework
    Open Google
    Input Text    q    asian institute of technology
    Submit Form
    Page Should Contain    Pronto
