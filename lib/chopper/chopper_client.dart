import 'package:chopper/chopper.dart';
import 'package:myapi/chopper/api.service.dart';
import 'package:myapi/chopper/generic_json_convertor.dart';
import '../model/model.dart';

import 'apilink.dart';

final chopper = ChopperClient(
  baseUrl: Api.url,
  services: [
    ApiService.create(),
  ],
  converter: GenericJsonConvertor(
    {
      ContactModel: (jsonData) => ContactModel.fromJson(jsonData),
    },
  ),
);
