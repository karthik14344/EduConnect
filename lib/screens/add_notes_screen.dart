import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AddNotesScreen extends ConsumerWidget {
  const AddNotesScreen({Key? key});

  // void navigateToType(BuildContext context, String type) {
  //   Routemaster.of(context).push("/add-posts/$type");
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double cardHeightWidth = 115;
    double iconSize = 60;

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: cardHeightWidth,
                width: cardHeightWidth,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 16,
                  child: Center(
                    child: Icon(
                      MdiIcons.image,
                      size: iconSize,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: cardHeightWidth,
                width: cardHeightWidth,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 16,
                  child: Center(
                    child: Icon(
                      MdiIcons.alphaABoxOutline,
                      size: iconSize,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                height: cardHeightWidth,
                width: cardHeightWidth,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 16,
                  child: Center(
                    child: Icon(
                      MdiIcons.fileUpload,
                      size: iconSize,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
