# this Tester varibale is referred to run application in ci/cd with remote device configuration

Tester = 'Remote'

# this port is used for laucnh app with local host port
port = 'http://localhost:4723/wd/hub'


# santhosh class is real device configuration

class Santhosh:
    # this below varibale denotes for android
    android_device_name = '5613cebd'
    android_device_version = '9'

    # this below variable denotes for ios
    ios_device_name = "Calibraint's iPhone"
    ios_device_version = '15.5'
    ios_udid = '00008101-000504921E86001E'


# remote class is ci/cd & virtual device configuration

class Remote:
    # this below varibale denotes for android
    android_device_name = 'Google Pixel 3a Android 12'
    android_device_version = '9'

    # this below variable denotes for ios
    ios_device_name = 'Apple iPhone 7 A1778 15.4.1'
    ios_device_version = ''
    ios_udid = ''


Remote = Remote()
Santhosh = Santhosh()
