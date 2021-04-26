*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PROCEED_TO_BUY_BUTTON} =    css= .huc-width-fit-content .a-row #hlb-ptc-btn .a-button-inner .a-button-text.a-text-center


*** Keywords ***
Verify Product Added
    wait until page contains    Added to Cart

Proceed to Buy
    sleep  5s
    element text should be      css= #hlb-ptc-btn-native    Proceed to Buy (1 item)
    click link    ${PROCEED_TO_BUY_BUTTON}
