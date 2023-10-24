*** Settings ***
Library    AppiumLibrary

*** Variables ***
${ANDROID_PLATFORM_VERSION}    9
${DEVICE_CON}                   192.168.0.170
${APP_PACKAGE}                 com.android.calculator2
${APP_ACTIVITY}                .Calculator
${APPIUM_SERVER_URL}           http://localhost:4723/wd/hub
${TIMEOUT}                20 seconds

*** Test Cases ***
Test on Remote Device
    Abrir Aplicativo     ${DEVICE_CON}
    Operação
    Fechar Aplicativo



*** Keywords ***
Fechar Aplicativo
    Close Application


Abrir Aplicativo
    [Arguments]         ${device}
    log to console  .
    log to console  Conectando ao Device: ${device}
    Open Application    ${APPIUM_SERVER_URL}    platformName=Android    platformVersion=${ANDROID_PLATFORM_VERSION}    deviceName=${device}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}

Operação
    Click Element Is Visible    xpath=//android.widget.Button[@text='5']
    Click Element Is Visible    xpath=//android.widget.Button[@text='+']
    Click Element Is Visible    xpath=//android.widget.Button[@text='9']
    Click Element Is Visible    xpath=//android.widget.Button[@text='=']
    Sleep  3s




Click Element Is Visible
    [Arguments]                             ${ELEMENT}
    AppiumLibrary.Wait Until Element Is Visible                                     ${ELEMENT}                              ${TIMEOUT}
    AppiumLibrary.Click Element             ${ELEMENT}