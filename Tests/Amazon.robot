*** Settings ***
Documentation    This is for Demo purpose
Resource         ../Resources/AmazonWeb.robot
Resource         ../Resources/Common.robot

Test Setup        Common.Begin Web Test
Test Teardown     Common.End Web Test


*** Test Cases ***
Test-1: User navigate to Amazon site
    [Documentation]    This is first demo test
    [Tags]  Smoke
    go to    ${START_URL}
    Sleep   3s

Test-2: Verify that user should able to search and select product and directed to sign in
    [Documentation]    This is second demo test
    [Tags]  Sanity

   AmazonWeb.User should be able to search for Products
   AmazonWeb.User should be able to select Product from Search Results
   AmazonWeb.User should be able to add Product to Cart
   AmazonWeb.User should be able asked to sign-in to Checkout


