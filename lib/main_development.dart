import 'package:easy_localization/easy_localization.dart';
import 'package:ecom_axilweb/presentation/components/custom_progress_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'core/app/app.dart';
import 'core/app/app_dependency.dart';
import 'core/app/app_flavor.dart';
import 'core/app_bloc_observer.dart';
import 'data/model/cart/cart_item_hive_model.dart';


void main() async {
  //Init Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter(); // initialize Hive

  Hive.registerAdapter(CartItemHiveModelAdapter()); // register adapter

  await Hive.openBox<CartItemHiveModel>('cart'); // open the box
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //Init easy localization
  await EasyLocalization.ensureInitialized();
  //Init modules
  configureInjection();
  //Init app flavor
  configLoading();
  AppFlavor.appFlavor = FlavorStatus.development;
  //Init my app with observer
  Bloc.observer = AppBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('de'),
      ],
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      saveLocale: true,
      path: 'assets/translations',
      child: const InitApp(),
    ),
  );
}
