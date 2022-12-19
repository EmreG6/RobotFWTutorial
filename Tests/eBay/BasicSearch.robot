*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    #Start TestCase
    Open Browser  https://www.ebay.com  chrome
# you can easily change the browser by texting firefox, safari etc
    Maximize Browser Window

    #Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  RETURN
# Other Selectors
#    Press Keys  id:gh-btn  RETURN
#    Press Keys  name:this-is-name  RETURN
#    Press Keys  css:#gh-btn  RETURN
    Page Should Contain  results for mobile

    #Finish TestCase
    Close Browser

# It's very imprortant that there should be two space gap between the keywords on syntax!!!

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