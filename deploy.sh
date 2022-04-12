adb -s emulator-5554 uninstall com.example.riverpod_modifiers_example
adb -s emulator-5556 uninstall com.example.riverpod_modifiers_example
adb -s emulator-5558 uninstall com.example.riverpod_modifiers_example

adb -s emulator-5554 install /home/maduro/STUDY-WS/flutter/riverpod_modifiers_example/build/app/outputs/flutter-apk/app-debug.apk
adb -s emulator-5556 install /home/maduro/STUDY-WS/flutter/riverpod_modifiers_example/build/app/outputs/flutter-apk/app-debug.apk
adb -s emulator-5558 install /home/maduro/STUDY-WS/flutter/riverpod_modifiers_example/build/app/outputs/flutter-apk/app-debug.apk

adb -s emulator-5554 shell am start -n com.example.riverpod_modifiers_example/com.example.riverpod_modifiers_example.MainActivity
adb -s emulator-5556 shell am start -n com.example.riverpod_modifiers_example/com.example.riverpod_modifiers_example.MainActivity
adb -s emulator-5558 shell am start -n com.example.riverpod_modifiers_example/com.example.riverpod_modifiers_example.MainActivity
