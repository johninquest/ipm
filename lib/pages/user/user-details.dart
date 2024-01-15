import 'package:flutter/material.dart';
import '../../style/colors.dart';
import 'package:go_router/go_router.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
        centerTitle: true,
      ),
      body: const Center(
        // child: UserInformation(),
        child: CreateNewUserButton(),
      ),
/*       floatingActionButton: FloatingActionButton(
        onPressed: () => log('Tapped add button'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ), */
    );
  }
}

class UserInformation extends StatelessWidget {
  const UserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [UserInfoRow()]);
  }
}

class UserInfoRow extends StatelessWidget {
  const UserInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 13.0),
          child: const Text(
            'First name',
            style: TextStyle(color: primaryColor),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 13.0),
          child: const Text('Xaver'),
        )
      ],
    );
  }
}

class CreateNewUserButton extends StatelessWidget {
  const CreateNewUserButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => context.push('/user-create'),
        child: const Icon(
          Icons.add,
        ));
  }
}
