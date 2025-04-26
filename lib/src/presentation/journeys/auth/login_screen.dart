import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:dailoz_app/src/presentation/journeys/auth/widgets/auth_widgets.dart';
import 'package:dailoz_app/src/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.sizeOf(context).height - kToolbarHeight,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 40),
                AppTextField(
                  controller: _emailController,
                  labelText: 'Email ID or Username',
                  prefixIcon: Assets.icons.message.svg(
                    height: 24,
                    width: 24,
                  ),
                ),
                const SizedBox(height: 20),
                AppTextField(
                  controller: _passwordController,
                  labelText: 'Password',
                  prefixIcon: Assets.icons.lock.svg(
                    height: 24,
                    width: 24,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Login'),
                ),
                const SizedBox(height: 40),
                const TextDivider(text: 'or with'),
                const SizedBox(height: 40),
                SocialIconsWidget(
                  onFacebookPressed: () {},
                  onGooglePressed: () {},
                ),
                const Spacer(),
                LoginSignupSwitcherWidget(
                  onPressed: () {},
                  isLogin: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
