import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/constants.dart';
import 'package:mgkaung_dms_mobile/core/enums/amount_or_percent_status.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/form_text_input.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/amount_or_pecent_status_widget.dart';

class DisabledProductForm extends StatelessWidget {
  const DisabledProductForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: whiteContainerDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeaderText("Add New Product", color: Color(0xff002C76)),
                TextButton(
                  child: const HeaderText('Clear', color: errorColor),
                  onPressed: () {},
                )
              ],
            ),
            const SizedBox(height: 20),
            const FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Product Code",
              hintText: "Select a product code",
            ),
            const SizedBox(height: 20),
            const FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Product Name",
              hintText: "Product Name",
            ),
            const SizedBox(height: 20),
            const FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Unit",
              hintText: "Unit",
            ),
            const SizedBox(height: 20),
            const FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Sale Price",
              hintText: "Sale Price",
            ),
            const SizedBox(height: 20),
            const FormTextInput(
              label: "Quantity",
              isReadOnly: true,
              keyboardType: TextInputType.number,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              hintText: "Quantity",
            ),
            const SizedBox(height: 20),
            const FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Amount",
              hintText: "Amount",
            ),
            const SizedBox(height: 20),
            FormTextInput(
              label: "Discount",
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              hintText: "Discount",
              suffixicon: AmountOrPecentStatusWidget(
                isSelectable: false,
                onSelect: () {},
                selecetedType: AmountOrPercentStatus.amount,
              ),
            ),
            const SizedBox(height: 20),
            FormTextInput(
              label: "Tax",
              keyboardType: TextInputType.number,
              isReadOnly: true,
              hintText: "Tax",
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              suffixicon: AmountOrPecentStatusWidget(
                isSelectable: false,
                onSelect: () {},
                selecetedType: AmountOrPercentStatus.amount,
              ),
            ),
            const SizedBox(height: 20),
            const FormTextInput(
              isReadOnly: true,
              fillColor: textFieldFillColor,
              textStyle: readOnlyTextStyle,
              label: "Total Amount",
              hintText: "Total Amount",
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
