import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:developer';

class CreateUserPage extends StatelessWidget {
  const CreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New user'),
        centerTitle: true,
      ),
      body: const Center(
        // child: Text('New user form'),
        child: MyForm(),
      ),
    );
  }
}

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _userFormKey = GlobalKey<FormState>();
  final TextEditingController _salutationController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _userFormKey,
      child: Container(
        margin: const EdgeInsets.all(3.0),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _salutationController,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'Salutation',
              ),
            ),
            TextFormField(
              controller: _firstNameController,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'First name',
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter first name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _lastNameController,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'Last name',
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter last name';
                }
                return null;
              },
            ),
            //  const SizedBox(height: 16),
            TextFormField(
              controller: _dateOfBirthController,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.calendar_today), */
                hintText: '',
                labelText: 'Date of Birth',
              ),
              keyboardType: TextInputType.datetime,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter date of birth';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'Phone',
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter phone number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'E-mail',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter e-mail';
                }
                return null;
              },
            ),
            const SizedBox(height: 21.0),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => GoRouter.of(context).pop(),
                    style: ElevatedButton.styleFrom(),
                    child: const Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_userFormKey.currentState!.validate()) {
                        final salutation = _salutationController.text;
                        final firstName = _firstNameController.text;
                        final lastName = _lastNameController.text;
                        final dateOfBirth = _dateOfBirthController.text;
                        final phoneNumber = _phoneNumberController.text;
                        final email = _emailController.text;

                        // Process the form data here
                        log('Salutation: $salutation');
                        log('First name: $firstName');
                        log('Last name: $lastName');
                        log('Date of Birth: $dateOfBirth');
                        log('Phone number: $phoneNumber');
                        log('E-mail: $email');
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
