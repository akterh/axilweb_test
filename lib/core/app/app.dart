import 'package:country_picker/country_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecom_axilweb/core/app/app_context.dart';
import 'package:ecom_axilweb/core/app/app_providers.dart';

import '../../presentation/router/routes.dart';
import '../../presentation/screens/no_internet/cubit/internet_cubit.dart';
import '../../presentation/screens/no_internet/no_internet_view.dart';
import '../../presentation/screens/theme/app_theme.dart';
import '../../presentation/screens/theme/cubit/theme_cubit.dart';

class InitApp extends StatelessWidget {
  const InitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: AppProviders.providers,
      child: const EcomApp(),
    );
  }
}

class EcomApp extends StatelessWidget {
  const EcomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return BlocConsumer<InternetCubit, InternetState>(
          listener: (context, internetState) {
            if (internetState.status == NetworkState.disconnected) {
              GetContext.to(const NoInternetScreen());
            }
          },
          builder: (context, state) {
            return ScreenUtilInit(
              designSize: const Size(430, 932), // App screen size
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (BuildContext context, Widget? child) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  child: MaterialApp(
                    scrollBehavior: ScrollConfiguration.of(context)
                        .copyWith(physics: const BouncingScrollPhysics()),
                    debugShowCheckedModeBanner: false,
                    title: 'ecom_axilweb',
                    navigatorKey: GetContext.navigatorKey,
                    theme: AppTheme.lightTheme,
                    builder: EasyLoading.init(),
                    onGenerateRoute: RouteGenerator.getRoute,
                    initialRoute: Routes.splash,
                    localizationsDelegates: [
                      ...context.localizationDelegates,
                      CountryLocalizations.delegate,
                    ],
                    supportedLocales: context.supportedLocales,
                    locale: context.locale,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
