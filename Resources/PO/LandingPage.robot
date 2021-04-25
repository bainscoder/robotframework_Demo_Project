*** Settings ***
Library    SeleniumLibrary
Resource    ../Common.robot

*** Keywords ***
Load Amazon website
    go to    ${START_URL}

Verify Page Loaded
    wait until page contains   Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in