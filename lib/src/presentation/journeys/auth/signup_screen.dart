import 'package:dailoz_app/gen/assets.gen.dart';
import 'package:dailoz_app/src/presentation/journeys/auth/widgets/auth_widgets.dart';
import 'package:dailoz_app/src/presentation/widgets/app_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: BlocProvider(
        create: (context) => PasswordObscureCubit(),
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height - kToolbarHeight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign up',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 60),
                  AppTextField(
                    controller: _usernameController,
                    labelText: 'Enter Username',
                    prefixIcon: Assets.icons.message.svg(),
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    controller: _emailController,
                    labelText: 'Enter Email',
                    prefixIcon: Assets.icons.message.svg(),
                  ),
                  const SizedBox(height: 20),
                  AppTextField(
                    controller: _passwordController,
                    labelText: 'Enter Password',
                    prefixIcon: Assets.icons.lock.svg(),
                    suffixIcon: IconButton(
                      icon: BlocBuilder<PasswordObscureCubit, bool>(
                        builder: (context, state) {
                          if (state) {
                            return Assets.icons.eye.svg(
                              width: 24,
                              height: 24,
                            );
                          }
                          return Assets.icons.eyeHidden.svg(
                            width: 24,
                            height: 24,
                          );
                        },
                      ),
                      onPressed: () {
                        context.read<PasswordObscureCubit>().toggle();
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        maximumSize: const Size(48, 48),
                        padding: EdgeInsets.zero,
                        shape: const RoundedRectangleBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Sign up'),
                  ),
                  const SizedBox(height: 40),
                  const TextDivider(text: 'or with'),
                  const SizedBox(height: 20),
                  SocialIconsWidget(
                    onFacebookPressed: () {},
                    onGooglePressed: () {},
                  ),
                  const Spacer(),
                  LoginSignupSwitcherWidget(
                    onPressed: () {},
                    isLogin: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordObscureCubit extends Cubit<bool> {
  PasswordObscureCubit() : super(true);

  void toggle() {
    emit(!state);
  }
}
