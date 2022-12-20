*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Verify Search Results
    Input Text  xpath://*[@id="gh-ac"]  mobile
    Press Keys  xpath://*[@id="gh-btn"]  RETURN
    Page Should Contain  results for mobile

Filter results by condition
    Click Element  //span[@class='filter-menu-button__button-text' and text()='Condition']
    Click Element  //span[@class='filter-menu-button__text' and text()='New']

Verify filter results
    Element Should Contain  //div[text()='New']  New
