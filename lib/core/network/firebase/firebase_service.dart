import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jastipin_yuk/core/utils/result/result.dart';

abstract class FirebaseService {
  Future<Result<UserCredential>> signIn();
  Future<void> signOut();
}

class FirebaseServiceImpl implements FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  @override
  Future<Result<UserCredential>> signIn() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.authenticate();
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.idToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential = await _auth.signInWithCredential(
        credential,
      );
      return Result.success(userCredential);
    } on FirebaseAuthException catch (e) {
      return Result.failed("Firebase Auth Error: ${e.message}");
    } on GoogleSignInException catch (e) {
      final message = e.description;
      return Result.failed(message ?? "");
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
