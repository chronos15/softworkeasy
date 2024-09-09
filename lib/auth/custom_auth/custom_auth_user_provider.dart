import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class SWEasyAuthUser {
  SWEasyAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UsuarioStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<SWEasyAuthUser> sWEasyAuthUserSubject =
    BehaviorSubject.seeded(SWEasyAuthUser(loggedIn: false));
Stream<SWEasyAuthUser> sWEasyAuthUserStream() =>
    sWEasyAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
