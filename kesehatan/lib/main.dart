import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/vaccine_schedule_bloc.dart';
import 'ui/vaccine_schedule_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VaccineScheduleBloc(),
      child: MaterialApp(
        title: 'Vaccine Schedule',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: VaccineSchedulePage(),
      ),
    );
  }
}
