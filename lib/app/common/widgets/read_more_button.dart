import 'package:flutter/material.dart';

class ReadMoreButton extends StatelessWidget {
  const ReadMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Hola, no hago nada jaja'),
          duration: Duration(seconds: 3),
        ),
      );
    }, label: Text('Read More'), icon: Icon(Icons.arrow_forward), iconAlignment: IconAlignment.end,);
  }
}
