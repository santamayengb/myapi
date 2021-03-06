// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<List<ContactModel>>> getContacts() {
    final $url = '/8vixnqsentduj';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<ContactModel>, ContactModel>($request);
  }

  @override
  Future<ContactModel> addNewContact() {
    final $url = '/8vixnqsentduj';
    final $request = Request('POST', $url, client.baseUrl);
    return client.send($request);
  }
}
