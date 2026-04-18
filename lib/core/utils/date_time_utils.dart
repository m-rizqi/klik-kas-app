import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:klik_kas/l10n/l10n.dart';

extension FromDateTimeUtils on DateTime {
  String getTime({String format = 'HH:mm', String? locale}) {
    return DateFormat(format, locale ?? Intl.getCurrentLocale()).format(this);
  }

  String getDate({String format = 'dd/MM/yyyy', String? locale}) {
    return DateFormat(format, locale ?? Intl.getCurrentLocale()).format(this);
  }

  String getDateTime({String format = 'dd MMM yyyy, HH:mm', String? locale}) {
    return DateFormat(format, locale ?? Intl.getCurrentLocale()).format(this);
  }

  String getDateRelativeToNow(BuildContext context) {
    final l10n = context.l10n;
    final locale = Localizations.localeOf(context).toString();

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final dateToCheck = DateTime(year, month, day);

    if (dateToCheck == today) {
      return l10n.today;
    } else if (dateToCheck == yesterday) {
      return l10n.yesterday;
    } else if (now.difference(dateToCheck).inDays < 7) {
      return DateFormat('EEEE', locale).format(this);
    } else {
      return getDate(format: 'dd/MM/yy', locale: locale);
    }
  }
}
