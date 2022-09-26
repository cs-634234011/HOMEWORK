// ignore_for_file: overridden_fields

class Client {
  final String _name;
  double _purChasesAmount = 0;

  Client(this._name);
  //get method
  get getName => _name;
  get getPurChasesAmount => _purChasesAmount;

  //add method
  void addPurchasesAmount(double value) {
    _purChasesAmount += value;
  }
}

class LoyalClient extends Client {
  LoyalClient(super.name);
  @override
  double _purChasesAmount = 0;

  //get method
  @override
  get getPurChasesAmount => _purChasesAmount;

  //return discount 10%
  double disCount() {
    return _purChasesAmount *= 0.9;
  }
}

void main() {
  var c = Client("Somchai");
  print(c.getName);
  c.addPurchasesAmount(15);
  c.addPurchasesAmount(50);
  c.addPurchasesAmount(7);
  print(c.getPurChasesAmount);

  var lc = LoyalClient("Somying");
  print(lc.getName);
  lc.addPurchasesAmount(43);
  lc.addPurchasesAmount(32);
  lc.addPurchasesAmount(70);
  lc.addPurchasesAmount(70);
  print(lc.getPurChasesAmount);
  lc.disCount();
  print(lc.getPurChasesAmount);
}
