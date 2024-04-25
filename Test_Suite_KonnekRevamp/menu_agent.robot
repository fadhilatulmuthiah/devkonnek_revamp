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
TC_Pencarian Agent - Status 
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Settings Agent - Status
    Input Pencarian Agent - Status
    Close Browser
TC_Filtering Agent - Status 
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Settings Agent - Status
    Klik Button Filtering Agent - Status
    Klik Button Checkbox Status Filter Preference 
    Klik Button Search Status Filter Preference 
    Close Browser
TC_Reset Filtering Agent - Status 
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login 
    Klik Settings Agent - Status
    Klik Button Arrow Pagination Agent - Status 

#Agent - Performance
TC_Agent Performance 
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login
    Klik Agent - Performance 
    Input Pencarian Agent - Performance
    Klik Button 30 Days Agent - Performance
    Klik Button 7 Days Agent - Performance 
    Klik Start Date Agent - Performance
    Klik To Date Agent - Performance
    Klik Button Go Date Agent - Performance

#Agent - History
TC_Agent History
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login
    Klik Agent - History
    Input Pencarian Agent - History
    Klik Button 30 Days Agent - History
    Klik Button 7 Days Agent - History
    Klik Button Filtering Agent - History
    Klik Start Date Agent - History
    Klik To Date Agent - History 
    Klik Button Dropdown ' Agent ' Filter Preference 
    Klik Button Dropdown ' Reason ' Filter Preference
    Klik Button Dropdown ' Type ' Filter Preference 
    Klik Button Search Date Agent - History
    Close Browser
#Agent - Availability
TC_Agent Availability
    Open browser Staging
    Input Company ID, Email, Password
    Klik Button Login
    Klik Agent - History
    Klik Tab Agent - Availability
    Klik Button 30 Days Agent - Availability
    Klik Button 7 Days Agent - Availability
    Klik Button Filtering Agent - Availability
    Klik Start Date Agent - Availability
    Klik To Date Agent - Availability
    Klik Button Dropdown ' Agent ' Availability Filter Preference 
    Klik Button Search Date Agent - Availability
    Input Pencarian Agent - Availability
    Close Browser