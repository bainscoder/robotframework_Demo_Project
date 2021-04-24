*** Settings ***
Documentation    This is first test
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
User navigate to Amazon site (Simple test script)
    [Documentation]    This is first demo test
    [Tags]  Smoke
    open browser    https://www.amazon.com  chrome
    Sleep   3s
    close browser

User should search and select product and directed to sign in (Keywork based test script)
    [Documentation]    This is second demo test
    [Tags]    Sanity

   Begin Web Test
   Search for Products
   Select Product from Search Results
   Add Product to Cart
   Begin Checkout
   End Web Test


*** Keywords ***

Begin Web Test

    open browser    about:blank     chrome

Search for Products

    go to    https://www.amazon.in
    wait until page contains   Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in
    input text    css = #twotabsearchtextbox    Logitech B170 Wireless Mouse
    click button    css = #nav-search-submit-button
    wait until page contains    Logitech B170 Wireless Mouse

Select Product from Search Results

    click image    Sponsored Ad - Logitech M337 Wireless Mouse, Bluetooth, 1000 DPI Laser Grade Optical Sensor, 10-Month Battery Life, PC/Mac...
    @{WindowHandles}=   get window handles
    sleep   5s
    Switch Window   ${WindowHandles}[1]

Add Product to Cart

    wait until page contains    Buy Now
    click button    css= #buy-now-button

Begin Checkout

    wait until page contains    Amazon Sign In

End Web Test

    close browser