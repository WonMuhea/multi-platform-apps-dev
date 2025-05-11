import 'dart:collection';

import 'package:flutter/material.dart';
import 'measures.dart';
import 'converter.dart';

void main() {
  runApp(MeasuresConverterApp());
}

class MeasuresConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MeasuresConverter());
  }
}

class MeasuresConverter extends StatefulWidget {
  @override
  ConverterState createState() => ConverterState();
}

MeasureUnit fromunit = MeasureUnit.meter;
MeasureUnit toUnit = MeasureUnit.meter;

class ConverterState extends State<MeasuresConverter> {
  final _formGlobalKey = GlobalKey<FormState>();
  final Converter converter = Converter();
  double? inputValue;
  String _resultMessage = '';

  void _cacualteConversion() {
    if (_formGlobalKey.currentState!.validate()) {
      _formGlobalKey.currentState!.save();
      final double? result = converter.convert(fromunit, toUnit, inputValue!);
      String fromUnitName = fromunit.getName();
      String toUnitName = toUnit.getName();
      setState(() {
        if (result == null) {
          _resultMessage =
              '$fromUnitName could not be converted to $toUnitName';
        } else {
          _resultMessage = '$inputValue $fromUnitName are $result $toUnitName';
        }
      });
      _formGlobalKey.currentState!.reset();
    } else {
      setState(() {
        _resultMessage = '';
      });
      return;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext cotext) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Measures Converter'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.00),
        child: Column(
          children: [
            Form(
              key: _formGlobalKey,
              child: Column(
                children: <Widget>[
                  Text('Value', style: TextStyle(fontSize: 20.00)),
                  const SizedBox(height: 20.0),
                  TextFormField(
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Value',
                      hintStyle: TextStyle(color: Colors.blue),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          double.tryParse(value) == null) {
                        return "Value should be a valid number";
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      inputValue = double.parse(newValue!);
                    },
                  ),
                  const SizedBox(height: 15.00),
                  const Text('From', style: TextStyle(fontSize: 20.00)),
                  const SizedBox(height: 10.0),
                  MeasuresDropDown(dropDownName: 'From'),
                  const SizedBox(height: 15.0),
                  const Text('To', style: TextStyle(fontSize: 20.00)),
                  const SizedBox(height: 20.0),
                  MeasuresDropDown(dropDownName: 'To'),
                  const SizedBox(height: 30.0),
                  ElevatedButton(
                    onPressed: _cacualteConversion,
                    child: Text('Convert'),
                  ),
                  const SizedBox(height: 10.00),
                ],
              ),
            ),
            Text(_resultMessage),
          ],
        ),
      ),
    );
  }
}

class MeasuresDropDown extends StatefulWidget {
  final String dropDownName;

  const MeasuresDropDown({Key? key, required this.dropDownName});
  @override
  State<MeasuresDropDown> createState() => _MeasuresDropDownState();
}

typedef MenuEntry = DropdownMenuItem<MeasureUnit>;

class _MeasuresDropDownState extends State<MeasuresDropDown> {
  static final List<MenuEntry> measureMenuEntries =
      UnmodifiableListView<MenuEntry>(
        MeasureUnit.values.map<MenuEntry>(
          (MeasureUnit measure) =>
              MenuEntry(value: measure, child: Text(measure.name)),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<MeasureUnit>(
      value: MeasureUnit.meter,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
        ),
      ),
      items: measureMenuEntries,
      onChanged: (value) {
        // This is called when the user selects an item.
        setState(() {
          if (widget.dropDownName == 'From') {
            fromunit = value!;
          } else if (widget.dropDownName == 'To') {
            toUnit = value!;
          }
        });
      },
    );
  }
}
