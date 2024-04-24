*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Library    Screenshot
Library    Process
Library    RequestsLibrary
Resource    ../Keywords/variables.robot
Resource    ../Resources/steps.robot

*** Test Cases ***

TC_Edit Service Level
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Service Level
    Klik Button Edit Service Level
    Input Start Time Thresold
    Klik Button Save Service Level
    Close Browser
TC_Cancel Service Level
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Service Level
    Klik Button Edit Service Level
    Input Start Time Thresold
    Klik Button Cancel Service Level
    Close Browser
     

