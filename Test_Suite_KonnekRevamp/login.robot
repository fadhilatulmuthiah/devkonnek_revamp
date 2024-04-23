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
TC_Login
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Close Browser
TC_Login_Company ID Blank
    Open browser Staging
    Input Company ID Blank, Email, Password
    Klik Button Login Company Blank
    Close Browser
TC_Login_Email Blank
    Open browser Staging
    Input Company ID, Email Blank, Password
    Klik Button Login Email Blank
    Close Browser
TC_Login_Password Blank
    Open browser Staging
    Input Company ID, Email, Password Blank
    Klik Button Login Password Blank
    Close Browser
TC_Login_All Blank
    Open browser Staging
    Input Company ID Blank, Email Blank, Password Blank
    Klik Button Login All Blank
    Close Browser