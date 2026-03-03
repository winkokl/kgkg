import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProfileShimmer extends StatelessWidget {
  const ProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
            .map(
              (e) => const Padding(
                padding: EdgeInsets.all(8.0),
                child: ProfileRowShimmer(),
              ),
            )
            .toList(),
      ),
    );
  }
}

class ProfileRowShimmer extends StatelessWidget {
  const ProfileRowShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Row(
        children: [
          Container(
            height: 15,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
          const Spacer(),
          // Container(
          //   height: DefaultTextStyle.of(context).style.fontSize! * .8,
          //   width: 80,
          //   decoration: const BoxDecoration(
          //     color: Colors.grey,
          //     borderRadius: BorderRadius.all(
          //       Radius.circular(50),
          //     ),
          //   ),
          // ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   height: DefaultTextStyle.of(context).style.fontSize! * .8,
            //   width: 140,
            //   decoration: const BoxDecoration(
            //     color: Colors.grey,
            //     borderRadius: BorderRadius.all(
            //       Radius.circular(50),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 5),
            Container(
              height: 25,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
