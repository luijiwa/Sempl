part of '../theme.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle itemName;
  final TextStyle itemDescription;
  final TextStyle itemRatingDescription;

  final TextStyle searchHint;
  final TextStyle searchInput;

  ThemeTextStyles({
    required this.itemName,
    required this.itemDescription,
    required this.itemRatingDescription,
    required this.searchHint,
    required this.searchInput,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? itemName,
    TextStyle? itemDescription,
    TextStyle? itemRatingDescription,
    TextStyle? searchHint,
    TextStyle? searchInput,
  }) =>
      ThemeTextStyles(
        itemName: itemName ?? this.itemName,
        itemDescription: itemDescription ?? this.itemDescription,
        itemRatingDescription:
            itemRatingDescription ?? this.itemRatingDescription,
        searchHint: searchHint ?? this.searchHint,
        searchInput: searchInput ?? this.searchInput,
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
      searchHint: TextStyle.lerp(searchHint, other.searchHint, t)!,
      searchInput: TextStyle.lerp(searchInput, other.searchInput, t)!,
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
        searchHint: defaultText,
        searchInput: defaultText,
      );

  static ThemeTextStyles get dark => ThemeTextStyles(
        itemName: defaultText,
        itemDescription: defaultText,
        itemRatingDescription: defaultText,
        searchHint: defaultText,
        searchInput: defaultText,
      );
}
