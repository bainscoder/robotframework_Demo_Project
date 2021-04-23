*** Settings ***
Documentation    This is first test
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User navigate to Amazon site
    [Documentation]    This is first demo test
    [Tags]  Smoke
    open browser    https://www.amazon.com  firefox
    Sleep   3s
    close browser

User should search and select product and directed to sign in
    [Documentation]    This is second demo test
    [Tags]    Sanity

    open browser    https://www.amazon.in  firefox
    wait until page contains   Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in
    input text    css = #twotabsearchtextbox    Logitech M510 Wireless
    click button    css = #nav-search-submit-button
    wait until page contains    Logitech Pebble M350 Wireless Mouse
    click image    Sponsored Ad - Logitech Pebble M350 Wireless Mouse with Bluetooth or USB - Silent, Slim Computer Mouse with Quiet Click fo...
    @{WindowHandles}=   get window handles
    sleep   5s
    Switch Window   ${WindowHandles}[1]
    wait until page contains    Buy Now
    click button    css= #buy-now-button
    wait until page contains    Amazon Sign In
    close browser



*** Keywords ***
