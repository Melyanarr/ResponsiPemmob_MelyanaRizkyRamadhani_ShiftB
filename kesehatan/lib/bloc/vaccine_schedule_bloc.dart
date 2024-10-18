import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kesehatan/model/vaccine_schedule_model.dart'; // Pastikan path-nya benar

// Menggunakan Cubit untuk state management
class VaccineScheduleBloc extends Cubit<List<VaccineSchedule>> {
  // Inisialisasi dengan list kosong
  VaccineScheduleBloc() : super([]);

  // Menambahkan jadwal vaksinasi baru
  void addVaccineSchedule(VaccineSchedule schedule) {
    final updatedList = List<VaccineSchedule>.from(state)..add(schedule);
    emit(updatedList); // Emit state baru agar UI diperbarui
  }

  // Menghapus jadwal vaksinasi berdasarkan id
  void removeVaccineSchedule(int id) {
    final updatedList = List<VaccineSchedule>.from(state)
      ..removeWhere((schedule) => schedule.id == id);
    emit(updatedList); // Emit state baru agar UI diperbarui
  }
}
