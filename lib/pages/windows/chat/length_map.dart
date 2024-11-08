class LengthMap {
  LengthMap({
    required this.start,
    required this.end,
    required this.str,
  });

  String str;
  int start;
  int end;

  @override
  String toString() {
    return 'LengthMap{str: $str, start: $start, end: $end}';
  }
}