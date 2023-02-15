import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

part 'general_settings_state.dart';

class GeneralSettingsCubit extends Cubit<GeneralSettingsState> {
  GeneralSettingsCubit() : super(GeneralSettingsState.init());
}
