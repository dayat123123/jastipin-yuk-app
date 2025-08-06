import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerActivityPage extends StatelessWidget {
  const CustomerActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity")),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.push("/customer/activity/test");
          },
          child: Text("dsds"),
        ),
      ),
    );
  }
}
