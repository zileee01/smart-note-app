import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmemailScreen extends StatelessWidget{
  const ConfirmemailScreen({super.key}); 

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
              EmailWidget(), 
              SizedBox(height: 15),
              TitleWidget(), 
              SizedBox(height: 12), 
              ParagraphWidget(email: 'ex@gmail.com'), 
              SizedBox(height: 60), 
              ResendEmailWidget(
                onTap: () {
                  print('Resend clicked');
                }
              ), 
            ],
          ),
        ),
      ),
    );
  }
}


class EmailWidget extends StatelessWidget {
  const EmailWidget({super.key}); 
  

   @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/email.svg',
      height: 182,
      semanticsLabel: 'email Icon',
    );
  }
}


class TitleWidget extends StatelessWidget{
  const TitleWidget({super.key}); 


  @override
  Widget build(BuildContext context) {
     return Text(
      'Confirm your email address',
      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }

}



class ParagraphWidget extends StatelessWidget {

  final String email;

  const ParagraphWidget({super.key, required this.email});
   @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(111, 0, 0, 0),
            ),
            children: [
              const TextSpan(
                text: 'We sent an email to:\n\n',
              ),
              TextSpan(
                text: '$email\n\n',
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const TextSpan(
                text:
                    'Check your email and click on the\nconfirmation link to continue.',
              ),
            ],
          ),
        ),
      ),
    );
  }


}


class ResendEmailWidget extends StatelessWidget {
  final VoidCallback onTap; 

  const ResendEmailWidget({super.key, required this.onTap}); 

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: const Text(
          'Resend confirmation email',
          style: TextStyle(
            color:  Color(0xFF9658CA),
            
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

