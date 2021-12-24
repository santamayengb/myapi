import 'dart:developer';

import 'package:myapi/chopper/api.service.dart';
import '../../model/model.dart';

class ContactRepository {
  ContactRepository({required this.service});
  final ApiService service;

  Future<List<ContactModel>?> getContact() async {
    final contacts = await service.getContacts();

    try {
      if (!contacts.isSuccessful) {
        log("error");
      }
    } catch (e) {
      log("error");
    }
    return contacts.body;
  }
}
