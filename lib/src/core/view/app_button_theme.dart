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
        : Theme.of(context).elevatedButtonTheme.style?.copyWith(
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

// class AppIconButton extends HookWidget {
//   final IconData icon;
//   final Function click;
//   const AppIconButton({
//     Key? key,
//     required this.icon,
//     required this.click,
//     color = AppColors.orange,
//     hoverColor = AppColors.lightOrange2,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final ValueNotifier<bool> _onHover = useState<bool>(false);
//     return GestureDetector(
//       onTap: () {
//         click();
//       },
//       child: FocusableActionDetector(
//         mouseCursor: SystemMouseCursors.click,
//         onShowHoverHighlight: (value) {
//           _onHover.value = value;
//         },
//         child: Center(
//           child: Container(
//               decoration: BoxDecoration(
//                 boxShadow: _onHover.value
//                     ? [
//                         const BoxShadow(
//                           color: AppColors.buttonShadow,
//                           spreadRadius: 0,
//                           offset: Offset(3, 5),
//                           blurRadius: 0,
//                           blurStyle: BlurStyle.normal,
//                         ),
//                       ]
//                     : [],
//                 borderRadius: BorderRadius.circular(AppSizesUnit.small8),
//               ),
//               child: Icon(icon, color: _onHover.value ? AppColors.lightOrange2 : AppColors.orange)),
//         ),
//       ),
//     );
//   }
// }
