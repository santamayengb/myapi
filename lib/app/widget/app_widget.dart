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

class ContactBody extends StatefulWidget {
  const ContactBody({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactBody> createState() => _ContactBodyState();
}

class _ContactBodyState extends State<ContactBody> {
  @override
  void initState() {
    context.read<ContactCubit>().getContact();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ContactCubit>();
    final status = state.state.status;
    final data = state.state.contactModel;

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
        return Scaffold(
          body: ListView.builder(
            itemCount: data!.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index].name),
                subtitle: Text(data[index].number),
              );
            },
          ),
          bottomSheet: const Text("data"),
        );

      case Status.error:
        return const Center(
          child: Text("error"),
        );
    }
  }
}
