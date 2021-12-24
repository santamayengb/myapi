import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapi/logic/cubit/contact_cubit.dart';
import 'package:myapi/logic/repository/contact.repository.dart';

class MultiProviderWrapper extends StatelessWidget {
  const MultiProviderWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final repo = context.read<ContactRepository>();
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => ContactCubit(contactRepository: repo),
      )
    ], child: child);
  }
}
