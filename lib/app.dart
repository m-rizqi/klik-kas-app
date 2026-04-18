import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:klik_kas/config/theme/app_theme.dart';
import 'package:klik_kas/core/di/injection.dart';
import 'package:klik_kas/l10n/arb/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = MaterialTheme.createTextTheme(
      context,
      'Plus Jakarta Sans',
      'Inter',
    );
    final theme = MaterialTheme(textTheme);

    final router = di<GoRouter>();
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'KlikKas',
          theme: theme.light(),
          locale: const Locale('id'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          localeListResolutionCallback: (locales, supportedLocales) {
            if (locales != null) {
              for (final locale in locales) {
                if (supportedLocales.any(
                  (supported) => supported.languageCode == locale.languageCode,
                )) {
                  return locale;
                }
              }
            }
            return supportedLocales.first;
          },
          routerConfig: router,
        );
      },
    );
  }
}
