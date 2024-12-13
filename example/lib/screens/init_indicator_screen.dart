import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';

import '../widgets/example_app_bar.dart';
import '../widgets/example_list.dart';

class InitIndicatorScreen extends StatelessWidget {
  const InitIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ExampleAppBar(
        title: 'Initial Indicator',
      ),
      body: CustomMaterialIndicator(
        onInitialize: () async =>
            await Future.delayed(const Duration(seconds: 4)),
        onRefresh: () async => await Future.delayed(const Duration(seconds: 2)),
        backgroundColor: Colors.white,
        child: const ExampleList(),
      ),
    );
  }
}
