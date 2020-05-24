/// List extensions
extension ListExtensions on List {
  List<T> mapNotNull<T>(fn(element)) {
    return this.fold([], (p, e) {
      if (fn(e))
        p.add(e);
      return p;
    });
  }
}