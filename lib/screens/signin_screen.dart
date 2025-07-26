import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'confirmEmail_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LogoTextWidget(),
              SizedBox(height: 12),
              TaglineSvgWidget(),
              SizedBox(height: 60),
              InputFieldWidget(),
              SizedBox(height: 12),
              ButtonWidget(
                text: 'Start Writing',
                onPressed: () {
                 Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const ConfirmemailScreen()),
                 );
                },
              ),
              SizedBox(height: 60),
              DividerWidget(),
              SizedBox(height: 12),
              GoogleButtonWidget(
                text: 'continue with google',
                onPressed: () {
                  print('continue with google button pressed');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogoTextWidget extends StatelessWidget {
  const LogoTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      'Note Wise',
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}

class TaglineSvgWidget extends StatelessWidget {
  const TaglineSvgWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/text.svg',
      height: 30,
      semanticsLabel: 'Write freely. We’ll handle the rest',
    );
  }
}

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonWidget({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF9658CA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(color: Color(0x66000000), thickness: 1, endIndent: 8),
        ),
        Text(
          'or',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: const Color(0x66000000),
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        const Expanded(
          child: Divider(color: Color(0x66000000), thickness: 1, indent: 8),
        ),
      ],
    );
  }
}

class GoogleButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GoogleButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25), // 25% opacity
                offset: const Offset(0, 4), // X: 0, Y: 4
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/googleIcon.svg',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 12),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
