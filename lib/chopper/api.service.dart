import 'package:chopper/chopper.dart';
import '../model/model.dart';

part 'api.service.chopper.dart';

@ChopperApi()
abstract class ApiService extends ChopperService {
  static ApiService create({ChopperClient? client}) => _$ApiService(client);

  @Get(path: '/8vixnqsentduj')
  Future<Response<List<ContactModel>>> getContacts();
}
