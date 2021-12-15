import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/modifiers/auto_dispose_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/modifiers/family_object_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/modifiers/family_primitive_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/notifier/change_notifier_page.dart';
import 'package:riverpod_modifiers_example/page/notifier/state_notifier_page.dart';

import 'package:riverpod_modifiers_example/widget/button_widget.dart';

import 'page/mytests/components/provider/my_button_and_text_provider.dart';
import 'page/mytests/components/stateful/my_button_and_text.dart';
import 'page/mytests/components/stateful/my_button_and_text2.dart';
import 'page/mytests/components/stateful/not_inherited/my_button_and_text_not_inherited.dart';
import 'page/mytests/components/stateless/my_button_and_text_statless.dart';
import 'page/mytests/resolution/responsive_media_query.dart';
import 'page/mytests/state_notifier/component/buid_lixo_page.dart';
import 'page/mytests/state_notifier/my_button_and_text_consumewidget _state_notifier.dart';
import 'page/mytests/state_notifier/component/inheritance/my_component.dart';
import 'page/mytests/state_notifier/my_button_and_text_statless _state_notifier.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  static final String title = 'Riverpod Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
          primaryColor: Colors.black,
          primarySwatch: Colors.red,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.white70,
          ),
        ),
        home: HomePage(),
      );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    return applyResposivenessFactor(
        context,
        Scaffold(
          // appBar: AppBar(
          //   title: Text(MyApp.title),
          // ),
          body: Center(
            child: SingleChildScrollView(
              child: buildPages(),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            items: [
              BottomNavigationBarItem(
                icon: Text('Riverpod', style: TextStyle(color: Colors.white)),
                title: Text('Providers'),
              ),
              BottomNavigationBarItem(
                icon: Text('Riverpod', style: TextStyle(color: Colors.white)),
                title: Text('Notifiers'),
              ),
              BottomNavigationBarItem(
                icon: Text('Riverpod', style: TextStyle(color: Colors.white)),
                title: Text('Modifiers'),
              ),
              BottomNavigationBarItem(
                icon: Text('Lixo', style: TextStyle(color: Colors.white)),
                title: Text(''),
              ),
            ],
            onTap: (int index) => setState(() => this.index = index),
          ),
        ));
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return buildProviderPage(context);
      case 1:
        return buildNotifiersPage(context);
      case 2:
        return buildModifiersPage(context);
      case 3:
        return buildLixoPage();
      default:
        return Container();
    }
  }

  int Function(int) increment = (value) {
    value += 1;
    return value;
  };

  Widget buildProviderPage(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButtonAndTextComponent(),
          MyButtonAndTextComponent2(),
          MyButtonAndTextComponenetStateLess(),
          MyButtonAndTextComponenetStateLessProvider(),

          MyButtonAndTextComponentNotInherited(
            increment: increment,
            textButton: 'lixoooo',
            buildTextComonent: (ref) => Text('bosta $ref'),
          ),

          MyButtonAndTextComponenetStateLessStateNotifier(),
          MyButtonAndTextComponenetConsumerWidgetStateNotifier(),

          // ButtonWidget(
          //   text: 'Provider',
          //   onClicked: () => navigateTo(context, ProviderPage()),
          // ),
          // const SizedBox(height: 12),
          // ButtonWidget(
          //   text: 'StateProvider',
          //   onClicked: () => navigateTo(context, StateProviderPage()),
          // ),
          // const SizedBox(height: 12),
          // ButtonWidget(
          //   text: 'FutureProvider',
          //   onClicked: () => navigateTo(context, FutureProviderPage()),
          // ),
          // const SizedBox(height: 12),
          // ButtonWidget(
          //   text: 'StreamProvider',
          //   onClicked: () => navigateTo(context, StreamProviderPage()),
          // ),
          // const SizedBox(height: 12),
          // ButtonWidget(
          //   text: 'ScopedProvider',
          //   onClicked: () => navigateTo(context, ScopedProviderPage()),
          // ),
          // const SizedBox(height: 12),
          // ButtonWidget(
          //   text: 'Combined Providers',
          //   onClicked: () => navigateTo(context, CombinedProvidersPage()),
          // ),
        ],
      );

  Widget buildNotifiersPage(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
            text: 'StateNotifierProvider',
            onClicked: () => navigateTo(context, StateNotifierPage()),
          ),
          const SizedBox(height: 32),
          ButtonWidget(
            text: 'ChangeNotifierProvider',
            onClicked: () => navigateTo(context, ChangeNotifierPage()),
          ),
        ],
      );

  Widget buildModifiersPage(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
            text: 'Family Primitive',
            onClicked: () => navigateTo(context, FamilyPrimitiveModifierPage()),
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            text: 'Family Object',
            onClicked: () => navigateTo(context, FamilyObjectModifierPage()),
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            text: 'Auto-Dispose',
            onClicked: () => navigateTo(context, AutoDisposeModifierPage()),
          ),
        ],
      );

  void navigateTo(BuildContext context, Widget page) =>
      Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => page),
      );
}
