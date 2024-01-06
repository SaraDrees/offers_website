import 'package:flutter/material.dart';
import 'package:offers_website/core/services/size_configration.dart';

class NoResults extends StatelessWidget {
  const NoResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenSizer(builder: (customSize) {
      return Center(
        child: Column(
          children: [
            SizedBox(height: customSize.setHeight(100)),
            SizedBox(
              width: customSize.setWidth(500),
              height: customSize.setHeight(600),
              child: const Image(
                  image: AssetImage("assets/images/no_results.png")),
            ),
            SizedBox(
              height: customSize.setHeight(100),
              child: const Text('no result'),
            ),

          ],
        ),
      );
    });
  }
}
