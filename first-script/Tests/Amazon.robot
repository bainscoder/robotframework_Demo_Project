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
    [Tags]    Smoke

    open browser    https://www.amazon.com  firefox
    wait until page contains   Amazon.com: Online Shopping for Electronics, Apparel, Computers, Books, DVDs & more
    input text    css = #twotabsearchtextbox    Logitech M510 Wireless
    click button    css = #nav-search-submit-button
    wait until page contains    Logitech M510 Wireless
    click link  css = .a-size-mini.a-spacing-none.a-color-base.s-line-clamp-2 .a-link-normal.a-text-normal:nth-child(1)
    wait until page contains    Back to results
    element text should be    css= .a-button-inner [title="Add to List"]    Add to List
    click link    css= #add-to-wishlist-button-group [name="submit.add-to-registry.wishlist.unrecognized"]
    wait until page contains    Amazon Sign-In
    sleep    5s
    close browser



*** Keywords ***
