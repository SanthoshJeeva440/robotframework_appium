*** Settings ***

Documentation       This File Used For Luanch iOS APP
Library         AppiumLibrary       run_on_failure=AppiumLibrary.CapturePageScreenshot
Variables       ../configuration/environment.py
Variables       ../common_device_setup/core_device_configuration.py

*** Keywords ***

# this keyword used for launch ios app

Open Calculator-iOS

             AppiumLibrary.Open Application    ${port}
             ...                platformName=iOS
             ...                platformVersion=${${Tester}.ios_device_version}
             ...                appium:deviceName=${${Tester}.ios_device_name}
             ...                automationName=XCUITest
             ...                udid=${${Tester}.ios_udid}
             ...                bundleId=${${env}.bundle_id}
             ...                xcodeOrgId=GLA8T96QJT
             ...                xcodeSigningId=iPhone Developer
             ...                newCommandTimeout=20000
             ...                setWebContentsDebuggingEnabled=true

Exit App

            AppiumLibrary.Close Application