// ignore_for_file: all, prefer_const_constructors_in_immutables, constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  IconExample({Key? key, required this.name}) : super(key: key);

  final IconName name;

  @override
  Widget build(BuildContext context) {
    return Text(
      String.fromCharCodes(IconMap.get(name.str)),
      style: const TextStyle(fontSize: 24, fontFamily: 'Kyons Icons', height: 1, fontWeight: FontWeight.normal),
    );
  }
}

enum IconName {
  ADD,
  ADD_FRIEND,
  ARROW_DOWN,
  ARROW_DOWN_STOP,
  ARROW_LEFT,
  ARROW_LEFT_STOP,
  ARROW_RIGHT,
  ARROW_RIGHT_STOP,
  ARROW_UP,
  ARROW_UP_STOP,
  BIRTHDAY,
  BOOKMARK,
  CALENDAR,
  CAROUSEL,
  CHECK,
  CLOSE,
  DOCUMENT,
  EDIT,
  EMAIL,
  FILTER,
  HANBOOK,
  HOME,
  INFO,
  LESSON_CONTENT,
  LOCATION,
  MENU_HAMBUGER,
  MORE,
  NOTIFICATION,
  PHONE,
  PROFILE,
  RELOAD,
  SEARCH,
  SUBMIT,
  SUBTRACT,
  TEST,
  THUMBNAIL,
  TIME,
  WORK,
  ICON_TUTOR,
}

extension IconNameExtension on IconName {
  String get str {
    return describeEnum(this).toLowerCase().replaceAll('_', '-');
  }
}

class IconMap {
  static const Map<String, List<int>> _data = {
    'Add': [57601, 57474],
    'Add friend': [57344, 58006, 60401, 57572],
    'Arrow-down': [60659, 60609, 57351],
    'Arrow-down stop': [58931, 58048, 57565],
    'Arrow-left': [60663, 58487, 57356],
    'Arrow-left stop': [59351, 60828, 57496],
    'Arrow-right': [57344, 59102, 59129, 57545],
    'Arrow-right stop': [57344, 58578, 58445, 57367],
    'Arrow-up': [57344, 58504, 57794, 57346],
    'Arrow-up stop': [58669, 58689, 57476],
    'Birthday': [58426, 59335, 57502],
    'Bookmark': [59319, 57866, 57431],
    'Calendar': [57344, 59079, 59915, 57347],
    'Carousel': [58375, 60505, 57345],
    'Check': [58337, 61263, 57353],
    'Close': [58339, 61150, 57353],
    'Document': [58228, 59190, 57404],
    'Edit': [57871, 57899],
    'Email': [58368, 58808, 57357],
    'Filter': [59351, 60856, 57497],
    'Hanbook': [57344, 59192, 60654, 57379],
    'Home': [57895, 59648],
    'Info': [57902, 59599],
    'Lesson content': [58707, 61330, 57522],
    'Location': [59219, 59908, 57558],
    'Menu - Hambuger': [58308, 59145, 57346],
    'More': [57931, 61302],
    'notification': [58069, 58846, 57356],
    'Phone': [58521, 58581, 57359],
    'Profile': [58637, 59170, 57482],
    'Reload': [57344, 59110, 57491, 57416],
    'Search': [57344, 59083, 57519, 57401],
    'Submit': [57344, 59068, 61140, 57545],
    'Subtract': [57344, 59248, 57985, 57549],
    'Test': [57980, 59571],
    'Thumbnail': [57344, 58260, 61328, 57397],
    'Time': [57981, 59118],
    'Work': [58004, 60210],
    'icon Tutor': [57344, 59239, 59400, 57426],
  };

  static List<int> get(String key) {
    return _data[key]!;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Column(children: [
          const Text('Hello World'),
          IconExample(name: IconName.NOTIFICATION),
          const Icon(KyonsIcons.notification),
        ]),
      ),
    );
  }
}

class KyonsIcons {
  KyonsIcons._();

  static const String _fontFamily = 'Kyons Icons';

  static const IconData add = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData addToHandbook = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData addFriend = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData arrowDown = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData arrowDownStop = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData arrowLeft = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData arrowLeftStop = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData arrowRight = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData arrowRightStop = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData arrowUp = IconData(0xe90a, fontFamily: _fontFamily);
  static const IconData arrowUpStop = IconData(0xe909, fontFamily: _fontFamily);
  static const IconData birthday = IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData bookmark = IconData(0xe90c, fontFamily: _fontFamily);
  static const IconData calendar = IconData(0xe90d, fontFamily: _fontFamily);
  static const IconData carousel = IconData(0xe90e, fontFamily: _fontFamily);
  static const IconData check = IconData(0xe90f, fontFamily: _fontFamily);
  static const IconData close = IconData(0xe910, fontFamily: _fontFamily);
  static const IconData document = IconData(0xe911, fontFamily: _fontFamily);
  static const IconData edit = IconData(0xe912, fontFamily: _fontFamily);
  static const IconData email = IconData(0xe913, fontFamily: _fontFamily);
  static const IconData filter = IconData(0xe914, fontFamily: _fontFamily);
  static const IconData hanbook = IconData(0xe915, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe916, fontFamily: _fontFamily);
  static const IconData info = IconData(0xe917, fontFamily: _fontFamily);
  static const IconData lessonContent = IconData(0xe918, fontFamily: _fontFamily);
  static const IconData location = IconData(0xe919, fontFamily: _fontFamily);
  static const IconData menu = IconData(0xe91a, fontFamily: _fontFamily);
  static const IconData more = IconData(0xe91b, fontFamily: _fontFamily);
  static const IconData notification = IconData(0xe91c, fontFamily: _fontFamily);
  static const IconData phone = IconData(0xe91d, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe91e, fontFamily: _fontFamily);
  static const IconData reload = IconData(0xe91f, fontFamily: _fontFamily);
  static const IconData removeFromHandbook = IconData(0xe920, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe921, fontFamily: _fontFamily);
  static const IconData submit = IconData(0xe922, fontFamily: _fontFamily);
  static const IconData subtract = IconData(0xe923, fontFamily: _fontFamily);
  static const IconData test = IconData(0xe924, fontFamily: _fontFamily);
  static const IconData thumbnail = IconData(0xe925, fontFamily: _fontFamily);
  static const IconData time = IconData(0xe926, fontFamily: _fontFamily);
  static const IconData tutor = IconData(0xe927, fontFamily: _fontFamily);
  static const IconData work = IconData(0xe928, fontFamily: _fontFamily);
}
