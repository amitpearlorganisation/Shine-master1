import 'dart:ui';

class PieData {
  static List<Data> data =[
    Data(name: 'Blue', percent:40, color: const Color(0xff3700b3)),
    Data(name: 'orange', percent:40, color: const Color(0xfffa8100)),
    Data(name: 'green', percent:40, color: const Color(0xff00E676)),


  ];
}

class Data{
  final String name;
  final double percent;
  final Color color;
  
  Data({required this.name, required this.percent, required this.color});
}