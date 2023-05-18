*** Settings ***
Documentation       Insert the sales data for the week and export it as a PDF.

Library             RPA.Browser.Selenium    auto_close=${FALSE}


*** Tasks ***
Insert the sales data for the week and export it as a PDF
    Open the intranet website
    Log in
    Fill and submit the form


*** Keywords ***
Open the intranet website
    Open Available Browser    https://robotsparebinindustries.com/

Log in
    input Text    username    maria
    Input Password    password    thoushallnotpass
    Submit Form
    Wait Until Page Contains Element    id:sales-form

Fill and submit the form
    Input Text    firstname    John
    Input Text    lastname    Smith
    Input Text    salesresult    123
    Select From List By Value    salestarget    10000
    Click Button    Submit
