import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SocialIconsWidget extends StatelessWidget {
  const SocialIconsWidget({
    required this.onFacebookPressed,
    required this.onGooglePressed,
    super.key,
  });

  final void Function() onFacebookPressed;
  final void Function() onGooglePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onFacebookPressed,
          icon: Assets.images.facebook.image(
            height: 24,
            width: 24,
          ),
        ),
        IconButton(
          onPressed: onGooglePressed,
          icon: Assets.images.google.image(
            height: 24,
            width: 24,
          ),
        ),
      ],
    );
  }
}
