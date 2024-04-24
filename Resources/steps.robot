*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Screenshot
Library    BuiltIn
Library    RequestsLibrary
# Library    date_times1.py
Library    Telnet
Resource    ../Keywords/variables.robot
Library    DateTime


*** Keywords ***
#Step Login WeKonnek
#Positive Case
Open browser Staging
    Set Selenium Speed    0.2
    SeleniumLibrary.Open Browser     about:blank    browser=chrome    
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Go To    ${url_konnek_revamp}
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element     xpath=/html//div[@id='root']/div/div/div[@class='col']//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//button[@type='primary']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='root']/div/div/div[@class='col']//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//button[@type='primary']
    END
    Capture Page Screenshot
    SeleniumLibrary.Page Should Contain    Konnek by Sprint Asia Technology
    Capture Page Screenshot
Input Company ID, Email, Password
    SeleniumLibrary.Input Text        xpath=/html//input[@id='companyId']    companystg
    SeleniumLibrary.Input Text        xpath=/html//input[@id='username']     adminrabil_stg@harakirimail.com
    SeleniumLibrary.Input Password    xpath=/html//input[@id='password']     @Muhammad123 
    Capture Page Screenshot
Klik Button Login 
    SeleniumLibrary.Click Element    xpath=/html//div[@id='root']/div/div/div[@class='col']//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//button[@type='primary']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div//div[@role='tablist']/div[1]/a[@role='tab']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div//div[@role='tablist']/div[1]/a[@role='tab']
    END
    Capture Page Screenshot
#Negative Case
Input Company ID Blank, Email, Password
    SeleniumLibrary.Input Text        xpath=/html//input[@id='companyId']    ${company_id_blank}
    SeleniumLibrary.Input Text        xpath=/html//input[@id='username']     adminrabil_stg@harakirimail.com
    SeleniumLibrary.Input Password    xpath=/html//input[@id='password']     @Muhammad123 
    Capture Page Screenshot
Klik Button Login Company Blank
    SeleniumLibrary.Click Element     xpath=/html//div[@id='root']/div/div/div[@class='col']//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//button[@type='primary']
    SeleniumLibrary.Page Should Contain    Company ID is a required field!
    Capture Page Screenshot

Input Company ID, Email Blank, Password
    SeleniumLibrary.Input Text        xpath=/html//input[@id='companyId']    companystg
    SeleniumLibrary.Input Text        xpath=/html//input[@id='username']     ${email_blank}
    SeleniumLibrary.Input Password    xpath=/html//input[@id='password']     @Muhammad123 
    Capture Page Screenshot
Klik Button Login Email Blank
    SeleniumLibrary.Click Element     xpath=/html//div[@id='root']/div/div/div[@class='col']//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//button[@type='primary']
    SeleniumLibrary.Page Should Contain    Email is a required field!
    Capture Page Screenshot

Input Company ID, Email, Password Blank
    SeleniumLibrary.Input Text        xpath=/html//input[@id='companyId']    companystg
    SeleniumLibrary.Input Text        xpath=/html//input[@id='username']     adminrabil_stg@harakirimail.com
    SeleniumLibrary.Input Password    xpath=/html//input[@id='password']     ${password_blank} 
    Capture Page Screenshot
Klik Button Login Password Blank
    SeleniumLibrary.Click Element     xpath=/html//div[@id='root']/div/div/div[@class='col']//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//button[@type='primary']
    SeleniumLibrary.Page Should Contain    Password is a required field
    Capture Page Screenshot

Input Company ID Blank, Email Blank, Password Blank
    SeleniumLibrary.Input Text        xpath=/html//input[@id='companyId']    ${company_id_blank}
    SeleniumLibrary.Input Text        xpath=/html//input[@id='username']     ${email_blank}
    SeleniumLibrary.Input Password    xpath=/html//input[@id='password']     ${password_blank} 
    Capture Page Screenshot
Klik Button Login All Blank
    SeleniumLibrary.Click Element     xpath=/html//div[@id='root']/div/div/div[@class='col']//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//button[@type='primary']
    SeleniumLibrary.Page Should Contain    Password is a required field
    Capture Page Screenshot

#Forgot Password
#Positive Case
Klik Button Forgot Password
    SeleniumLibrary.Click Element    xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form[@class='ant-form ant-form-horizontal']//a[@href='/auth/forgot']/small[.='Forgot Password?']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//input[@name='companyId']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//input[@name='companyId']
    END
    Capture Page Screenshot
Input Company ID
    SeleniumLibrary.Input Text    xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//input[@name='companyId']    companystg
    Capture Page Screenshot
Input Email
    SeleniumLibrary.Input Text    xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//input[@name='email']    spv_rabilstg@harakirimail.com
    Capture Page Screenshot
Klik Button Submit Forgot Password
    SeleniumLibrary.Click Element    xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//button[@class='btn btn-submit w-100']
    Capture Page Screenshot

Input Email Invalid
    SeleniumLibrary.Input Text    xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//input[@name='email']    rabilfernanda1@harakirimail.com
    Capture Page Screenshot
Klik Submit Forgot Password
    SeleniumLibrary.Click Element    xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//button[@class='btn btn-submit w-100']
    Capture Page Screenshot

Input Company ID Invalid
    SeleniumLibrary.Input Text    xpath=/html//div[@id='root']/div/div//section[@class='ant-layout']//div[@class='col-4']/div//form//input[@name='companyId']    bcadigitaldemo
    Capture Page Screenshot

#Change Password
#Positive Case
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//ul[@role='menu']/li[5]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
Klik Menu Change Password
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//ul[@role='menu']/li[5]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
    Execute JavaScript    window.scrollTo(134, 627)
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[5]/ul[@role='menu']/li[6]//a[@href='/setting/change-password']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div[@class='row']/div/div/div[1]//button[@type='button']/span[.='Change Password']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div[@class='row']/div/div/div[1]//button[@type='button']/span[.='Change Password']
    END
    Capture Page Screenshot
Klik Button Change Password
    Execute JavaScript    window.scrollTo(1136, -300)
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div[@class='row']/div/div/div[1]//button[@type='button']/span[.='Change Password']
Input Text Current Password
    SeleniumLibrary.Input Text    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div/div[@class='row']/div/div[@class='row']/div/div//form[@class='col-12']//input[@name='currentPassword']    @Muhammad123
Input Text New Password
    SeleniumLibrary.Input Text    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div/div[@class='row']/div/div[@class='row']/div/div//form[@class='col-12']//input[@name='newPassword']    @Muhammad12
Input Text Confirm New Password
    SeleniumLibrary.Input Text    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div/div[@class='row']/div/div[@class='row']/div/div//form[@class='col-12']//input[@name='confirmPassword']    @Muhammad12
Klik Button Save Change Password
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div/div[@class='row']/div/div[@class='row']/div/div/div[1]//button[@type='submit']
Klik Button Cancel Change Password
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div[@class='row']/div/div/div[1]//button[@type='button']/span[.='Cancel']

#Negative Case
Input Text Invalid Current Password 
    SeleniumLibrary.Input Text    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div/div[@class='row']/div/div[@class='row']/div/div//form[@class='col-12']//input[@name='currentPassword']    @Muhammad1234

#Settings - Division
Klik Menu Division
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//ul[@role='menu']/li[5]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[5]/ul[@role='menu']/li[2]//a[@href='/setting/divisions']
    Capture Page Screenshot
Klik Create New Division
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='row']/div/div[1]/div[1]//button[@type='button']
    Capture Page Screenshot
Input Division Name
    SeleniumLibrary.Input Text    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='form-row']//input[@name='name']    div_qa
Klik Button Save Divisi
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[2]/p[@class='m-0']
Klik Button Cancel Divisi
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[1]/p[@class='m-0']
Klik Button Edit Divisi
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//table[@class='table']/tbody/tr[1]/td[3]/div//i[@class='fa fa-pencil-alt']
Klik Input Field Division Name
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='form-row']//input[@name='name']    CTRL+a    BACKSPACE
Klik Button Delete Divisi
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//table[@class='table']/tbody/tr[1]/td[3]/div/button[2]/i
Klik Button Cancel Delete Divisi
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[1]/p[@class='m-0']
Klik Button Yes Delete Divisi
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[2]/p[@class='m-0']
Input Go To Pagination Divisi
    SeleniumLibrary.Input Text    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//div[@class='row']/div/div[2]/div[3]/span[@class='text-b-bold']/div//input[@role='spinbutton']    2
Klik Button Arrow Next Divisi
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//div[@class='row']/div/div[2]/div[3]/span[@class='text-b-bold']/div//input[@role='spinbutton']
    Execute JavaScript    window.scrollTo(1184, 970)

#Service level
Klik Menu Service Level
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//ul[@role='menu']/li[5]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
    Execute JavaScript    window.scrollTo(119, 771)
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[5]/ul[@role='menu']/li[9]//a[@href='/setting/ssl']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form/div[1]//button[@class='btn btn-apply btn-lg ml-4']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div[@class='row']/div/div/div[1]//button[@type='button']/span[.='Change Password']
    END
    Capture Page Screenshot
Klik Button Edit Service Level
    Execute JavaScript    window.scrollTo(731, -200)
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form/div[1]//button[@class='btn btn-apply btn-lg ml-4']
Klik Button Dropdown Start Point 
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form//div[@name='sla_from']//span[@title='Queue Time']
    SeleniumLibrary.Press Keys        xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form//div[@name='sla_from']//span[@title='Queue Time']    RETURN
Klik Button Dropdown End Point
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form//div[@name='sla_to']//span[@title='Assign Time']
    SeleniumLibrary.Press Keys    xpath= xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form//div[@name='sla_to']//span[@title='Assign Time']    RETURN
Input Start Time Thresold
    SeleniumLibrary.Press Keys    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form//div[@class='row']/div[1]/input[@name='minutes_threshold']    CTRL+a    BACKSPACE    5
Klik Button Save Service Level
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form/div[1]//button[@class='btn btn-apply btn-lg ml-4']
Klik Button Cancel Service Level
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main/div/div[@class='row']/div/div//form/div[1]//button[@class='btn btn-cancel btn-lg ml-4']

#Menu Agent - Status
Klik Menu Agent
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/div[@role='menuitem']/span[@class='uncollapsible']
Klik Sub Menu Agent - Status
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/ul[@role='menu']/li[1]//a[@href='/setting/availability_agent']
Input Pencarian Agent Status
    SeleniumLibrary.Input Text    xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/div/span/input    text