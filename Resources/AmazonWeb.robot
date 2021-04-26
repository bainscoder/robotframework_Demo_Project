*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/CartPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResult.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot

*** Keywords ***

User should be able to search for Products

    LandingPage.Load Amazon website
    LandingPage.Verify Page Loaded
    TopNav.Search for Product
    SearchResult.Verify Search Completed

User should be able to select Product from Search Results

    SearchResult.Click Product Link
    Product.Verify Page Loaded

User should be able to add Product to Cart

    Product.Add to Cart
    CartPage.Verify Product Added

User should be able asked to sign-in to Checkout

    CartPage.Proceed to Buy
    SignIn.Verify Page Loaded
