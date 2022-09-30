import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:pushnotification_admin/app/modules/home/controllers/userModel.dart';

class HomeController extends GetxController {
  getda() =>
      FirebaseFirestore.instance.collection("clints").snapshots().map((event) =>
          event.docs.map((e) => RecipaModel.fromJson(e.data())).toList());
}
