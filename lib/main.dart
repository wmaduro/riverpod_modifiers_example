import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/modifiers/auto_dispose_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/modifiers/family_object_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/modifiers/family_primitive_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/notifier/change_notifier_page.dart';
import 'package:riverpod_modifiers_example/page/notifier/state_notifier_page.dart';
import 'package:riverpod_modifiers_example/page/provider/combined_provider_page.dart';
import 'package:riverpod_modifiers_example/page/provider/future_provider_page.dart';
import 'package:riverpod_modifiers_example/page/provider/provider_page.dart';
import 'package:riverpod_modifiers_example/page/provider/scoped_provider_page.dart';
import 'package:riverpod_modifiers_example/page/provider/state_provider_page.dart';
import 'package:riverpod_modifiers_example/page/provider/stream_provider_page.dart';
import 'package:riverpod_modifiers_example/widget/button_widget.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  static final String title = 'Riverpod Example';
  //WMADURO - 01
  //TESTE01

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
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: Center(child: buildPages()),
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
        ],
        onTap: (int index) => setState(() => this.index = index),
      ),
    );
  }

  Widget buildPages() {
    switch (index) {
      case 0:
        return buildProviderPage(context);
      case 1:
        return buildNotifiersPage(context);
      case 2:
        return buildModifiersPage(context);
      default:
        return Container();
    }
  }

  Widget buildProviderPage(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
            text: 'Provider',
            onClicked: () => navigateTo(context, ProviderPage()),
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            text: 'StateProvider',
            onClicked: () => navigateTo(context, StateProviderPage()),
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            text: 'FutureProvider',
            onClicked: () => navigateTo(context, FutureProviderPage()),
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            text: 'StreamProvider',
            onClicked: () => navigateTo(context, StreamProviderPage()),
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            text: 'ScopedProvider',
            onClicked: () => navigateTo(context, ScopedProviderPage()),
          ),
          const SizedBox(height: 12),
          ButtonWidget(
            text: 'Combined Providers',
            onClicked: () => navigateTo(context, CombinedProvidersPage()),
          ),
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
