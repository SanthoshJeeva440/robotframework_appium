#!/bin/bash


echo "Extracting tests.zip..."
unzip -o tests.zip

Sleep 5
echo "Installing requirements"
chmod 0755 resources/configuration/requirements.txt
python3 -m pip install -r resources/configuration/requirements.txt

## this appium server applicable for both native & hybrid application

sleep 5
echo "Starting Appium ..."
appium --log-no-colors --log-timestamp --command-timeout 120 --allow-insecure chromedriver_autodownload

sleep 10
## Start test execution
echo "Running test"
python3 run_android.py -x TEST-all

echo "Gathering results"
mkdir -p reports
cp -r screenshots output-files
mv report.html log.html output-files