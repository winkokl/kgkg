import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_pop_up_menu_button.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/decorated_container.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AmountOrPecentStatusWidget extends ConsumerWidget {
  const AmountOrPecentStatusWidget({
    super.key,
    required this.selecetedType,
    required this.onSelect,
    required this.isSelectable,
  });
  final AmountOrPercentStatus selecetedType;
  final VoidCallback onSelect;
  final bool isSelectable;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey menuKey = GlobalKey();

    return DecoratedContainer(
        height: 30,
        width: 74,
        radius: 4,
        border: Border.all(color: const Color(0xff8095BA).withOpacity(0.5)),
        color: const Color(0xffF4F8FD),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: InkWell(
                  onTap: isSelectable
                      ? () {
                          dynamic state = menuKey.currentState;
                          state.showButtonMenu();
                        }
                      : null,
                  child: Center(child: HeaderTextSmall(selecetedType.name, color: brandColor)),
                )),
            Expanded(
              child: CustomPopUpMenuButton(
                menuKey: menuKey,
                dy: 30,
                boxConstraints: const BoxConstraints(minWidth: 74),
                iconData: Icons.expand_more_outlined,
                popupMenuEntries: isSelectable ? [CustomPopUpMenuItem(isLast: true, title: selecetedType == AmountOrPercentStatus.amount ? AmountOrPercentStatus.percent.name : AmountOrPercentStatus.amount.name, ontap: isSelectable ? onSelect : null)] : [],
              ),
            ),
          ],
        ));
  }
}
