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

#Menu Settings - Category
Klik Settings Category
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//ul[@role='menu']/li[5]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[5]/ul[@role='menu']/li[4]//a[@href='/setting/category']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//table[@class='table']/tbody/tr[1]/td[4]/div//i[@class='fa fa-pencil-alt']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//table[@class='table']/tbody/tr[1]/td[4]/div//i[@class='fa fa-pencil-alt']
    END
    Capture Page Screenshot
Input Pencarian Category
    SeleniumLibrary.Input Text    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='row']/div/div[1]/div[1]/div/span/input    Complaint
Klik Button Create New Category
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='row']/div/div[1]/div[1]//button[@type='button']/span[.='+ Create New']
Input Name Category
     ${random_number2}    Evaluate    random.randint(3, 3000)
    SeleniumLibrary.Input Text    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='form-group row']//input[@name='name']    cat_ ${random_number2}
Input Description category
    ${random_number2}    Evaluate    random.randint(3, 3000)
    SeleniumLibrary.Input Text    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='form-group row']//textarea[@name='description']
    ...    ${text_description_category}${random_number2}
Klik Button Save Category
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[2]/p[@class='m-0']
Klik Button Cancel Category
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[1]/p[@class='m-0']
Klik Button Edit Category
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//table[@class='table']/tbody/tr[1]/td[4]/div//i[@class='fa fa-pencil-alt']
    SeleniumLibrary.Input Text    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='form-group row']//input[@name='name']    Complaint.
Klik Button Save Edit Category
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[2]/p[@class='m-0']
Klik Button Cancel Edit Category
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div/div[3]/button[1]/p[@class='m-0']

#Menu Agent
Klik Settings Agent - Status
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/ul[@role='menu']/li[1]//a[@href='/setting/availability_agent']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/div/span/input  
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/div/span/input  
    END
    Capture Page Screenshot
Input Pencarian Agent - Status
    SeleniumLibrary.Input Text    xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/div/span/input    agent_stgrabil
Klik Button Filtering Agent - Status
    SeleniumLibrary.Click Element    xpath=//*[@id="yield"]/section/section/main/div/div[2]/div/div[1]/div/button
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='custom-checkbox-wrapper']/label[1]/span[@class='ant-checkbox ant-checkbox-checked']/input[@class='ant-checkbox-input']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='custom-checkbox-wrapper']/label[1]/span[@class='ant-checkbox ant-checkbox-checked']/input[@class='ant-checkbox-input']
    END
Klik Button Checkbox Status Filter Preference 
    SeleniumLibrary.Click Element    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='custom-checkbox-wrapper']/label[1]/span[@class='ant-checkbox ant-checkbox-checked']/input[@class='ant-checkbox-input']
Klik Button Search Status Filter Preference 
    SeleniumLibrary.Click Element    xpath=//body/div[@role='dialog']/div[@role='document']//button[.='Search']
Klik Button Reset Status Filter Preference
    SeleniumLibrary.Click Element    xpath=//body/div[@role='dialog']/div[@role='document']//button[@class='btn btn-cancel btn-md px-4']
Klik Button Arrow Pagination Agent - Status 
    Execute JavaScript    window.scrollTo(822, 970)
    SeleniumLibrary.Click Element    xpath=//div[@id='yield']/section[@class='ant-layout']/section//ul[@class='ant-pagination']/li[@class='ant-pagination-next']/button[@class='ant-pagination-item-link']

# Agent - Performance
Klik Agent - Performance 
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/ul[@role='menu']/li[2]//a[@href='/setting/performance']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input 
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input
    END
    Capture Page Screenshot
Input Pencarian Agent - Performance
    SeleniumLibrary.Input Text    xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input    agent_stgrabil
Klik Button 30 Days Agent - Performance
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='d-flex']/button[2]/p[@class='mx-3 my-1']
Klik Button 7 Days Agent - Performance 
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='d-flex']/button[1]
Klik Start Date Agent - Performance
    ${random_number2}    Evaluate    random.randint(1, 15)
    SeleniumLibrary.Press Keys    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//div[@class='d-flex']/div/div[1]//input    CTRL+a    BACKSPACE  ${random_number2}    RETURN  
Klik To Date Agent - Performance
    ${random_number2}    Evaluate    random.randint(16, 30)
    SeleniumLibrary.Press Keys    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']/div[@class='wrapper-card-dashboard']//div[@class='d-flex']/div/div[2]/div[@class='react-datepicker-wrapper']/div[@class='react-datepicker__input-container']/input    CTRL+a    BACKSPACE  ${random_number2}    RETURN  
Klik Button Go Date Agent - Performance
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//div[@class='d-flex']/div/div[2]/button

#Agent - History
Klik Agent - History
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/div[@role='menuitem']/span[@class='uncollapsible']
    Capture Page Screenshot
    SeleniumLibrary.Click Element    xpath=//div[@id='root']//div[@class='ant-layout-sider-children']/ul[@role='menu']/li[4]/ul[@role='menu']/li[3]//a[@href='/setting/history']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input
    END
    Capture Page Screenshot

Input Pencarian Agent - History
    SeleniumLibrary.Input Text    xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input    agent_stgrabil
Klik Button 30 Days Agent - History
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='d-flex']/button[3]
Klik Button 7 Days Agent - History
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='d-flex']/button[2]
Klik Button Filtering Agent - History
    SeleniumLibrary.Click Element    xpath=//html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//p[@class='ml-2 my-1']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//body/div[@role='dialog']/div[@role='document']//button[.='Search']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//body/div[@role='dialog']/div[@role='document']//button[.='Search']
    END
    Capture Page Screenshot
Klik Start Date Agent - History
    ${random_number2}    Evaluate    random.randint(1, 15)
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div[@class='row']/div[@class='col']/div[@class='row']/div[1]/div/div[@class='react-datepicker-wrapper']/div[@class='react-datepicker__input-container']/input   CTRL+a    BACKSPACE  ${random_number2}    RETURN 
Klik To Date Agent - History
    ${random_number2}    Evaluate    random.randint(16, 30)
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div[@class='row']/div[@class='col']/div[@class='row']/div[3]/div/div[@class='react-datepicker-wrapper']/div[@class='react-datepicker__input-container']/input   CTRL+a    BACKSPACE  ${random_number2}    RETURN   
Klik Button Search Date Agent - History 
    SeleniumLibrary.Click Element    xpath=//body/div[@role='dialog']/div[@role='document']//button[.='Search']
Klik Button Dropdown ' Agent ' Filter Preference 
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div[@class='row']/div[@class='col-lg-4 col-md-4 col-sm-4']/div/div[@class='ant-select-selector']/span[@title='All']    RETURN
Klik Button Dropdown ' Reason ' Filter Preference
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='mt-4 row']/div[1]/div/div[@class='ant-select-selector']/span[@title='All']    RETURN
Klik Button Dropdown ' Type ' Filter Preference 
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='mt-4 row']/div[2]/div/div[@class='ant-select-selector']/span[@title='All']

#Agent - Availbility
Klik Tab Agent - Availability
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section//div[@class='wrapper-card-dashboard']/div[1]//div[@role='tablist']/div[2]/a[@role='tab']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input
    END
    Capture Page Screenshot
Klik Button 30 Days Agent - Availability
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//div[@class='d-flex']/button[3]/p[@class='mx-3 my-1']
Klik Button 7 Days Agent - Availability
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//div[@class='d-flex']/button[2]/p[@class='mx-3 my-1']
Klik Button Filtering Agent - Availability
    SeleniumLibrary.Click Element    xpath=/html//div[@id='yield']/section[@class='ant-layout']/section/main[@class='ant-layout-content site-layout-background']//p[@class='ml-2 my-1']
    ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//body/div[@role='dialog']/div[@role='document']//button[.='Search']
    WHILE    ${Reload} != ${TRUE}
        ${Reload}=  Run Keyword And Return Status  Page Should Contain Element  xpath=//body/div[@role='dialog']/div[@role='document']//button[.='Search']
    END
    Capture Page Screenshot
Klik Start Date Agent - Availability
    ${random_number2}    Evaluate    random.randint(1, 15)
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div[@class='row']/div[@class='col-lg-8 col-md-8 col-sm-8']/div[@class='row']/div[1]/div/div[@class='react-datepicker-wrapper']/div[@class='react-datepicker__input-container']/input   CTRL+a    BACKSPACE  ${random_number2}    RETURN 
Klik To Date Agent - Availability
    ${random_number2}    Evaluate    random.randint(16, 30)
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']/div/div[2]/div[@class='row']/div[@class='col-lg-8 col-md-8 col-sm-8']/div[@class='row']/div[3]/div/div[@class='react-datepicker-wrapper']/div[@class='react-datepicker__input-container']/input  CTRL+a    BACKSPACE  ${random_number2}    RETURN   
Klik Button Search Date Agent - Availability
    SeleniumLibrary.Click Element    xpath=//body/div[@role='dialog']/div[@role='document']//button[.='Search']
Klik Button Dropdown ' Agent ' Availability Filter Preference 
    SeleniumLibrary.Press Keys    xpath=/html/body/div[@role='dialog']/div[@role='document']/div[@class='modal-content']//div[@class='ant-select-selector']    RETURN
Input Pencarian Agent - Availability
    SeleniumLibrary.Input Text    xpath=//div[@id='yield']/section[@class='ant-layout']/section//div[@class='table-container-custom']/div[1]/span/input    agent_stgrabil