import 'dart:ui';

String surface = '#EAF0FA';
String surface2 = '#234F9D';
String surface3 = '#E0EBE2';
String mains = '#5887DA';
String mains2 = '#4C7380';
String mains3 = '#659A6E';
String white = '#FFFFFF';
String backgroundCard = '#F7F7F7';
String backgroundApplication = '#EDEDED';
String buttonDisable = '#CDCDCD';
String textDisable = '#999999';
String text = '#404040';

Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
  return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
}
