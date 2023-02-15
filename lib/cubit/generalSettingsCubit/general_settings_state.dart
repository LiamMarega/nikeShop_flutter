part of 'general_settings_cubit.dart';

class GeneralSettingsState extends Equatable {
  List allColors;
  Color primaryColor;
  Color secondaryColor;

  GeneralSettingsState(
    this.allColors, {
    this.primaryColor = Colors.white,
    this.secondaryColor = Colors.black,
  });

  GeneralSettingsState.init() : this([]);

  GeneralSettingsState copyWith({
    List? allColors,
    Color? primaryColor,
    Color? secondaryColor,
  }) {
    return GeneralSettingsState(
      allColors ?? this.allColors,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
    );
  }

  @override
  List<Object> get props => [allColors, primaryColor, secondaryColor];
}
