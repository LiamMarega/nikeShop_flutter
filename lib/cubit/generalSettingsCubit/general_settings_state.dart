part of 'general_settings_cubit.dart';

class GeneralSettingsState extends Equatable {
  List allColors;
  Color primaryBackground;
  Color secondaryBackground;
  bool loading;

  GeneralSettingsState(
    this.allColors, {
    this.primaryBackground = Colors.white,
    this.secondaryBackground = Colors.black,
    this.loading = false,
  });

  GeneralSettingsState.init() : this([]);

  GeneralSettingsState copyWith({
    List? allColors,
    bool? loading,
    Color? primaryBackground,
    Color? secondaryBackground,
  }) {
    return GeneralSettingsState(
      allColors ?? this.allColors,
      primaryBackground: primaryBackground ?? this.primaryBackground,
      loading: loading ?? this.loading,
      secondaryBackground: secondaryBackground ?? this.secondaryBackground,
    );
  }

  @override
  List<Object> get props =>
      [allColors, loading, primaryBackground, secondaryBackground];
}
