import 'dart:ui';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

AppLocalizations t(context) => AppLocalizations.of(context)!;

extension LocaleX on Locale {
  String get languageName {
    return lookupAppLocalizations(this).languageName;
  }
}

extension DoubleX on double {
  String time(context) {
    final days = this ~/ 24;
    final hours = this % 24;
    final roundedHours = hours.floor();
    final minutes = ((hours - roundedHours) * 60).toInt();
    if (this == 0) return t(context).minuteNum;
    final daysText = Intl.plural(
      days,
      zero: '',
      one: t(context).dayNum,
      other: t(context).daysNum(days),
      name: 'howManyDays',
      args: [days],
      desc: 'Description of how days left.',
      examples: const {'days': 3},
    );
    final hoursText = Intl.plural(
      roundedHours,
      zero: '',
      one: t(context).hourNum,
      other: t(context).hoursNum(roundedHours),
      name: 'howManyHours',
      args: [roundedHours],
      desc: 'Description of how hours left.',
      examples: const {'hours': 3},
    );
    final minutesText = Intl.plural(
      minutes,
      zero: '',
      one: t(context).minuteNum,
      other: t(context).minutesNum(minutes),
      name: 'howManyMinutes',
      args: [minutes],
      desc: 'Description of how minutes left.',
      examples: const {'minutes': 3},
    );
    return '$daysText $hoursText $minutesText}';
  }
}

// Format Price with currency. Ex: 1 000 000 NVD
extension IntX on int {
  String price(Locale locale) {
    final formatter = NumberFormat('#,###', locale.languageCode);
    return formatter.format(this);
  }
}
