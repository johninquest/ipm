import 'package:flutter/material.dart';
import 'dart:developer';

import '../../style/colors.dart';

class CreateContractPage extends StatelessWidget {
  const CreateContractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New contract'),
        centerTitle: true,
      ),
      body: const Center(child: NewContractForm()),
    );
  }
}

class NewContractForm extends StatefulWidget {
  const NewContractForm({super.key});

  @override
  State<NewContractForm> createState() => _NewContractFormState();
}

class _NewContractFormState extends State<NewContractForm> {
  final _newContractFormKey = GlobalKey<FormState>();
  final TextEditingController _contractName = TextEditingController();
/*   final TextEditingController _contractStartDate = TextEditingController();
  String? _contractType;
  String? _productCategory;
  bool? _contractExtendsAutomatically; */
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _newContractFormKey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.95,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: TextFormField(
                controller: _contractName,
                enabled: true,
                decoration: const InputDecoration(labelText: 'Contract name'),
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (val) => val!.isEmpty ? 'Contract name?' : null,
                /* onChanged: (val) => setState(() {
                  surname = val;
                }), */
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.95,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: TextFormField(
                controller: _contractName,
                enabled: true,
                decoration: const InputDecoration(labelText: 'Contract name'),
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (val) => val!.isEmpty ? 'Contract name?' : null,
                /* onChanged: (val) => setState(() {
                  surname = val;
                }), */
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.95,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: TextFormField(
                controller: _contractName,
                enabled: true,
                decoration: const InputDecoration(labelText: 'Contract name'),
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (val) => val!.isEmpty ? 'Contract name?' : null,
                /* onChanged: (val) => setState(() {
                  surname = val;
                }), */
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(),
                  child: Text(
                    'cancel'.toUpperCase(),
                    style: const TextStyle(color: txtBlackColor),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'save'.toUpperCase(),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
