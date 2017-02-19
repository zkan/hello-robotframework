*** Settings ***
Resource         ../resources/common_res.txt
Test Setup       Go to homepage
Test Teardown    Close Browser


*** Variables ***
${HOMEPAGE}    http://localhost:5000/
${BROWSER}     chrome


*** Keywords ***
Go to homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}


*** Test Cases ***
Go to app and see the initial page
    Page Should Contain    Input:
    Page Should Contain    Result: ?
    Page Should Contain Textfield    name=number

Go to app and input 3 then should see Fizz
    Input Text    name=number    3
    Submit Form
    Page Should Contain    Result: Fizz
