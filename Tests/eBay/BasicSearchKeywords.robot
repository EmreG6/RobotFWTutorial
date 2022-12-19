*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Start TestCase
    Verify Search Results
    Finish TestCase

*** Keywords ***

Start TestCase
    Open Browser  https://www.ebay.com  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  RETURN
    Page Should Contain  results for mobile

Finish TestCase
    Close Browser