import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kesehatan/ui/theme_helper.dart';
import '../bloc/vaccine_schedule_bloc.dart';
import '../model/vaccine_schedule_model.dart';
import 'vaccine_schedule_detail.dart';
import 'vaccine_schedule_form.dart';

class VaccineSchedulePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeHelper.lightYellowTheme(), // Set theme to light yellow with Helvetica
      child: Scaffold(
        appBar: AppBar(
          title: Text('Vaccine Schedule', style: Theme.of(context).appBarTheme.titleTextStyle),
        ),
        body: BlocBuilder<VaccineScheduleBloc, List<VaccineSchedule>>(
          builder: (context, schedules) {
            return ListView.builder(
              itemCount: schedules.length,
              itemBuilder: (context, index) {
                final schedule = schedules[index];
                return ListTile(
                  title: Text(
                    '${schedule.personName} - ${schedule.vaccineType}',
                    style: Theme.of(context).textTheme.bodyLarge, // Apply text style from theme
                  ),
                  subtitle: Text(
                    'Age: ${schedule.age}',
                    style: Theme.of(context).textTheme.bodyMedium, // Apply text style from theme
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      BlocProvider.of<VaccineScheduleBloc>(context)
                          .removeVaccineSchedule(schedule.id);
                    },
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => VaccineScheduleDetail(schedule: schedule),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => VaccineScheduleForm(),
              ),
            );
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.yellow.shade400, // Set button color from theme
        ),
      ),
    );
  }
}
