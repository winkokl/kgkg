import 'package:flutter/cupertino.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_theme.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/modal_sheet_ok_cancel_widget.dart';

class OptionWidget<T> extends StatefulWidget {
  const OptionWidget({
    super.key,
    required this.onSelect,
    required this.display,
    required this.currentValue,
    required this.data,
  });
  final OnSelect<T> onSelect;
  final String Function(T) display;
  final T currentValue;
  final List<T> data;

  @override
  State<OptionWidget<T>> createState() => _OptionWidgetState<T>();
}

class _OptionWidgetState<T> extends State<OptionWidget<T>> {
  late T currentVal;

  @override
  void initState() {
    currentVal = widget.currentValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      height: size.height * 0.27,
      child: Column(
        children: [
          ModalSheetOkCancelWidget(
            okCallback: () {
              if (!widget.data.contains(currentVal)) {
                widget.onSelect(widget.data.first);
              } else {
                widget.onSelect(currentVal);
              }
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            child: CupertinoPicker(
              scrollController: FixedExtentScrollController(
                initialItem: !widget.data.contains(currentVal) ? 0 : widget.data.indexOf(currentVal),
              ),
              itemExtent: 30,
              onSelectedItemChanged: (value) {
                SystemSound.play(SystemSoundType.click);
                HapticFeedback.lightImpact();
                setState(() {
                  currentVal = widget.data[value];
                });
              },
              children: widget.data
                  .map(
                    (e) => Center(
                      child: Text(
                        widget.display(e),
                        style: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}

class Option2Widget<T> extends StatefulWidget {
  const Option2Widget({
    super.key,
    required this.onSelect,
    required this.display,
    required this.currentValue1,
    required this.currentValue2,
    required this.data1,
    required this.data2,
  });
  final OnSelect2<T> onSelect;

  final String Function(T) display;

  final T currentValue1;
  final T currentValue2;

  final List<T> data1;
  final List<T> data2;

  @override
  State<Option2Widget<T>> createState() => _Option2WidgetState<T>();
}

class _Option2WidgetState<T> extends State<Option2Widget<T>> {
  late T currentVal1;
  late T currentVal2;

  @override
  void initState() {
    currentVal1 = widget.currentValue1;
    currentVal2 = widget.currentValue2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      height: size.height * 0.27,
      child: Column(
        children: [
          ModalSheetOkCancelWidget(
            okCallback: () {
              widget.onSelect(currentVal1, currentVal2);
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                      initialItem: widget.data1.indexOf(currentVal1),
                    ),
                    itemExtent: 30,
                    onSelectedItemChanged: (value) {
                      SystemSound.play(SystemSoundType.click);
                      HapticFeedback.lightImpact();
                      setState(() {
                        currentVal1 = widget.data1[value];
                      });
                    },
                    children: widget.data1
                        .map(
                          (e) => Center(
                            child: Text(
                              widget.display(e),
                              style: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                Expanded(
                  child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(
                      initialItem: widget.data2.indexOf(currentVal2),
                    ),
                    itemExtent: 30,
                    onSelectedItemChanged: (value) {
                      SystemSound.play(SystemSoundType.click);
                      HapticFeedback.lightImpact();
                      setState(() {
                        currentVal2 = widget.data2[value];
                      });
                    },
                    children: widget.data2
                        .map(
                          (e) => Center(
                            child: Text(
                              widget.display(e),
                              style: CustomTheme.appTheme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
