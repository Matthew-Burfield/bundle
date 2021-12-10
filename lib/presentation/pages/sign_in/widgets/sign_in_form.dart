import 'package:bundle/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  children: [
                    const Icon(
                      Icons.warning,
                      color: Colors.red,
                      size: 20.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      failure.map(
                        cancelledByUser: (_) => 'Cancelled',
                        serverError: (_) => 'Server error',
                        emailAlreadyInUse: (_) => 'Email already in use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid email or password',
                      ),
                    ),
                  ],
                ),
              ));
            },
            (_) {
              // TODO: Navigate
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 130),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .read<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .read<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.read<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              Row(
                children: [
                  Expanded(
                      child: TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                          const SignInFormEvent.signInWithEmailAndPasswordPressed());
                    },
                    child: const Text('SIGN IN'),
                  )),
                  Expanded(
                      child: TextButton(
                    onPressed: () {
                      context.read<SignInFormBloc>().add(
                          const SignInFormEvent.registerWithEmailAndPasswordPressed());
                    },
                    child: const Text('REGISTER'),
                  )),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                child: const Text('SIGN IN WITH GOOGLE'),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator(
                  value: null,
                ),
              ]
            ],
          ),
        );
      },
    );
  }
}
