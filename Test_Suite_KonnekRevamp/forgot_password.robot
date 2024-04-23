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
TC_Forgot Password
    Open browser Staging
    Klik Button Forgot Password
    Input Company ID
    Input Email
    Klik Button Submit Forgot Password
#Negative Case
TC_Email Invalid
    Open browser Staging
    Klik Button Forgot Password
    Input Company ID
    Input Email Invalid
    Klik Submit Forgot Password
    Close Browser
TC_Company Invalid
    Open browser Staging
    Klik Button Forgot Password
    Input Company ID Invalid
    Input Email
    Klik Submit Forgot Password
    Close Browser