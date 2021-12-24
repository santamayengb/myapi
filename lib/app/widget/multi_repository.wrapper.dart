import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapi/chopper/api.service.dart';
import 'package:myapi/chopper/chopper_client.dart';
import 'package:myapi/logic/repository/contact.repository.dart';

class MultiRepositoryWrapper extends StatelessWidget {
  const MultiRepositoryWrapper({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final service = chopper.getService<ApiService>();
    return MultiRepositoryProvider(providers: [
      RepositoryProvider(
        create: (context) => ContactRepository(service: service),
      )
    ], child: child);
  }
}
