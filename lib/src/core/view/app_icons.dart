part of 'themes.dart';

class AppIcons {
  AppIcons._();

  static const String _fontFamily = 'Kyons Icons';

  static const IconData add = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData addToHandbook = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData addFriend = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData arrowDown = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData arrowDownStop = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData arrowLeft = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData arrowLeftStop = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData arrowRight = IconData(0xe908, fontFamily: _fontFamily);
  static const IconData arrowRightStop = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData arrowUp = IconData(0xe90a, fontFamily: _fontFamily);
  static const IconData arrowUpStop = IconData(0xe909, fontFamily: _fontFamily);
  static const IconData birthday = IconData(0xe90b, fontFamily: _fontFamily);
  static const IconData bookmark = IconData(0xe90c, fontFamily: _fontFamily);
  static const IconData calendar = IconData(0xe90d, fontFamily: _fontFamily);
  static const IconData carousel = IconData(0xe90e, fontFamily: _fontFamily);
  static const IconData check = IconData(0xe90f, fontFamily: _fontFamily);
  static const IconData close = IconData(0xe910, fontFamily: _fontFamily);
  static const IconData document = IconData(0xe911, fontFamily: _fontFamily);
  static const IconData edit = IconData(0xe912, fontFamily: _fontFamily);
  static const IconData email = IconData(0xe913, fontFamily: _fontFamily);
  static const IconData filter = IconData(0xe914, fontFamily: _fontFamily);
  static const IconData hanbook = IconData(0xe915, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe916, fontFamily: _fontFamily);
  static const IconData info = IconData(0xe917, fontFamily: _fontFamily);
  static const IconData lessonContent = IconData(0xe918, fontFamily: _fontFamily);
  static const IconData location = IconData(0xe919, fontFamily: _fontFamily);
  static const IconData menu = IconData(0xe91a, fontFamily: _fontFamily);
  static const IconData more = IconData(0xe91b, fontFamily: _fontFamily);
  static const IconData notification = IconData(0xe91c, fontFamily: _fontFamily);
  static const IconData phone = IconData(0xe91d, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe91e, fontFamily: _fontFamily);
  static const IconData reload = IconData(0xe91f, fontFamily: _fontFamily);
  static const IconData removeFromHandbook = IconData(0xe920, fontFamily: _fontFamily);
  static const IconData search = IconData(0xe921, fontFamily: _fontFamily);
  static const IconData submit = IconData(0xe922, fontFamily: _fontFamily);
  static const IconData subtract = IconData(0xe923, fontFamily: _fontFamily);
  static const IconData test = IconData(0xe924, fontFamily: _fontFamily);
  static const IconData thumbnail = IconData(0xe925, fontFamily: _fontFamily);
  static const IconData time = IconData(0xe926, fontFamily: _fontFamily);
  static const IconData tutor = IconData(0xe927, fontFamily: _fontFamily);
  static const IconData work = IconData(0xe928, fontFamily: _fontFamily);

  static const Widget menuIcon = MouseRegion(
    cursor: SystemMouseCursors.click,
    child: SizedBox(
      width: 48.0,
      height: 48.0,
      child: Icon(
        AppIcons.menu,
        color: AppColors.orange,
      ),
    ),
  );

  static const Widget backIcon = MouseRegion(
    cursor: SystemMouseCursors.click,
    child: SizedBox(
      width: 48.0,
      height: 48.0,
      child: Icon(
        AppIcons.arrowLeft,
        color: AppColors.orange,
      ),
    ),
  );
}

class ElevatedIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;
  const ElevatedIconButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 48.0,
        width: 48.0,
        decoration: BoxDecoration(
          color: AppColors.orange,
          borderRadius: BorderRadius.circular(AppSizesUnit.small8),
          boxShadow: [
            BoxShadow(
              color: AppColors.orange.withOpacity(0.2),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Center(child: Icon(icon, color: AppColors.white)),
      ),
    );
  }
}
