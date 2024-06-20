part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle itemName;
  final TextStyle itemDescription;
  final TextStyle itemRatingDescription;

  final TextStyle iteminCartName;

  final TextStyle appBarStyle2;
  final TextStyle searchInput;

  ThemeTextStyles({
    required this.itemName,
    required this.itemDescription,
    required this.itemRatingDescription,
    required this.appBarStyle2,
    required this.searchInput,
    required this.iteminCartName,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? itemName,
    TextStyle? itemDescription,
    TextStyle? itemRatingDescription,
    TextStyle? appBarStyle2,
    TextStyle? searchInput,
    TextStyle? iteminCartName,
  }) =>
      ThemeTextStyles(
        itemName: itemName ?? this.itemName,
        itemDescription: itemDescription ?? this.itemDescription,
        itemRatingDescription:
            itemRatingDescription ?? this.itemRatingDescription,
        appBarStyle2: appBarStyle2 ?? this.appBarStyle2,
        searchInput: searchInput ?? this.searchInput,
        iteminCartName: iteminCartName ?? this.iteminCartName,
      );

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }

    return ThemeTextStyles(
      itemName: TextStyle.lerp(itemName, other.itemName, t)!,
      itemDescription:
          TextStyle.lerp(itemDescription, other.itemDescription, t)!,
      itemRatingDescription: TextStyle.lerp(
          itemRatingDescription, other.itemRatingDescription, t)!,
      appBarStyle2: TextStyle.lerp(appBarStyle2, other.appBarStyle2, t)!,
      searchInput: TextStyle.lerp(searchInput, other.searchInput, t)!,
      iteminCartName: TextStyle.lerp(iteminCartName, other.iteminCartName, t)!,
    );
  }

  static ThemeTextStyles get light => ThemeTextStyles(
        itemName: defaultText.copyWith(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
        itemDescription: defaultText.copyWith(
          height: 1,
        ),
        itemRatingDescription: defaultText.copyWith(
          fontSize: 10,
        ),
        appBarStyle2: defaultText.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        searchInput: defaultText,
        iteminCartName: defaultText.copyWith(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      );

  static ThemeTextStyles get dark => ThemeTextStyles(
        itemName: defaultText,
        itemDescription: defaultText,
        itemRatingDescription: defaultText,
        appBarStyle2: defaultText,
        searchInput: defaultText,
        iteminCartName: defaultText,
      );
}
