import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/features/trip_sale/domain/trip_prposal.dart';

class TripAssigneeTab extends StatelessWidget {
  const TripAssigneeTab({super.key, required this.tripProposal});
  final TripProposal tripProposal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 440,
          child: SingleChildScrollView(
            child: DataTable(
                columnSpacing: 40,
                border: TableBorder.symmetric(outside: const BorderSide(color: Color(0xffDFDFDF))),
                dataRowColor: MaterialStateProperty.all(bgWhite),
                headingRowColor: MaterialStateProperty.all(const Color(0xffFBFAFA)),
                columns: const [
                  DataColumn(label: Flexible(child: HeaderText('Name'))),
                  DataColumn(label: Flexible(child: HeaderText('Phone Number'))),
                  DataColumn(label: Flexible(child: HeaderText('Role'))),
                ],
                rows: List.generate(tripProposal.assigneeData.length, (index) {
                  return DataRow(cells: [
                    DataCell(HeaderText(tripProposal.assigneeData[index].name)),
                    DataCell(HeaderText(tripProposal.assigneeData[index].phoneNumber)),
                    DataCell(HeaderText(tripProposal.assigneeData[index].role)),
                  ]);
                })),
          ),
        ),
      ),
    );
  }
}
