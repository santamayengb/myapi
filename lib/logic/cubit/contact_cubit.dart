import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapi/logic/repository/contact.repository.dart';
import '../../model/model.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit({required this.contactRepository})
      : super(const ContactState(status: Status.initial));

  final ContactRepository contactRepository;

  bool get isLoading => state.status == Status.loading;

  Future<void> getContact() async {
    if (isLoading) return;

    emit(const ContactState(status: Status.loading));
    try {
      final contact = await contactRepository.getContact();
      log(contact.toString());

      emit(ContactState(status: Status.loaded, contactModel: contact ?? []));
    } catch (e) {
      emit(const ContactState(status: Status.error));
    }
  }
}
