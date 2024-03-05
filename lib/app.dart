import 'package:app_write_clone/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'src/commons/providers/view_password_change_nortifier.dart';
import 'src/modules/signup/providers/agree_to_tcs_change_nortifier.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ViewPasswordChangeNortifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => AgreeToTermsAndConditionsChangeNortifier(),
        ),
      ],
      child: const AppWidget(),
    );
  }
}
