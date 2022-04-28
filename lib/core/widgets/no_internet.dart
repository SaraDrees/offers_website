import 'package:flutter/material.dart';

class NoInternetConnection extends StatelessWidget {
  final Function? onRetryFunction;
  const NoInternetConnection({Key? key, required this.onRetryFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          width: 200,
          height: 250,
          child: Image(
            image: AssetImage("assets/images/internet.png"),
          ),
        ),
        //Text(LocaleKeys.checkInternet.tr()),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => onRetryFunction!(),
          child: const Text("إعادة المحاولة"),
        ),
      ],
    );
  }
}
