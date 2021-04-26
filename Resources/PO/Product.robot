*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_TO_CART_BUTTON} =   css= #addToCart_feature_div .a-button-text


*** Keywords ***
Verify Page Loaded

    @{WindowHandles}=   get window handles
    sleep   5s
    Switch Window   ${WindowHandles}[1]
    wait until page contains    Back to results
    element text should be     css= #showing-breadcrumbs_div .a-list-item #breadcrumb-back-link    Back to results

Add to Cart

    element text should be   css= #addToCart_feature_div .a-button-text     Add to Cart
    click button   xpath=//*[@id="add-to-cart-button"]