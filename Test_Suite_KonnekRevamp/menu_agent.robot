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
TC_Agent - Status Search
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Agent
    Klik Sub Menu Agent - Status
    Input Pencarian Agent Status
    # Klik Button Filtering Agent Status 
    # Klik Checkbox Status - Select All
    # Klik Button Search Filtering Agent Status
    Close Browser
TC_Agent - Filtering Status 
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Agent
    Klik Sub Menu Agent - Status
    # Input Pencarian Agent Status
    Klik Button Filtering Agent Status 
    Klik Checkbox Status - Select All
    Klik Button Search Filtering Agent Status
    Close Browser
TC_Agent - Pagination Agent Status 
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Agent
    Klik Sub Menu Agent - Status
    Klik Button Arrow Pagination Agent Status
    Close Browser
#Menu Agent - Performance
TC_Agent - Agent - Perfomarnce 
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Agent
    Klik Sub Menu Agent - Performance
    Klik Button 30 Days Agent - Performance
    Klik Button 7 Days Agent - Performance 
    Input Pencarian Agent - Performance
    Klik Start Date Agent - Performance 
    Klik To Date Agent - Performance 
    Klik Button Go Agent - Performance 
    Close Browser
#Menu Agent - History Request
TC_Agent - History
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Menu Agent
    Klik Sub Menu Agent - History 
    Klik Button 30 Days Agent - History
    Klik Button 7 Days Agent - History
    Input Pencarian Agent - History
    Klik Button Filtering Agent - History
    Klik Button Start Date Filter Preference Agent - History
    Klik Button To Date Filter Preference Agent - History
    Klik Button Dropdown Agent Filter Preference 
    Klik Button Search Filter Preference Agent - History
    Close Browser





