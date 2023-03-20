
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:stacked_mvvm/views/startup/startup_viewModel.dart';

//View hold he UI stuff

class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => StartupViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           // model.navigateToHome();
          },
        ),
      ),
    );
  }
}
