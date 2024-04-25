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
TC_Create Category
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Settings Category
    Input Pencarian Category
    Klik Button Create New Category
    Input Name Category 
    Input Description category
    Klik Button Save Category
    #Close Browser
TC_Cancel Create Category
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Settings Category
    Input Pencarian Category
    Klik Button Create New Category
    Input Name Category 
    Input Description category
    Klik Button Cancel Category
    Close Browser
TC_Edit Category
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Settings Category
    Klik Button Edit Category
    Klik Button Save Edit Category
    #Close Browser
TC_Cancel Edit Category
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Settings Category
    Klik Button Edit Category
    Klik Button Cancel Edit Category
    Close Browser