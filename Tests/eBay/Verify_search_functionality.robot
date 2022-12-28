*** Settings ***
Documentation    Basic Search Functionality
Resource    Resources/CommonFunctionality.robot
Resource    Resources/PageObjects/HeaderPage.robot
Resource    Resources/PageObjects/SearchResultsPage.robot

Test Setup    CommonFunctionality.Start TestCase
Test Teardown  CommonFunctionality.Finish TestCase

*** Variables ***

*** Test Cases ***
Verify basic search functionality
    [Documentation]    This test case verify the basic search
    [Tags]    Functional

    HeaderPage.Input Search Text and Click Search
    SearchResultsPage.Verify Search Results

Verify advanced search functionality
    [Documentation]    This test case verifies the advanced search
    [Tags]    Functional

    HeaderPage.Click on Advanced Search Link

