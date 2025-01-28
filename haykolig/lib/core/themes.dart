import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283390866),
      surfaceTint: Color(4283390866),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4292731391),
      onPrimaryContainer: Color(4281811833),
      secondary: Color(4284112242),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292796921),
      onSecondaryContainer: Color(4282533465),
      tertiary: Color(4285879406),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957044),
      onTertiaryContainer: Color(4284235094),
      error: Color.fromARGB(255, 255, 89, 70),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color.fromARGB(255, 255, 89, 70),
      surface: Color(4294703359),
      onSurface: Color(4279900961),
      onSurfaceVariant: Color(4282730063),
      outline: Color(4285953664),
      outlineVariant: Color(4291216848),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4290299135),
      primaryFixed: Color(4292731391),
      onPrimaryFixed: Color(4278589003),
      primaryFixedDim: Color(4290299135),
      onPrimaryFixedVariant: Color(4281811833),
      secondaryFixed: Color(4292796921),
      onSecondaryFixed: Color(4279704364),
      secondaryFixedDim: Color(4290954717),
      onSecondaryFixedVariant: Color(4282533465),
      tertiaryFixed: Color(4294957044),
      onTertiaryFixed: Color(4281078313),
      tertiaryFixedDim: Color(4293180121),
      onTertiaryFixedVariant: Color(4284235094),
      surfaceDim: Color(4292598240),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243066),
      surfaceContainer: Color(4293914100),
      surfaceContainerHigh: Color(4293519343),
      surfaceContainerHighest: Color(4293124585),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280627815),
      surfaceTint: Color(4283390866),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284312226),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281414984),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285033601),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283051077),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286931582),
      onTertiaryContainer: Color(4294967295),
      error: Color.fromARGB(255, 255, 89, 70),
      onError: Color(4294967295),
      errorContainer: Color.fromARGB(255, 255, 89, 70),
      onErrorContainer: Color(4294967295),
      surface: Color(4294703359),
      onSurface: Color(4279243030),
      onSurfaceVariant: Color(4281677374),
      outline: Color(4283519579),
      outlineVariant: Color(4285295734),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4290299135),
      primaryFixed: Color(4284312226),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282733192),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285033601),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283454568),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286931582),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285221477),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4291282381),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243066),
      surfaceContainer: Color(4293519343),
      surfaceContainerHigh: Color(4292730083),
      surfaceContainerHighest: Color(4292006360),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279904348),
      surfaceTint: Color(4283390866),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281943675),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280757053),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282665052),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282327610),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284366681),
      onTertiaryContainer: Color(4294967295),
      error: Color.fromARGB(255, 255, 89, 70),
      onError: Color(4294967295),
      errorContainer: Color.fromARGB(255, 255, 89, 70),
      onErrorContainer: Color(4294967295),
      surface: Color(4294703359),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4278190080),
      outline: Color(4280953908),
      outlineVariant: Color(4282927441),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282614),
      inversePrimary: Color(4290299135),
      primaryFixed: Color(4281943675),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280430435),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282665052),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281217604),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284366681),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282788161),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4290361535),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294111479),
      surfaceContainer: Color(4293124585),
      surfaceContainerHigh: Color(4292203483),
      surfaceContainerHighest: Color(4291282381),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290299135),
      surfaceTint: Color(4290299135),
      onPrimary: Color(4280233313),
      primaryContainer: Color(4281811833),
      onPrimaryContainer: Color(4292731391),
      secondary: Color(4290954717),
      onSecondary: Color(4281085762),
      secondaryContainer: Color(4282533465),
      onSecondaryContainer: Color(4292796921),
      tertiary: Color(4293180121),
      onTertiary: Color(4282591039),
      tertiaryContainer: Color(4284235094),
      onTertiaryContainer: Color(4294957044),
      error: Color.fromARGB(255, 255, 89, 70),
      onError: Color.fromARGB(255, 255, 89, 70),
      errorContainer: Color.fromARGB(255, 255, 89, 70),
      onErrorContainer: Color(4294957782),
      surface: Color(4279374616),
      onSurface: Color(4293124585),
      onSurfaceVariant: Color(4291216848),
      outline: Color(4287664282),
      outlineVariant: Color(4282730063),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inversePrimary: Color(4283390866),
      primaryFixed: Color(4292731391),
      onPrimaryFixed: Color(4278589003),
      primaryFixedDim: Color(4290299135),
      onPrimaryFixedVariant: Color(4281811833),
      secondaryFixed: Color(4292796921),
      onSecondaryFixed: Color(4279704364),
      secondaryFixedDim: Color(4290954717),
      onSecondaryFixedVariant: Color(4282533465),
      tertiaryFixed: Color(4294957044),
      onTertiaryFixed: Color(4281078313),
      tertiaryFixedDim: Color(4293180121),
      onTertiaryFixedVariant: Color(4284235094),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4281874751),
      surfaceContainerLowest: Color(4279045651),
      surfaceContainerLow: Color(4279900961),
      surfaceContainer: Color(4280229669),
      surfaceContainerHigh: Color(4280887855),
      surfaceContainerHighest: Color(4281611322),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4292205311),
      surfaceTint: Color(4290299135),
      onPrimary: Color(4279443797),
      primaryContainer: Color(4286680776),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4292402163),
      onSecondary: Color(4280362294),
      secondaryContainer: Color(4287401894),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294693103),
      onTertiary: Color(4281867316),
      tertiaryContainer: Color(4289430946),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294955724),
      onError: Color.fromARGB(255, 255, 89, 70),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4292664294),
      outline: Color(4289835451),
      outlineVariant: Color(4287598489),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inversePrimary: Color(4281877882),
      primaryFixed: Color(4292731391),
      onPrimaryFixed: Color(4278192955),
      primaryFixedDim: Color(4290299135),
      onPrimaryFixedVariant: Color(4280627815),
      secondaryFixed: Color(4292796921),
      onSecondaryFixed: Color(4278980641),
      secondaryFixedDim: Color(4290954717),
      onSecondaryFixedVariant: Color(4281414984),
      tertiaryFixed: Color(4294957044),
      onTertiaryFixed: Color(4280289054),
      tertiaryFixedDim: Color(4293180121),
      onTertiaryFixedVariant: Color(4283051077),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4282664010),
      surfaceContainerLowest: Color(4278585100),
      surfaceContainerLow: Color(4280098083),
      surfaceContainer: Color(4280756013),
      surfaceContainerHigh: Color(4281479736),
      surfaceContainerHighest: Color(4282203459),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293849087),
      surfaceTint: Color(4290299135),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289970429),
      onPrimaryContainer: Color(4278191917),
      secondary: Color(4293849087),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290691545),
      onSecondaryContainer: Color(4278585883),
      tertiary: Color(4294961911),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292916949),
      onTertiaryContainer: Color(4279829272),
      error: Color(4294962409),
      onError: Color(4278190080),
      errorContainer: Color(4294946468),
      onErrorContainer: Color(4280418305),
      surface: Color(4279374616),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294967295),
      outline: Color(4293980154),
      outlineVariant: Color(4290953932),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124585),
      inversePrimary: Color(4281877882),
      primaryFixed: Color(4292731391),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290299135),
      onPrimaryFixedVariant: Color(4278192955),
      secondaryFixed: Color(4292796921),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290954717),
      onSecondaryFixedVariant: Color(4278980641),
      tertiaryFixed: Color(4294957044),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293180121),
      onTertiaryFixedVariant: Color(4280289054),
      surfaceDim: Color(4279374616),
      surfaceBright: Color(4283387734),
      surfaceContainerLowest: Color(4278190080),
      surfaceContainerLow: Color(4280229669),
      surfaceContainer: Color(4281282614),
      surfaceContainerHigh: Color(4282071873),
      surfaceContainerHighest: Color(4282795596),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
