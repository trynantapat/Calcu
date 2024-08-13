*** Settings ***
Library     SeleniumLibrary
Library     yaml

Library     String
Resource    ../keywords/NumberKeywords.robot
Variables   ../resourse/config/config.yaml
Suite Setup     Open Browser    ${baseUrl}    chrome
Suite Teardown  Close Browser

*** Test Cases ***
As a user, want to calculator

        NumberKeywords.PressNumber  1
        sleep   1s
        NumberKeywords.PressNumber  –
        sleep   1s
        NumberKeywords.PressNumber  2
        sleep   1s
        NumberKeywords.PressNumber  ×
        sleep   1s
        NumberKeywords.PressNumber  1
        sleep   1s
        NumberKeywords.PressNumber  +
        sleep   1s
        NumberKeywords.PressNumber  8
        sleep   1s
        NumberKeywords.PressNumber  /
        sleep   1s 
        NumberKeywords.PressNumber  1
        sleep   1s       


