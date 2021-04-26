*** Settings ***
Library    SeleniumLibrary
Resource    ../Common.robot

*** Variables ***
${SEARCH_FIELD} =   css = #twotabsearchtextbox
${SEARCH_BUTTON} =  css = #nav-search-submit-button


*** Keywords ***
Search for Product
    Enter Product name
    Submit Search


Enter Product name

    input text    ${SEARCH_FIELD}    ${SEARCH_ITEM}

Submit Search
    click button    ${SEARCH_BUTTON}