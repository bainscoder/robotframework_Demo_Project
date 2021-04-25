*** Settings ***
Library    SeleniumLibrary
Resource    ../Common.robot

*** Keywords ***
Verify Search Completed
    wait until page contains    results for "${SEARCH_ITEM}"

Click Product Link
    click image    Sponsored Ad - Logitech M337 Wireless Mouse, Bluetooth, 1000 DPI Laser Grade Optical Sensor, 10-Month Battery Life, PC/Mac...