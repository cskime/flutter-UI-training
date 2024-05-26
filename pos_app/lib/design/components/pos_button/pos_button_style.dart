part of 'pos_button.dart';

enum POSButtonStyle {
  primary,
  secondary;

  Color backgroundColor({required bool isSelected}) => switch (this) {
        POSButtonStyle.primary =>
          isSelected ? const Color(0xFF3436B1) : Palette.primary,
        POSButtonStyle.secondary => Colors.white,
      };

  Color get foregroundColor => switch (this) {
        POSButtonStyle.primary => Colors.white,
        POSButtonStyle.secondary => Palette.primary,
      };
}
