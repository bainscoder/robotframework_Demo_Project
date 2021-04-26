*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =   css= .a-section .a-spacing-small:nth-child(1)


*** Keywords ***
Verify Page Loaded

    wait until page contains    Amazon Sign In
    element text should be   ${SIGNIN_MAIN_HEADING}     Sign-In