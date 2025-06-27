

import 'package:unit_converter/measures.dart';

class Converter {
  static List<List<dynamic>> converterMatrix = [
    [1, 100, 1000, 0.00062, 3.2808, 39.370, null, null, null, null, null],
    [0.01, 1, 10, 6.2137e-6, 0.0328, 0.3937, null, null, null, null, null],
    [0.001, 0.1, 1, 6.2137e-7, 0.00328, 0.0394, null, null, null, null, null],
    [1609.3, 160930, 1.609e+6, 1, 5280, 63360, null, null, null, null, null],
    [0.3048, 30.48, 304.8, 0.000189, 1, 12, null, null, null, null, null],
    [0.0254, 2.54, 25.4, 1.578e-5, 0.0833, 1, null, null, null, null, null],
    [null, null, null, null, null, null, 1, 1000, 2.2046, null, null],
    [null, null, null, null, null, null, 0.001, 1, 0.0022, null, null],
    [null, null, null, null, null, null, 0.4536, 453.6, 1, null, null],
    [null, null, null, null, null, null, null, null, null, 1, 0.2642],
    [null, null, null, null, null, null, null, null, null, 3.7854, 1],
  ];

  double? convert(MeasureUnit from, MeasureUnit to, double val) {
    dynamic conversionFactor = converterMatrix[from.matrixPosition][to.matrixPosition];
    if (conversionFactor == null) {
      return null;
    }
    return val * conversionFactor.toDouble();
  }
}
