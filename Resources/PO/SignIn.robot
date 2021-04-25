*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded

    wait until page contains    Amazon Sign In
    element text should be    css= .a-section .a-spacing-small:nth-child(1)     Sign-In