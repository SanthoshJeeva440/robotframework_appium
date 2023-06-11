*** Settings ***

Test Setup      Open Calculator-iOS
Resource        ../../../resources/core_ios/core_ios.robot
Resource        ../../../resources/keyword/keyword_ios/key_add_number_ios.robot
Test Teardown       Exit App

*** Test Cases ***

TC-01 Addition Two Numbers

            Add 9 & 10
            Clear Button
            Min 12 & 3