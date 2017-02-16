*** Settings ***
Library         Selenium2Library
Test Setup      Go to homepage
Test Teardown   Close Browser

*** Variables ***
${HOMEPAGE}    http://www.google.com
${BROWSER}     chrome

*** Test Cases ***
Visit my personal site and check content
    Go to my personal site and check results    http://www.kanouivirach.com    Barcamp

*** Keywords ***
Go to my personal site and check results
  [Arguments]    ${site}    ${content}
  Go To    ${site}
  Wait Until Page Contains    ${content}

Go to homepage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
