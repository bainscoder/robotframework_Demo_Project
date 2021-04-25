*** Settings ***
Library    SeleniumLibrary
Resource    ../Common.robot

*** Keywords ***
Search for Product
    Enter Product name
    Submit Search


Enter Product name

    input text    css = #twotabsearchtextbox    ${SEARCH_ITEM}

Submit Search
    click button    css = #nav-search-submit-button