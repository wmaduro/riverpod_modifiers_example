import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_modifiers_example/page/modifiers/auto_dispose_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/modifiers/family_object_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/modifiers/family_primitive_modifier_page.dart';
import 'package:riverpod_modifiers_example/page/mytests/golden_study/golden_study_screen.dart';
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

class MyAppLixaiada extends StatelessWidget {
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

  gotoIndex(int index) {
    createState().index = index;
  }
}

class _HomePageState extends State<HomePage> {
  int index = 4;
  double appBarHeight = 200;
  String lixo = 'asdfas';

  changeAppbarHeight(double value) {
    setState(() {
      appBarHeight = value;
      lixo = 'bosta ${Random().nextInt(100)}';
    });
  }

  Widget _silverAppBarScafold() {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildSilverAppBar(context),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _responsiveness();
    // return _silverAppBarScafold();
  }

  Widget _responsiveness() {
    return
        // applyResposivenessFactor(
        //     context,
        Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ButtonWidget(
                  text: lixo,
                  onClicked: () {
                    changeAppbarHeight(400);
                  }),
              buildPages(),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: index,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Text('Riverpod', style: TextStyle(color: Colors.white)),
      //       title: Text('Providers'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Text('Riverpod', style: TextStyle(color: Colors.white)),
      //       title: Text('Notifiers'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Text('Riverpod', style: TextStyle(color: Colors.white)),
      //       title: Text('Modifiers'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Text('Lixo', style: TextStyle(color: Colors.white)),
      //       title: Text(''),
      //     ),
      //   ],
      //   onTap: (int index) => setState(() => this.index = index),
      // ),
      // ),
    );
  }

  final mainItemSize = 40.0;
  final subItemSize = 20.0;

  SliverAppBar buildSilverAppBar(BuildContext context) {
    return SliverAppBar(
      floating: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      flexibleSpace: _column([
        _mainItem(),
        _subItem(),
      ]),
      // expandedHeight: 200,
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: appBarHeight,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: _column([_mainItem(), _subItem()]),
    );
  }

  Widget _expanded(Widget w) {
    return Expanded(
      child: w,
    );
  }

  Widget _column(List<Widget> wList) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [...wList],
    );
  }

  bool isNormal = true;

  Widget _mainItem() {
    return _getTextGlobal(_mainContent(), mainItemSize, isNormal);
  }

  Widget _subItem() {
    return _getTextGlobal(_subContent(), subItemSize, isNormal);
  }

  Widget _getTextGlobal(String content, double size, bool isNormal) {
    if (isNormal) {
      return _getText(content, size);
    } else {
      return _getAutoSizeText(content, size);
    }
  }

  Widget _getText(String content, double size) {
    return Text(
      content,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size),
    );
  }

  Widget _getAutoSizeText(String content, double size) {
    return AutoSizeText(
      content,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: size),
    );
  }

  String _mainContent() {
    return 'Main Lixooooooooo 11111111111111 rrrrrrrrrrrrr rrrrrrrrrrrrrr rrrrrrrrrrrrrr  pppppppppp ooooooooooooo';
  }

  String _subContent() {
    return 'Sub teste 12345';
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
      case 4:
        return buildSimpleTextcreen();
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

  void navigateTo(BuildContext context, Widget page) => Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => page),
      );
}
