import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/Constants/app_theme.dart';
import 'features/dashboard/bloc/dashbaord_bloc.dart';
import 'features/dashboard/bloc/dashboard_event.dart';
import 'features/dashboard/data/dashboard_repository_impl.dart';
import 'features/dashboard/pages/dashbaord_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: BlocProvider(
        create: (_) => DashboardBloc(
          DashboardRepositoryImpl(),
        )..add(
          LoadDashboard(),
        ),
        child: const DashboardPage(),
      ),
    );
  }
}