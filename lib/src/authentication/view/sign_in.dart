import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignInForm(),
    );
  }
}

class SignInForm extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = GlobalKey<FormState>();
    // final authNotifierProvider = ref.watch(authProvider);
    return Container();
    /* return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.isSignedInOption!.foldMap(
          Monoid.instance('', (_, __) => Container()),
          (either) => either.fold(
            (failure) {
              return ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.map(
                      cancelByUser: (_) => 'Cancelled',
                      serverError: (_) => 'Server Error',
                      emailAlreadyUsed: (_) => 'Email is used',
                      invalidEmailPassword: (_) => 'Invalid Username/Password',
                    ),
                  ),
                ),
              );
            },
            (_) => {},
          ),
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: state.isShowErrorMessages! ? AutovalidateMode.onUserInteraction : AutovalidateMode.disabled,
          child: ListView(
            padding: EdgeInsets.all(Utils.dpOf(context, 3)),
            children: [
              Hero(
                tag: 'imageHero',
                child: Image.asset(
                  'assets/images/launcher_icon.png',
                  height: Utils.dpOf(context, 40),
                ),
              ),
              SizedBox(height: Utils.dpOf(context, 5)),
              TextInput(
                hintText: 'Email đăng nhập',
                autoCorrect: true,
                onChanged: (emailStr) => context.read<SignInFormBloc>().add(SignInFormEvent.emailChanged(emailStr)),
                validator: (emailStr) => context.read<SignInFormBloc>().state.emailAddress!.value.fold(
                      (f) => f.maybeMap(
                        invalidEmail: (e) => e.reason,
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              SizedBox(height: Utils.dpOf(context, 3)),
              TextInput(
                  suffixIcon: const Icon(Icons.remove_red_eye_outlined, color: AppColors.primary),
                  hintText: 'Mật khẩu',
                  autoCorrect: false,
                  obscureText: true,
                  onChanged: (passwordStr) =>
                      context.read<SignInFormBloc>().add(SignInFormEvent.passwordChanged(passwordStr)),
                  validator: (passwordStr) =>
                      context.read<SignInFormBloc>().state.password!.isEmpty ? 'Invalid password' : null),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: PrimaryButton(
                      onPressed: () {
                        context.read<SignInFormBloc>().add(const SignInFormEvent.signInEmailPasswordPressed());
                      },
                      text: 'Đăng nhập',
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: PrimaryButton(
                      onPressed: () {
                        // AutoRouter.of(context).replace(SignUpRoute());
                        context.read<SignInFormBloc>().add(const SignInFormEvent.signInEmailPasswordPressed());
                      },
                      text: 'Đăng ký',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              AppOutlineButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent.signInFacebookPressed());
                },
                text: 'Đăng nhập bằng Facebook',
              ),
              const SizedBox(height: 8),
              AppOutlineButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent.signInGooglePressed());
                },
                text: 'Đăng nhập bằng Google',
              ),
              const SizedBox(height: 8),
              AppOutlineButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent.signInStravaPressed());
                },
                text: 'Đăng nhập bằng Strava',
              ),
              const SizedBox(height: 8),
              AppOutlineButton(
                onPressed: () {
                  context.read<SignInFormBloc>().add(const SignInFormEvent.signInStravaPressed());
                },
                text: 'Logout',
              ),
              const SizedBox(height: 8),
              if (state.isSubmitting!) ...[const SizedBox(height: 8), const LinearProgressIndicator()]
            ],
          ),
        );
      },
    ); */
  }
}
