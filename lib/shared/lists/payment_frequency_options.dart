import 'package:flutter/material.dart';

List<DropdownMenuItem> paymentFrequencyOptions = [
  const DropdownMenuItem<int>(
    value: 1,
    child: Text('Yearly'),
  ),
  const DropdownMenuItem<int>(
    value: 2,
    child: Text('Semi-annually'),
  ),
  const DropdownMenuItem<int>(
    value: 4,
    child: Text('Quarterly'),
  ),
  const DropdownMenuItem<int>(
    value: 12,
    child: Text('Monthly'),
  ),
];
