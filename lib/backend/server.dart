import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';
import 'package:shoppe_app/backend/repositry.dart';
import 'package:shoppe_app/data/user.dart';
import 'package:shoppe_app/util/custom_router.gr.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseStorage firebaseStorage = FirebaseStorage.instance;
String collectionPath = "Users";
Logger logger = Logger();

//todo this done
Future<String> createUserWithEmailPassword(
    String email, String password) async {
  try {
    UserCredential credential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return credential.user.uid;
  } catch (e) {
    print(e);
    logger.e(e);
  }
}

Future<String> signWithEmailAndPassword({String email, String password}) async {
  try {
    UserCredential credential =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    DocumentSnapshot snapshot = await firestore
        .collection(collectionPath)
        .doc(credential.user.uid)
        .get();
    //todo this for add map to user class
    Map map = snapshot.data();
    AppUser appUser = AppUser.newUser(map);
    Repository.repository.appUser = appUser;
    ExtendedNavigator.root.popAndPush(Routes.shoppeHomePage);

    return credential.user.uid;
  } catch (e) {
    print(e);
    logger.e(e);
  }
}

String getUserId() {
  return auth.currentUser != null ? auth.currentUser.uid : null;
}

signOut() async {
  await auth.signOut();
  ExtendedNavigator.root.popAndPush(Routes.introPage);
}

saveUserInFirebase(AppUser appUser) async {
  try {
    String userId =
        await createUserWithEmailPassword(appUser.email, appUser.password);
    Map map = appUser.toJson();
    map.remove("password");
    bool isMershant = appUser.type == userType.mershant;
    if (isMershant) {
      map["logoUrl"] = await uploadImage(appUser.logo);
      map.remove("logo");
      appUser.logoUrl = map["logoUrl"];

    }

    await firestore.collection(collectionPath).doc(userId).set(map);
    Repository.repository.appUser = appUser;
    ExtendedNavigator.root.popAndPush(Routes.shoppeHomePage);
  } catch (e) {
    print(e);
    logger.e(e);
  }
}

Future<AppUser> getUserFromFirebase() async {
  try {
    String userId = getUserId();

    DocumentSnapshot snapshot =
        await firestore.collection(collectionPath).doc(userId).get();
    Map map = snapshot.data();
    AppUser appUser = AppUser.newUser(map);
    return appUser;
  } catch (e) {
    print(e);
    logger.e(e);
  }
}

Future<String> uploadImage(File logo) async {
  try {
    String filePath = logo.path.split("/").last;
    Reference reference = firebaseStorage.ref("images/$filePath");
    await reference.putFile(logo);
    String imageUrl = await reference.getDownloadURL();
    return imageUrl;
  } catch (e) {
    print(e);
    logger.e(e);
  }
}
