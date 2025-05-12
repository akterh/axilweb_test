import 'package:ecom_axilweb/presentation/screens/cart/cubit/cart_cubit.dart';
import 'package:ecom_axilweb/presentation/screens/product/cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/screens/no_internet/cubit/internet_cubit.dart';
import '../../presentation/screens/theme/cubit/theme_cubit.dart';
import 'app_dependency.dart';

class AppProviders {
  static final providers = <BlocProvider>[
    BlocProvider<ThemeCubit>(
        create: (BuildContext context) => instance<ThemeCubit>()),
    BlocProvider<InternetCubit>(
        create: (BuildContext context) => instance<InternetCubit>()),
    BlocProvider<ProductCubit>(
        create: (BuildContext context) => instance<ProductCubit>()),
    BlocProvider<CartCubit>(
        create: (BuildContext context) => instance<CartCubit>()),
  ];
}
