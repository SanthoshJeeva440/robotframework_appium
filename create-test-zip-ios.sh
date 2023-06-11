#!/usr/bin/env bash

cp run-tests-ios.sh run-tests.sh
rm tests-robot-ios.zip
zip -r tests-robot-ios.zip run-tests.sh run_ios.py custom_library page_object reports resources test_data test_suite