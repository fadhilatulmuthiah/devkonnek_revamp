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
TC_Create New Division
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Division
