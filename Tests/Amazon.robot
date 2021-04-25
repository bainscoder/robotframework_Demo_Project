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
    go to    ${Start_url}
    Sleep   3s

Test-2: User should search and select product and directed to sign in
    [Documentation]    This is second demo test
    [Tags]  Sanity

   AmazonWeb.Search for Products
   AmazonWeb.Select Product from Search Results
   AmazonWeb.Add Product to Cart
   AmazonWeb.Begin Checkout


