*** Settings ***

Library         AppiumLibrary       run_on_failure=AppiumLibrary.CapturePageScreenshot
Resource        ../../../page_object/android_page_object/po_calc_android.robot

*** Keywords ***

Add 9 & 10

        AppiumLibrary.Wait Until Page Contains Element    ${9_button}   10s
        AppiumLibrary.Click Element    ${9_button}
        AppiumLibrary.Click Element    ${add_button}
        AppiumLibrary.Click Element    ${8_button}
        AppiumLibrary.Click Element     ${equal_button}

Clear Button

        AppiumLibrary.Click Element    ${clear_button}

Min 12 & 3

        AppiumLibrary.Click Element    ${1_button}
        AppiumLibrary.Click Element    ${2_button}
        AppiumLibrary.Click Element    ${minus_button}
        AppiumLibrary.Click Element    ${3_button}
        AppiumLibrary.Click Element    ${equal_button}