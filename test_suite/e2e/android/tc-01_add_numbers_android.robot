*** Settings ***

Test Setup      Open Calculator-Android
Resource        ../../../resources/core_android/core_android.robot
Resource        ../../../resources/keyword/keyword_android/key_add_nubmer_android.robot
Test Teardown       Exit App

*** Test Cases ***

TC-01 Addition Two Numbers

            Add 9 & 10
            Clear Button
            Min 12 & 3
            Clear Button