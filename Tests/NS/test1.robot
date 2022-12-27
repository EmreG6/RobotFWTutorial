*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn

*** Variables ***
${price}  €10,14

*** Test Cases ***
Scenario : Plan a trip between AMS-Rot and verify the price is 10.14

    Given User goes NS Website
    Then User accepts cookies
    Then User plans a trip between Amsterdam and Rotterdam
    And User checks price

*** Keywords ***
User goes NS Website
    Open Browser  https://www.ns.nl/  chrome
User accepts cookies
    Click Button  xpath=/html/body/div[2]/div/div[2]/div/div/button[4]
User plans a trip between Amsterdam and Rotterdam
    Input Text  id:location-input-FROM-POSITIONED  Amsterdam Centraal
    Wait Until Page Contains Element    css:div.rppb-location-from>rio-pbm-location-container>div>rio-pbm-location-input-positioned>div>rio-pbm-location-input-suggestions
    Press Keys  None    RETURN
    Input Text  id:location-input-TO-POSITIONED  Rotterdam Centraal
    Wait Until Page Contains Element    css:div.rppb-location-to>rio-pbm-location-container>div>rio-pbm-location-input-positioned>div>rio-pbm-location-input-suggestions
    Press Keys  None    RETURN
    Click Button  css:button.rppb-plan-button

User checks price
    Wait Until Page Contains Element    css:.rio-jp-trip-dal-voordeel-price-container>rio-jp-labelled-price>.labelled-price>.rio-jp-labelled-price-amount
    ${actual_price}=    Get Text    css:.rio-jp-trip-dal-voordeel-price-container>rio-jp-labelled-price>.labelled-price>.rio-jp-labelled-price-amount
    Should Be Equal     ${actual_price}     ${price}


