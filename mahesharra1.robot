*** Settings ***
Library     SeleniumLibrary
Library     xml
Library     OperatingSystem

*** Variables ***
${url}      https://www.google.co.in/
${browser}  Chrome
${file}     textfile.txt
${url}      https://www.google.co.in
${browser}  chrome


*** Test Cases ***
Browsersearch
    Open Browser     ${url}   ${browser}
    Maximize browser window
    Input Text      xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input   robotframework
    submit form
    ${m}=     Get WebElements      //div[@class="yuRUbf"]

    FOR     ${i}   IN    @{m}
        ${Msg}=     Get Text    ${i}
        Log to Console      ${Msg}

    END
    Capture Page Screenshot     a.png
    Close browser











*** Keywords ***
