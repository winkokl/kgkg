import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:mgkaung_dms_mobile/core/presentation/theming/custom_colors.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/custom_button.dart';
import 'package:mgkaung_dms_mobile/core/presentation/widgets/table_text.dart';
import 'package:mgkaung_dms_mobile/features/core/widgets/custom_text_span.dart';

class FilePickerWidget extends StatefulWidget {
  final Function(File?) onFileSelected;

  const FilePickerWidget({Key? key, required this.onFileSelected}) : super(key: key);

  @override
  FilePickerWidgetState createState() => FilePickerWidgetState();
}

class FilePickerWidgetState extends State<FilePickerWidget> {
  File? selectedFile;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.single.path != null) {
      setState(() {
        selectedFile = File(result.files.single.path!);
      });

      // Pass the selected file back to the parent widget
      widget.onFileSelected(selectedFile);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          CustomTextSpan(
            textString: "Attachment ",
            textColor: secondaryTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 100, height: 30, child: ActionButton(onPressed: _pickFile, backgroundColor: const Color(0xff5c636a), label: "Browse")),
            const SizedBox(width: 10),
            selectedFile != null
                ? Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: HeaderTextSmall(selectedFile!.path.split('/').last, maxLines: 3)),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedFile = null;
                            });
                            widget.onFileSelected(null);
                          },
                          child: const HeaderTextSmall('Clear', color: errorColor),
                        )
                      ],
                    ))
                : const Text("No file selected"),
          ],
        ),
      ],
    );
  }
}
