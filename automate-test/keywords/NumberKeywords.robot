*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***
${Numpad}=  xpath=//span[text()='@#string@#'] 

*** Keywords ***
PressNumber
    [Arguments]     ${pressnum}         
    ${new_locator}      String.Replace string   ${Numpad}        @#string@#    ${pressnum}  
    Click Element   ${new_locator}  


