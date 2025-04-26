import 'package:dailoz_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';

class LoginSignupSwitcherWidget extends StatelessWidget {
  const LoginSignupSwitcherWidget({
    required this.onPressed,
    required this.isLogin,
    super.key,
  });

  final void Function() onPressed;
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: isLogin
                        ? "Don't have an account? "
                        : 'Already have an account? ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.sanJuan,
                        ),
                  ),
                  TextSpan(
                    text: isLogin ? 'Sign up' : 'Login',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.sanJuan,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
