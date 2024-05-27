import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bintango_indonesian_translater/app/provider/app_start_provider.dart';
import 'package:bintango_indonesian_translater/feature/auth/widget/sign_in_page.dart';
import 'package:bintango_indonesian_translater/feature/home/widget/home_page.dart';
import 'package:bintango_indonesian_translater/shared/widget/connection_unavailable_widget.dart';
import 'package:bintango_indonesian_translater/shared/widget/loading_widget.dart';

class AppStartPage extends ConsumerWidget {
  const AppStartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appStartNotifierProvider);

    return state.when(
        data: (data) {
          return data.maybeWhen(
            initial: () => const LoadingWidget(),
            authenticated: HomePage.new,
            unauthenticated: SignInPage.new,
            internetUnAvailable: () => const ConnectionUnavailableWidget(),
            orElse: () => const LoadingWidget(),
          );
        },
        error: (e, st) {
          log('router error: $e, $st');
          return const LoadingWidget();
        },
        loading: () => const LoadingWidget());
  }
}
