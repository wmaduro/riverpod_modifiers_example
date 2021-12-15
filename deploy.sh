adb -s emulator-5554 uninstall com.example.riverpod_modifiers_example
adb -s emulator-5556 uninstall com.example.riverpod_modifiers_example
adb -s emulator-5558 uninstall com.example.riverpod_modifiers_example

adb -s emulator-5554 install /home/maduro/STUDY-WS/flutter/riverpod_modifiers_example/build/app/outputs/flutter-apk/app-debug.apk
adb -s emulator-5556 install /home/maduro/STUDY-WS/flutter/riverpod_modifiers_example/build/app/outputs/flutter-apk/app-debug.apk
adb -s emulator-5558 install /home/maduro/STUDY-WS/flutter/riverpod_modifiers_example/build/app/outputs/flutter-apk/app-debug.apk
