import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapi/app/widget/multi_provider.wrapper.dart';
import 'package:myapi/app/widget/multi_repository.wrapper.dart';
import 'package:myapi/logic/cubit/contact_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MultiRepositoryWrapper(
        child: MultiProviderWrapper(child: ContactBody()),
      ),
    );
  }
}

class ContactBody extends StatelessWidget {
  const ContactBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ContactCubit>();
    final 

    final status = state.;

    log(status.toString());

    switch (status) {
      case Status.initial:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case Status.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case Status.loaded:
        return Container();

      case Status.error:
        return const Center(
          child: Text("error"),
        );
    }
  }
}
