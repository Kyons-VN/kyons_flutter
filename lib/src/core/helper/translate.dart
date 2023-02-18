import 'dart:ui';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

AppLocalizations t(context) => AppLocalizations.of(context)!;

extension LocaleX on Locale {
  String get name {
    return lookupAppLocalizations(this).languageName;
  }
}
