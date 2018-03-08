*** Settings ***
Resource         ../resources/common_res.txt
Test Setup       Go to homepage
Test Teardown    Close Browser


*** Variables ***
${HOMEPAGE}    https://www.google.com
${BROWSER}     chrome


*** Keywords ***
Go to my personal site and check results
  [Arguments]    ${site}    ${content}
  Go To    ${site}
  Page Should Contain    ${content}

Go to homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}


*** Test Cases ***
Visit my personal site and check content
    Go to my personal site and check results    https://www.kanouivirach.com    Pronto Tools
