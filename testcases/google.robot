*** Settings ***
Library         Selenium2Library

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
