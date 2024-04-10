import 'package:flutter/material.dart';
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
  final _contractNumber = TextEditingController();
  final _productType = TextEditingController();
  final _validFromDate = TextEditingController();
  final _validToDate = TextEditingController();
  bool? _automaticRenewal = false;
  final List<String> _coveragesItems = [];
  final List<String> _options = ['no', 'yes'];
/*   final TextEditingController _contractStartDate = TextEditingController();
  String? _contractType;
  String? _productCategory;
  bool? _contractExtendsAutomatically; */
  @override
  Widget build(BuildContext context) {
    String _currentOption = _options[0];
    return Form(
      key: _newContractFormKey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: TextFormField(
                controller: _contractNumber,
                enabled: true,
                decoration: const InputDecoration(labelText: 'Policy number'),
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (val) => val!.isEmpty ? 'Policy number ?' : null,
                /* onChanged: (val) => setState(() {
                  surname = val;
                }), */
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: TextFormField(
                controller: _productType,
                enabled: true,
                decoration: const InputDecoration(labelText: 'Product type'),
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (val) => val!.isEmpty ? 'Product type ?' : null,
                /* onChanged: (val) => setState(() {
                  surname = val;
                }), */
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  margin: const EdgeInsets.only(bottom: 5.0),
                  padding: const EdgeInsets.only(left: 21.0, right: 21.0),
                  child: TextFormField(
                    controller: _validFromDate,
                    enabled: true,
                    decoration: const InputDecoration(labelText: 'Valid from'),
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    validator: (val) =>
                        val!.isEmpty ? 'Contract valid from?' : null,
                    /* onChanged: (val) => setState(() {
                      surname = val;
                    }), */
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  margin: const EdgeInsets.only(bottom: 5.0),
                  padding: const EdgeInsets.only(left: 21.0, right: 21.0),
                  child: TextFormField(
                    controller: _validToDate,
                    enabled: true,
                    decoration: const InputDecoration(labelText: 'Valid to'),
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    validator: (val) =>
                        val!.isEmpty ? 'Contract valid to ?' : null,
                    /* onChanged: (val) => setState(() {
                      surname = val;
                    }), */
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.43,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 21.0, right: 21.0),
                child: RadioListTile(
                    title: const Text('No'),
                    value: _options[0],
                    groupValue: _currentOption,
                    onChanged: (val) {
                      setState(() {
                        _currentOption = val.toString();
                      });
                    }),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.43,
                margin: const EdgeInsets.only(bottom: 5.0),
                padding: const EdgeInsets.only(left: 21.0, right: 21.0),
                child: RadioListTile(
                    title: const Text('Yes'),
                    value: _options[1],
                    groupValue: _currentOption,
                    onChanged: (val) {
                      setState(() {
                        _currentOption = val.toString();
                      });
                    }),
              ),
            ],
          ),
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
