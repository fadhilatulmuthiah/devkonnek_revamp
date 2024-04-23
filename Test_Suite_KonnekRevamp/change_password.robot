*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    Screenshot
Library    Process
Library    RequestsLibrary
Resource    ../Keywords/variables.robot
Resource    ../Resources/steps.robot

*** Test Cases ***
#Positive Case
TC_Save Change Password
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Change Password
    Klik Button Change Password
    Input Text Current Password
    Input Text New Password
    Input Text Confirm New Password
    Klik Button Save Change Password

TC_Cancel Change Password
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Change Password
    Klik Button Change Password
    Input Text Current Password
    Input Text New Password
    Input Text Confirm New Password
    Klik Button Cancel Change Password
TC_Invalid Change Password
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Change Password
    Klik Button Change Password
    Input Text Invalid Current Password 
    Input Text New Password
    Input Text Confirm New Password
    Klik Button Cancel Change Password

