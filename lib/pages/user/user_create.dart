import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../style/colors.dart';
import '../../shared/lists.dart';
import '../../utils/custom_extensions.dart';
import '../../utils/date_time_helper.dart';
import 'dart:developer';

class UserCreatePage extends StatelessWidget {
  const UserCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New user'),
        centerTitle: true,
      ),
      body: const Center(
        // child: Text('New user form'),
        child: UserForm(),
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
  final _userFormKey = GlobalKey<FormState>();
/*   final TextEditingController _salutationController = TextEditingController(); */
  String? _salutation;
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _dateOfBirth = TextEditingController();
  final TextEditingController _address = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _email = TextEditingController();

  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        // _pickedDate.text = DateTimeFormatter().toDateString(picked);
        log('${picked.runtimeType}');
        _dateOfBirth.text = DateTimeHelper().toDeDateFormat('$picked');
      });
    }
  }

  @override
  void initState() {
    // DateTime now = DateTime.now();
    // _dateOfBirth.text = DateTimeHelper().toDeDateFormat('$now');
    _dateOfBirth.text = '--.--.----';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final salutations = salutationOptions;
    return Form(
      key: _userFormKey,
      child: Container(
        margin: const EdgeInsets.all(3.0),
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              decoration: const InputDecoration(labelText: 'Salutation'),
              items: salutations.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value.toCapitalized()),
                );
              }).toList(),
              /* validator: (val) => val == null ? 'Tätigkeit eingeben' : null, */
              onChanged: (val) => setState(() {
                _salutation = val as String;
              }),
            ),
            TextFormField(
              controller: _firstName,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'First name',
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'First name ?';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _lastName,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'Last name',
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Last name ?';
                }
                return null;
              },
            ),
            //  const SizedBox(height: 16),
            TextFormField(
              controller: _dateOfBirth,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.calendar_today), */
                hintText: '',
                labelText: 'Date of Birth',
              ),
              keyboardType: TextInputType.datetime,
              onTap: () => _selectDate(context),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Date of birth ?';
                }
                return null;
              },
            ),
            TextFormField(
              readOnly: true,
              controller: _address,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'Address',
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Address ?';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _phoneNumber,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'Phone',
              ),
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Phone number ?';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _email,
              decoration: const InputDecoration(
                /* icon: Icon(Icons.person), */
                hintText: '',
                labelText: 'E-mail',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'E-mail ?';
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
                    child: const Text(
                      'BACK',
                      style: TextStyle(color: txtBlackColor),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_userFormKey.currentState!.validate()) {
                        // final salutation = _salutationController.text;
                        final firstName = _firstName.text;
                        final lastName = _lastName.text;
                        final dateOfBirth = _dateOfBirth.text;
                        final phoneNumber = _phoneNumber.text;
                        final email = _email.text;

                        // Process the form data here
                        // log('Salutation: $salutation');
                        log('First name: $firstName');
                        log('Last name: $lastName');
                        log('Date of Birth: $dateOfBirth');
                        log('Phone number: $phoneNumber');
                        log('E-mail: $email');
                      }
                    },
                    child: const Text('SAVE'),
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
