*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Insert Testing Data

    log    I am setting up the test data

Begin Web Test

    open browser    about:blank     ${BROWSER}

End Web Test

    close browser

Cleanup Testing Data

    log    I am clearing the test data

*** Variables ***
${BROWSER} =        chrome
${START_URL} =      https://www.amazon.in
${SEARCH_ITEM} =    Logitech B170 Wireless Mouse