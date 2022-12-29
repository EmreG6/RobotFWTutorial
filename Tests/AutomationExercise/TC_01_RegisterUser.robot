#Register User
 #1. Launch browser
 #2. Navigate to url 'http://automationexercise.com'
 #3. Verify that home page is visible successfully
 #4. Click on 'Signup / Login' button
 #5. Verify 'New User Signup!' is visible
 #6. Enter name and email address
 #7. Click 'Signup' button
 #8. Verify that 'ENTER ACCOUNT INFORMATION' is visible
 #9. Fill details: Title, Name, Email, Password, Date of birth
 #10. Select checkbox 'Sign up for our newsletter!'
 #11. Select checkbox 'Receive special offers from our partners!'
 #12. Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
 #13. Click 'Create Account button'
 #14. Verify that 'ACCOUNT CREATED!' is visible
 #15. Click 'Continue' button
 #16. Verify that 'Logged in as username' is visible
 #17. Click 'Delete Account' button
 #18. Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    WebDriver

*** Variables ***


*** Test Cases ***
Scenario: Register User
    Given Launch browser and Navigate to url 'http://automationexercise.com'
    Then Verify that home page is visible successfully
    Then Click on 'Signup / Login' button
    Then Verify 'New User Signup!' is visible
    Then Enter name and email address
    Then Click 'Signup' button
    Then Verify that 'ENTER ACCOUNT INFORMATION' is visible
    And Fill details: Title, Name, Email, Password, Date of birth
    Then Select checkbox 'Sign up for our newsletter!'
    Then Select checkbox 'Receive special offers from our partners!'
    Then Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Then Click 'Create Account button'
    Then Verify that 'ACCOUNT CREATED!' is visible
    Then Click 'Continue' button
    Then Verify that 'Logged in as username' is visible
    Then Click 'Delete Account' button
    Then Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button

*** Keywords ***
Launch browser and Navigate to url 'http://automationexercise.com'
    Open Browser  http://automationexercise.com  chrome
    Maximize Browser Window

Verify that home page is visible successfully
    Page Should Contain Element  css:header[id='header'] li:nth-child(1) a:nth-child(1)
    #Alternative locator --->    xpath://a[normalize-space()='Home']

Click on 'Signup / Login' button
    Click Element  css:i.fa.fa-lock

Verify 'New User Signup!' is visible
    Page Should Contain Element    css:div.signup-form

Enter name and email address
    Input Text    xpath://input[@placeholder='Name']  Emre Tests
    Input Text    xpath://input[@data-qa='signup-email']  emre.tests@yandex.com

Click 'Signup' button
    Click Element    xpath://button[normalize-space()='Signup']

Verify that 'ENTER ACCOUNT INFORMATION' is visible
    Page Should Contain Element    xpath://b[normalize-space()='Enter Account Information']

Fill details: Title, Name, Email, Password, Date of birth
    Click Element  css:#id_gender1
    Input Text    css:#password  Emre1234567890
#    Set Selenium Speed    3 seconds
    Select From List By Index  css:#days  30
    Select From List By Value  css:#months  1
    Select From List By Value  css:#years  1990
#    Set Selenium Speed    3 seconds

Select checkbox 'Sign up for our newsletter!'
    Click Element    css:#newsletter

Select checkbox 'Receive special offers from our partners!'
     Click Element    css:#optin

Fill details: First name, Last name, Company, Address, Address2, Country, State, City, Zipcode, Mobile Number
    Input Text  css:#first_name  Emre
    Input Text  css:#last_name  Tests
    Input Text  css:#company  TestingAll
    Input Text  css:#address1  abc street, 1111, ABC, ABC
    Input Text  css:#address2  abc street, 1111, ABC, ABC
    Select From List By Value    css:#country  United States
    Input Text    css:#state  Texas
    Input Text    css:#city  Austin
    Scroll Element Into View    xpath://button[normalize-space()='Create Account']
    Input Text    css:#zipcode  TX1111
    Input Text    css:#mobile_number  901111111111

Click 'Create Account button'
    Click Element    xpath://button[normalize-space()='Create Account']

Verify that 'ACCOUNT CREATED!' is visible
    Page Should Contain Element    css:#form

Click 'Continue' button
    Click Element  xpath://a[@class='btn btn-primary']

Verify that 'Logged in as username' is visible
    Page Should Contain Element  xpath://header[@id='header']//li[1]//a[1]

Click 'Delete Account' button
    Click Element  xppath://a[normalize-space()='Delete Account']

Verify that 'ACCOUNT DELETED!' is visible and click 'Continue' button
    Page Should Contain Element    xpath://b[normalize-space()='Account Deleted!']


