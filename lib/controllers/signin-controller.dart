import 'package:daily_healthtracker_coderower/routes/app-routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SigninController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final user = Rx<User?>(null);

  @override
  void onInit() {
    super.onInit();
    _auth.authStateChanges().listen((firebaseUser) {
      user.value = firebaseUser;
    });
  }


  Future<void> signin() async {
    try {
      final account = await _googleSignIn.signIn();
      if (account != null) {
        final GoogleSignInAuthentication googleauth =
            await account.authentication;
        final credentials = GoogleAuthProvider.credential(
          accessToken: googleauth.accessToken,
          idToken: googleauth.idToken,
        );
        final authenticatedUserCredentials = await _auth.signInWithCredential(
          credentials,
        );
        Get.offNamed(AppRoutes.dashboard);
        print("HOGYA");
      } else
        return null;
    } catch (error) {
      print("Sign-in failed : $error");
    }
    return null;
  }

  Future<void> signout() async {
    await _googleSignIn.signOut();
    user.value = null;
    Get.offNamed(AppRoutes.login);
  }
}
