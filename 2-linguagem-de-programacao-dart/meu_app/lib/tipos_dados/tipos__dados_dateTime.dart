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
  print("Dia da seamana");
  print(data1.weekday);

  print("------------------------------------------------------");
  print("Soma de datas");
  print(data1);
  data1 = data1.add(Duration(days: 1));
  print(data1.add(Duration(days: 1)));
  print(data1);
  print(data1.subtract(Duration(hours: 1)));
  print(data1);

  print("------------------------------------------------------");
  print("Comparação de data");
  var data2 = DateTime.parse("2025-05-11 00:00:00");
  print(data1.isAfter(data2));
  print(data1.isBefore(data2));
  print(data1.compareTo(data2));
}
