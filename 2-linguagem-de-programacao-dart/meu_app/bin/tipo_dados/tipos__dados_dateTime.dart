void main(List<String> arguments) {
  DateTime data1 = DateTime.now();
  data1 = DateTime.parse("2025-05-11 00:00:00");
  
  print("Parte da data");
  print(data1);
  print(data1.day);
  print(data1.month);
  print(data1.year);
  print(data1.hour);
  print(data1.microsecond);
  print(data1.second);

  print("------------------------------------------------------");
}
