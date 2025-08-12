part of 'goroute_navigator.dart';

class ErrorPage extends StatelessWidget {
  final String errorMessage;
  const ErrorPage({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Error")),
      body: Center(child: Text(errorMessage)),
    );
  }
}
