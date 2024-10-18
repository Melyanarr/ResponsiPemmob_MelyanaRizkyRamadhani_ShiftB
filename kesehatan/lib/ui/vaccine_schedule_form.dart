import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kesehatan/ui/theme_helper.dart';
import '../bloc/vaccine_schedule_bloc.dart';
import '../model/vaccine_schedule_model.dart';

class VaccineScheduleForm extends StatefulWidget {
  @override
  _VaccineScheduleFormState createState() => _VaccineScheduleFormState();
}

class _VaccineScheduleFormState extends State<VaccineScheduleForm> {
  final _formKey = GlobalKey<FormState>();
  String personName = '';
  String vaccineType = '';
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeHelper.lightYellowTheme(), // Set theme to light yellow with Helvetica
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add Vaccine Schedule', style: Theme.of(context).appBarTheme.titleTextStyle),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Person Name'),
                  style: Theme.of(context).textTheme.bodyLarge, // Apply text theme
                  validator: (value) => value!.isEmpty ? 'Please enter a name' : null,
                  onSaved: (value) => personName = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Vaccine Type'),
                  style: Theme.of(context).textTheme.bodyLarge, // Apply text theme
                  validator: (value) => value!.isEmpty ? 'Please enter a vaccine type' : null,
                  onSaved: (value) => vaccineType = value!,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Age'),
                  keyboardType: TextInputType.number,
                  style: Theme.of(context).textTheme.bodyLarge, // Apply text theme
                  validator: (value) => value!.isEmpty ? 'Please enter the age' : null,
                  onSaved: (value) => age = int.parse(value!),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow.shade400, // Set button color
                    textStyle: TextStyle(
                      fontFamily: 'Helvetica', 
                      fontSize: 16,
                    ),
                  ),
                  onPressed: _submitForm,
                  child: Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final newSchedule = VaccineSchedule(
        id: DateTime.now().millisecondsSinceEpoch, // auto-generated ID
        personName: personName,
        vaccineType: vaccineType,
        age: age,
      );
      BlocProvider.of<VaccineScheduleBloc>(context).addVaccineSchedule(newSchedule);
      Navigator.of(context).pop(); // Close the form
    }
  }
}
