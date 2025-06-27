enum MeasureUnit {
  
  meter('Meters',  0),
  centimeter('Centi Meters', 1),
  millimeter('Mili Meters', 2),
  mile('Miles', 3),
  feet('Feet', 4),
  inch('Inches',5),
  killogram('Killo Grams', 6),
  gram('Grams', 7),
  pound('Pounds', 8),
  liter('Liters', 9),
  galon('Galons', 10);

  const MeasureUnit(this.name, this.matrixPosition);
  final String name;
  final int matrixPosition;

  String getName() {
    return name;
  }

  
  
  
}