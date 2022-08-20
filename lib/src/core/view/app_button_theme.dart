part of 'themes.dart';

enum ButtonSize {
  small,
  medium,
  large,
}

extension XElevatedButton on ElevatedButton {
  ElevatedButton _size({required BuildContext context, ButtonSize size = ButtonSize.large}) {
    final verticalPadding = size == ButtonSize.small
        ? 7.0
        : size == ButtonSize.medium
            ? 13.0
            : 17.0;
    final finalStyle = style != null
        ? style!.copyWith(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 20)))
        : Theme.of(context).elevatedButtonTheme.style != null
            ? Theme.of(context).elevatedButtonTheme.style!.copyWith(
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 20)))
            : ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 20)));
    return ElevatedButton(
      onPressed: onPressed,
      style: finalStyle,
      child: child,
    );
  }

  ElevatedButton large(BuildContext context) {
    return _size(context: context);
  }

  ElevatedButton medium(BuildContext context) {
    return _size(context: context, size: ButtonSize.medium);
  }

  ElevatedButton small(BuildContext context) {
    return _size(context: context, size: ButtonSize.small);
  }
}

extension XOutlinedButton on OutlinedButton {
  OutlinedButton _size({required BuildContext context, ButtonSize size = ButtonSize.large}) {
    final verticalPadding = size == ButtonSize.small
        ? 7.0
        : size == ButtonSize.medium
            ? 13.0
            : 17.0;
    final finalStyle = style != null
        ? style!.copyWith(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 20)))
        : Theme.of(context).outlinedButtonTheme.style?.copyWith(
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 20)));
    return OutlinedButton(
      onPressed: onPressed,
      style: finalStyle,
      child: child ?? Container(),
    );
  }

  OutlinedButton large(BuildContext context) {
    return _size(context: context);
  }

  OutlinedButton medium(BuildContext context) {
    return _size(context: context, size: ButtonSize.medium);
  }

  OutlinedButton small(BuildContext context) {
    return _size(context: context, size: ButtonSize.small);
  }
}
