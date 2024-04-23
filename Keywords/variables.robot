*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    Screenshot
Library    BuiltIn
Resource    ../Keywords/variables.robot

*** Variables ***
#Page Login 
# ======= Positive Case =======
${url_konnek_revamp}   https://stgrvm.wekonnek.id/auth/signin
${company_id}          companystg
${email_all_role}      adminrabil_stg@harakirimail.com
${password_all_role}   @Muhammad123
${company_id}          companystg
${element_company_id}    xpath=//input[@id='companyId']
# ======= Negative Case =======
${company_id_blank}  ${EMPTY}
${email_blank}       ${EMPTY}
${password_blank}    ${EMPTY}
${company_id_blank}  ${EMPTY}