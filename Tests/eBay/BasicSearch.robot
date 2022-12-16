*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

    Input Text  //*[@id="gh-ac"]  mobile
    Press Keys  //*[@id="gh-btn"]  RETURN
    Page Should Contain  results for mobile

    Close Browser

# It's very imprortant that there should be two space gap between the keywords on syntax!!!

*** Keywords ***
