import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/main.dart';
import 'package:kyons_flutter/src/core/helper/translate.dart';
import 'package:kyons_flutter/src/core/view/assets.dart';
import 'package:kyons_flutter/src/core/view/themes.dart';
import 'package:kyons_flutter/src/navigation/view/app_bar.dart';
import 'package:kyons_flutter/src/navigation/view/app_drawer.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int _selectedSubject = 0;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: const MainAppBar(),
        endDrawer: const AppDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  AppSizesUnit.large48 -
                  AppSizesUnit.medium24 -
                  const MainAppBar().preferredSize.height,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  AppSizesUnit.medium24,
                  AppSizesUnit.medium36,
                  AppSizesUnit.medium24,
                  AppSizesUnit.large48,
                ),
                child: Center(
                  child: Column(
                    children: [
                      AppAssets.chooseSubjectSVG,
                      AppSizesUnit.sizedBox24,
                      Text(
                        t(context).choose_subject_and_program,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Expanded(child: Container()),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: ElevatedIconButton(
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (BuildContext context) {
                                    return SafeArea(
                                      child: Wrap(
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context).size.height - 150,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                const SizedBox(height: AppSizesUnit.medium24 - 6),
                                                Center(
                                                  child: CustomPaint(
                                                    painter: LinePainter(),
                                                  ),
                                                ),
                                                const SizedBox(height: AppSizesUnit.large48),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        t(context).choose_subject_and_program_headline,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .headline4!
                                                            .copyWith(color: AppColors.white),
                                                      ),
                                                      const SizedBox(height: AppSizesUnit.large48),
                                                      const CupertinoPickerSample(),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                                  child: Container(),
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              icon: KyonsIcons.add,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(-30, 0);
    const p2 = Offset(30, 0);
    canvas.drawLine(
        p1,
        p2,
        Paint()
          ..color = AppColors.orange
          ..strokeWidth = 6.0
          ..strokeCap = StrokeCap.round);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CupertinoPickerSample extends StatefulWidget {
  const CupertinoPickerSample({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerSample> createState() => _CupertinoPickerSampleState();
}

class _CupertinoPickerSampleState extends State<CupertinoPickerSample> {
  int _selectedSubject = 0;

  // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoPicker.
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        barrierColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    const double _kItemExtent = 32.0;
    final List<String> _fruitNames = <String>[
      firstCapital(t(context).select_thing(t(context).subject)),
      t(context).math,
      t(context).english,
    ];
    return GestureDetector(
      // Display a CupertinoPicker with list of fruits.
      onTap: () => _showDialog(
        CupertinoPicker(
          magnification: 1.22,
          squeeze: 1.2,
          useMagnifier: true,
          itemExtent: _kItemExtent,
          // This is called when selected item is changed.
          onSelectedItemChanged: (int selectedItem) {
            setState(() {
              _selectedSubject = selectedItem;
            });
          },
          children: List<Widget>.generate(_fruitNames.length, (int index) {
            return Center(
              child: Text(
                _fruitNames[index],
              ),
            );
          }),
        ),
      ),
      child: FocusableActionDetector(
        mouseCursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9.5),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppSizesUnit.small5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _fruitNames[_selectedSubject],
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Icon(
                AppIcons.arrowDown,
                color: AppColors.primaryBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
