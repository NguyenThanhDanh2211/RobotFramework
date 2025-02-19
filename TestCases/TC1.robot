*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.nopcommerce.com/
${browser}    chrome

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    LoginToApplication
    Close Browser

*** Keywords ***
loginToApplication
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email    pavanoltraining@gmail.com
    Input Text    id:Password    Test@123
    Click Element    xpath://button[normalize-space()='Log in']