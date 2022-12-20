# Pre-Condition/Steps/Post Condition
# 1-Browser is open and eBay.com website is launched
# 1-User clicks on search text box and types in search text "Test Data: mobile"
# 2-Click on search button
# 3-Verify results on the search page
# 4-Filter search results by condition "Test Data:new"
# 5-Verify filter results are displayed as per the selected criteria
# 1-Browser is closed

*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

*** Variables ***

*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies the basic search
    [Tags]  Functional

    Start TestCase
    Verify Search Results
    Filter results by condition
    Verify filter results
    Finish TestCase


