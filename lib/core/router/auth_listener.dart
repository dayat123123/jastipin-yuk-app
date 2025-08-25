import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';

class AuthListener extends ChangeNotifier {
  final AuthBloc authBloc;
  late final StreamSubscription _sub;

  AuthListener(this.authBloc) {
    _sub = authBloc.stream.listen((state) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }
}
