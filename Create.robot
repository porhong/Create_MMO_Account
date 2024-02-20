*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary


*** Variables ***
${browser}              ff
${url_Create_Mail}      https://webpanel.badbotsolution.xyz/badbot
${email_account}        porhong
${email_password}       cAmbodi@168c
${name}=                FakerLibrary.Words


*** Test Cases ***
Start
    Create Email Account


*** Keywords ***
Create Email Account
    Open Browser    ${url_Create_Mail}    ${browser}
    Wait Until Element Is Visible    //div[text()='Badbot Panel']
    Input Text    //input[@id='username']    ${email_account}
    Input Text    //input[@id='password']    ${email_password}
    Sleep    3seconds
    Click Element    (//button[normalize-space()='Login'])[1]
    Sleep    3seconds
    Click Element    /html/body/div[3]/span[1]/a
    Wait Until Element Is Visible    (//div[@onclick="bt.soft.set_lib_config('mail_sys','Mail Server')"])[1]
    Click Element    (//div[@onclick="bt.soft.set_lib_config('mail_sys','Mail Server')"])[1]
    Wait Until Element Is Visible    (//a[normalize-space()='User'])[1]
    Click Element    (//a[normalize-space()='User'])[1]
    Wait Until Element Is Visible    (//button[normalize-space()='Add user'])[1]
    Click Element    (//button[normalize-space()='Add user'])[1]
    Wait Until Element Is Visible    (//input[@placeholder='Enter the username please'])[1]
    Input Text    (//input[@placeholder='Enter the username please'])[1]    ${name}+".mmo"
