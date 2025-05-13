// dropdown.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownCubit extends Cubit<Color> {
  DropdownCubit() : super(Colors.green); // Default is 'Online'

  void changeStatus(String status) {
    if (status == 'Online') {
      emit(Colors.green);
    } else if (status == 'Away') {
      emit(Colors.orange);
    } else {
      emit(Colors.grey); // fallback/default
    }
  }
}
