import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_pool/language/languageCubit.dart';
import 'package:go_pool/language/locale.dart';
import 'package:go_pool/screens/auth/login_navigator.dart';
import 'package:go_pool/theme/style.dart';

import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    {
      return BlocProvider<LanguageCubit>(
        create: (context) => LanguageCubit(),
        child: BlocBuilder<LanguageCubit, Locale>(
          builder: (_, locale) {
            return MaterialApp(
              localizationsDelegates: [
                const AppLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en'),
                const Locale('ar'),
                const Locale('pt'),
                const Locale('fr'),
                const Locale('id'),
                const Locale('es'),
                const Locale('tr'),
                const Locale('it'),
                const Locale('sw'),
              ],
              routes: PageRoutes().routes(),
              locale: locale,
              theme: uiTheme(),
              home: LoginNavigator(),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      );
    }
  }
}
