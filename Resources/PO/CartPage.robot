*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Added
    wait until page contains    Added to Cart

Proceed to Buy
    click link    css= #hlb-ptc-btn-native
