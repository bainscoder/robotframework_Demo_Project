*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded

    @{WindowHandles}=   get window handles
    sleep   5s
    Switch Window   ${WindowHandles}[1]
    wait until page contains    Back to results

Add to Cart
    click button    css= #add-to-cart-button