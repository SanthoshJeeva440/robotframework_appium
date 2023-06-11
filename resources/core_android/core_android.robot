*** Settings ***

Documentation       This File Used For Luanch Android APP
Library         AppiumLibrary       run_on_failure=AppiumLibrary.CapturePageScreenshot
Variables       ../configuration/environment.py
Variables       ../common_device_setup/core_device_configuration.py

*** Keywords ***

# this keyword for launch the app

Open Calculator-Android

            AppiumLibrary.Open Application    ${port}
            ...                 platformName=Android
            ...                 deviceName=${${Tester}.android_device_name}
            ...                 appPackage=${${env}.app_package}
            ...                 appActivity=${${env}.app_activity}
#            ...                 platformVersion=${${Tester}.android_device_version}
            ...                 automationName=Appium
            ...                 autoGrantPermissions=true
            ...                 noReset=false
            ...                 newCommandTimeout=20000

Exit App

            AppiumLibrary.Close Application