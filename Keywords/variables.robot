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

#Settings - Category
${text_desc_category}   
...    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum