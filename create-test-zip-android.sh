#!/usr/bin/env bash

cp run-tests-android.sh run-tests.sh
rm tests-robot-android.zip
zip -r tests-robot-android.zip run-tests.sh run_android.py custom_library page_object reports resources test_data test_suite