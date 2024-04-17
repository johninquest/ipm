import 'package:flutter/material.dart';
import '../../shared/lists/insurance_products.dart';
import '../../shared/lists/renewal_options.dart';
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
  // final _productType = TextEditingController();
  String? _insuranceProduct;
  final _insurer = TextEditingController();
  final _validFromDate = TextEditingController();
  final _validToDate = TextEditingController();
  bool? _automaticRenewal;
  final List<String> _contractModules = [];
  final List<String> _options = ['no', 'yes'];
/*   final TextEditingController _contractStartDate = TextEditingController();
  String? _contractType;
  String? _productCategory;
  bool? _contractExtendsAutomatically; */
  @override
  Widget build(BuildContext context) {
    // String _currentOption = _options[0];
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
                decoration: const InputDecoration(
                    labelText: 'Policy number',
                    labelStyle: TextStyle(color: primaryColor)),
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
              child: DropdownButtonFormField(
                value: _insuranceProduct,
                decoration: const InputDecoration(
                    labelText: 'Insurance product',
                    labelStyle: TextStyle(color: primaryColor)),
                items: insuranceProducts,
                // validator: (val) => val == null ? 'Country ?' : null,
                onChanged: (val) => setState(() {
                  _insuranceProduct = val as String;
                }),
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: TextFormField(
                controller: _insurer,
                enabled: true,
                decoration: const InputDecoration(
                    labelText: 'Insurer',
                    labelStyle: TextStyle(color: primaryColor)),
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (val) => val!.isEmpty ? 'Insurer ?' : null,
                /*  onChanged: (val) => setState(() {
                  _insurer = val as String;
                }),  */
              )),
          Container(
            width: MediaQuery.of(context).size.width * 0.89,
            margin: const EdgeInsets.only(bottom: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.34,
                    margin: const EdgeInsets.only(left: 1.0, right: 3.0),
                    // padding: const EdgeInsets.only(left: 3.0, right: 21.0),
                    child: TextFormField(
                      controller: _validFromDate,
                      enabled: true,
                      decoration: const InputDecoration(
                          labelText: 'Valid from',
                          labelStyle: TextStyle(color: primaryColor)),
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      validator: (val) =>
                          val!.isEmpty ? 'Contract valid from?' : null,
                      /* onChanged: (val) => setState(() {
                        surname = val;
                      }), */
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.34,
                    margin: const EdgeInsets.only(left: 3.0, right: 1.0),
                    // padding: const EdgeInsets.only(left: 21.0, right: 8.0),
                    child: TextFormField(
                      controller: _validToDate,
                      enabled: true,
                      decoration: const InputDecoration(
                          labelText: 'Valid to',
                          labelStyle: TextStyle(color: primaryColor)),
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
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              margin: const EdgeInsets.only(bottom: 8.0),
              child: DropdownButtonFormField(
                value: _automaticRenewal,
                decoration: const InputDecoration(
                    labelText: 'Automatic renewal ?',
                    labelStyle: TextStyle(color: primaryColor)),
                items: renewalOptions,
                // validator: (val) => val == null ? 'Country ?' : null,
                onChanged: (val) => setState(() {
                  _automaticRenewal = val as bool;
                }),
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
