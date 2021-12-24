part of 'contact_cubit.dart';

enum Status { initial, loading, loaded, error }

class ContactState extends Equatable {
  const ContactState({required this.status, this.contactModel});

  final Status status;
  final List<ContactModel>? contactModel;

  @override
  List<Object?> get props => [status, contactModel];
}
