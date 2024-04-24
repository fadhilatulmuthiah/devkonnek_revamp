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
    Klik Create New Division
    Input Division Name
    Klik Button Save Divisi
    Close Browser
TC_Cancel Divisi
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Division
    Klik Create New Division
    Input Division Name
    Klik Button Cancel Divisi
    Close Browser
TC_Edit Divisi
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Division
    Klik Button Edit Divisi
    Klik Input Field Division Name
    Input Division Name
    Klik Button Cancel Divisi
    Close Browser
TC_Cancel Delete Divisi
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Division
    Klik Button Delete Divisi
    Klik Button Cancel Delete Divisi
    Close Browser
TC_YES Delete Divisi
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Division
    Klik Button Delete Divisi
    Klik Button Yes Delete Divisi
    Close Browser
TC_Go To Page Divisi
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Division
    Input Go To Pagination Divisi
    Close Browser
