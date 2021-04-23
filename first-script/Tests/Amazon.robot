*** Settings ***
Documentation    This is first test
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User must sign in to check out
    [Documentation]    This is first test
    [Tags]  Smoke
    open browser    https://www.amazon.com  firefox
    Sleep   3s
    close browser




*** Keywords ***
