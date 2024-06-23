import 'package:flutter/material.dart';

List<DropdownMenuItem> insuranceProducts = [
  const DropdownMenuItem<String>(
    value: 'accident',
    child: Text('Accident'),
  ),
  const DropdownMenuItem<String>(
    value: 'bicycle',
    child: Text('Bicycle'),
  ),
  const DropdownMenuItem<String>(
    value: 'car',
    child: Text('Car'),
  ),
  const DropdownMenuItem<String>(
    value: 'health',
    child: Text('Health'),
  ),
  const DropdownMenuItem<String>(
    value: 'homeowners',
    child: Text('Homeowners'),
  ),
  const DropdownMenuItem<String>(
    value: 'homecontent',
    child: Text('Home content'),
  ),
  const DropdownMenuItem<String>(
    value: 'legal',
    child: Text('Legal fee'),
  ),
  const DropdownMenuItem<String>(
    value: 'liability',
    child: Text('Liability'),
  ),
  const DropdownMenuItem<String>(
    value: 'life',
    child: Text('Life'),
  ),
  const DropdownMenuItem<String>(
    value: 'pet',
    child: Text('Pet'),
  ),
  const DropdownMenuItem<String>(
    value: 'renters',
    child: Text('Renters'),
  ),
  const DropdownMenuItem<String>(
    value: 'travel',
    child: Text('Travel'),
  ),
];

/* List<String> insuranceProducts = [
  "accident",
  "auto",
  "bicycle", // Assuming "Fahrrad" refers to Bicycle insurance
  "health",
  "homeowners",
  "home_contents",
  "legal_fees",
  "life",
  "personal_liability",
  "pet",
  "renters",
  "travel",
];
 */