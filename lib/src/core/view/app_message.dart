part of 'theme.dart';

extension XFlushbar on Flushbar {
  Flushbar normal(String message) {
    return _defaultFlushbar(message: message);
  }

  Flushbar success(String message) {
    return _defaultFlushbar(message: message, style: FlushbarStyle.success);
  }

  Flushbar error(String message) {
    return _defaultFlushbar(message: message, style: FlushbarStyle.error);
  }
}

enum FlushbarStyle {
  normal,
  success,
  error,
}

Flushbar _defaultFlushbar({required String message, style = FlushbarStyle.normal}) {
  final backgroundColor = style == FlushbarStyle.normal
      ? AppColors.secondaryBlue
      : style == FlushbarStyle.error
          ? AppColors.darkRed
          : AppColors.darkEmerald;
  return Flushbar(
    message: message,
    backgroundColor: backgroundColor,
    messageColor: AppColors.white,
    flushbarPosition: FlushbarPosition.TOP,
    duration: const Duration(seconds: 3),
    mainButton: Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Padding(
          padding: EdgeInsets.only(right: 17.5),
          child: Icon(
            AppIcons.close,
            color: AppColors.white,
          ),
        ),
      );
    }),
    padding: const EdgeInsets.all(17.5),
  );
}
