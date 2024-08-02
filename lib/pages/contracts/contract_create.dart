import 'package:flutter/material.dart';
import '../../shared/lists/insurance_products.dart';
import '../../shared/lists/payment_frequency_options.dart';
import '../../shared/lists/renewal_options.dart';
import '../../style/colors.dart';
import '../../utils/date_time_helper.dart';

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
  final newContractFormKey = GlobalKey<FormState>();
  final contractNumber = TextEditingController();
  // final _productType = TextEditingController();
  String? insuranceProduct;
  final insurer = TextEditingController();
  final validFromDate = TextEditingController();
  final validToDate = TextEditingController();
  bool? automaticRenewal;
  int? paymentFrequency;
  final List<String> _contractModules = [];

  DateTime selectedDate = DateTime.now();
  Future<void> _selectValidFromDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        // selectedDate = picked;
        validFromDate.text = DateTimeHelper().toDeDateFormat('$picked');
        // _pickedDate.text = DateTimeFormatter().toDateString(picked);
      });
    }
  }

  Future<void> _selectValidToDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1990, 1),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        validToDate.text = DateTimeHelper().toDeDateFormat('$picked');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // String _currentOption = _options[0];
    return Form(
      key: newContractFormKey,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: DropdownButtonFormField(
                value: insuranceProduct,
                decoration: const InputDecoration(
                    labelText: 'Policy type',
                    labelStyle: TextStyle(color: primaryColor)),
                items: insuranceProducts,
                // validator: (val) => val == null ? 'Country ?' : null,
                onChanged: (val) => setState(() {
                  insuranceProduct = val as String;
                }),
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: TextFormField(
                controller: insurer,
                enabled: true,
                decoration: const InputDecoration(
                    labelText: 'Insurance provider',
                    labelStyle: TextStyle(color: primaryColor)),
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.words,
                validator: (val) =>
                    val!.isEmpty ? 'Insurance provider ?' : null,
                /*  onChanged: (val) => setState(() {
                  _insurer = val as String;
                }),  */
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: TextFormField(
                controller: contractNumber,
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
              child: TextFormField(
                controller: insurer,
                enabled: true,
                decoration: const InputDecoration(
                    labelText: 'Coverage amount',
                    labelStyle: TextStyle(color: primaryColor)),
                keyboardType: TextInputType.number,
                validator: (val) => val!.isEmpty ? 'Coverage amount ?' : null,
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              margin: const EdgeInsets.only(bottom: 5.0),
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              child: TextFormField(
                controller: insurer,
                enabled: true,
                decoration: const InputDecoration(
                    labelText: 'Premium',
                    labelStyle: TextStyle(color: primaryColor)),
                keyboardType: TextInputType.number,
                validator: (val) => val!.isEmpty ? 'Premium ?' : null,
              )),
          Container(
            width: MediaQuery.of(context).size.width * 0.89,
            margin: const EdgeInsets.only(bottom: 5.0),
            /* padding: const EdgeInsets.only(left: 21.0, right: 21.0), */
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: TextFormField(
                      controller: validFromDate,
                      enabled: true,
                      decoration: const InputDecoration(
                          labelText: 'Start date',
                          labelStyle: TextStyle(color: primaryColor)),
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      validator: (val) =>
                          val!.isEmpty ? 'Contract start date ?' : null,
                      onTap: () => _selectValidFromDate(context),
                      /* onChanged: (val) => setState(() {
                        surname = val;
                      }), */
                    )),
                Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    padding: const EdgeInsets.symmetric(horizontal: 21.0),
                    child: TextFormField(
                      controller: validToDate,
                      enabled: true,
                      decoration: const InputDecoration(
                          labelText: 'End date',
                          labelStyle: TextStyle(color: primaryColor)),
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.words,
                      validator: (val) =>
                          val!.isEmpty ? 'Contract end date ?' : null,
                      onTap: () => _selectValidToDate(context),
                      /* onChanged: (val) => setState(() {
                        surname = val;
                      }), */
                    )),
              ],
            ),
          ),
          /* Container(
              width: MediaQuery.of(context).size.width * 0.89,
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              margin: const EdgeInsets.only(bottom: 8.0),
              child: DropdownButtonFormField(
                value: paymentFrequency,
                decoration: const InputDecoration(
                    labelText: 'Payment frequency',
                    labelStyle: TextStyle(color: primaryColor)),
                items: paymentFrequencyOptions,
                // validator: (val) => val == null ? 'Country ?' : null,
                onChanged: (val) => setState(() {
                  automaticRenewal = val as bool;
                }),
              )),
          Container(
              width: MediaQuery.of(context).size.width * 0.89,
              padding: const EdgeInsets.only(left: 21.0, right: 21.0),
              margin: const EdgeInsets.only(bottom: 8.0),
              child: DropdownButtonFormField(
                value: automaticRenewal,
                decoration: const InputDecoration(
                    labelText: 'Automatic renewal ?',
                    labelStyle: TextStyle(color: primaryColor)),
                items: renewalOptions,
                // validator: (val) => val == null ? 'Country ?' : null,
                onChanged: (val) => setState(() {
                  automaticRenewal = val as bool;
                }),
              )), */
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  style: ElevatedButton.styleFrom(),
                  child: const Text(
                    'CANCEL',
                    style: TextStyle(color: txtBlackColor),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'SAVE',
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
