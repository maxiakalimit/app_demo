import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:app_demo/data/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/home.dart';
import '../cubit/home_cubit.dart';
import 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return Scaffold(
      backgroundColor: styles.themeColor.whiteBase,
      appBar: AppBar(
        backgroundColor: styles.themeColor.whiteBase,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 0.0,
      ),
      body: BlocProvider<HomeCubit>(
        create: (context) => HomeCubit(
          getHomeUseCase: context.read<Repositories>().getHomeUseCase,
        )..get(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            Widget view = const SizedBox();

            state.when(
              success: (data) {
                view = HomeSuccessScreen(
                  data: data,
                );
              },
              error: (_, __) {
                view = HomeErrorScreen(
                  onPressed: () => context.read<HomeCubit>()..get(),
                );
              },
              loading: (Home? data) {
                view = data != null
                    ? HomeSuccessScreen(data: data)
                    : const HomeLoadingScreen();
              },
            );

            return view;
          },
        ),
      ),
    );
  }
}
