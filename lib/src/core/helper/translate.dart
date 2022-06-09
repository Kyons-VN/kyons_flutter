import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

AppLocalizations t(context) => AppLocalizations.of(context)!;

String firstCapital(String str) => toBeginningOfSentenceCase(str.toLowerCase())!;
