library utilities;

/// List extensions
extension ListExtensions on List {
  List<T> mapNotNull<T>(fn(element)) {
    return this.fold([], (p, e) {
      if (fn(e))
        p.add(e);
      return p;
    });
  }

  List<T> mapIndexed<T>(fn(int index, element)) {
    final List<T> list = [];
    for (var i = 0; i < this.length; i++)
      list.add(fn(i, this[i]));
    return list;
  }
}