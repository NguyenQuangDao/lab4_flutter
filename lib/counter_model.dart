class CouterModal {
  CouterModal._();
  static final _modal = CouterModal._();
  factory CouterModal() {
    return _modal;
  }
  int counter = 0;
  bool checkLike = false;
}
