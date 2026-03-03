import 'package:flutter/material.dart';

class EditAndDeleteRowWidget extends StatelessWidget {
  const EditAndDeleteRowWidget({
    super.key,
    required this.editOnPressed,
    required this.deleteOnPressed,
  });

  final Function()? editOnPressed;
  final Function()? deleteOnPressed;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        SizedBox(
          width: 25,
          height: 25,
          child: TextButton(
              onPressed: editOnPressed,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit_note_outlined, size: 24),
                  // const SizedBox(width: 4),
                  // Text(
                  //   'ပြင်ရန်',
                  //   style: CustomTheme.appTheme.textTheme.bodySmall!
                  //       .copyWith(color: brandColor, fontSize: 10),
                  // )
                ],
              )),
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: 25,
          height: 25,
          child: TextButton(
              // style: OutlinedButton.styleFrom(
              //   foregroundColor: Colors.red,
              //   backgroundColor: bgWhite,
              //   side: const BorderSide(
              //     color: Colors.red,
              //   ),
              // ),
              onPressed: deleteOnPressed,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.close, color: Colors.red, size: 24),
                  // const SizedBox(width: 4),
                  // Text(
                  //   'ဖျက်ရန်',
                  //   style: CustomTheme.appTheme.textTheme.bodySmall!
                  //       .copyWith(color: Colors.red, fontSize: 10),
                  // )
                ],
              )),
        ),
      ],
    );
  }
}

class DeleteIconButton extends StatelessWidget {
  const DeleteIconButton({
    super.key,
    required this.deleteOnPressed,
  });

  final Function()? deleteOnPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: TextButton(
          // style: OutlinedButton.styleFrom(
          //   foregroundColor: Colors.red,
          //   backgroundColor: bgWhite,
          //   side: const BorderSide(
          //     color: Colors.red,
          //   ),
          // ),
          onPressed: deleteOnPressed,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.close, color: Colors.red, size: 24),
              // const SizedBox(width: 4),
              // Text(
              //   'ဖျက်ရန်',
              //   style: CustomTheme.appTheme.textTheme.bodySmall!
              //       .copyWith(color: Colors.red, fontSize: 10),
              // )
            ],
          )),
    );
  }
}
