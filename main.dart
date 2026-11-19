class BusCard {
  String _owner = '';
  int _balance = 0;
  // Constructor (done for you)
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }
  // EXAMPLE: getter for owner (done for you)
  String get owner {
    return _owner;
  }
  // TODO 1: write a getter for balance
  int get balance {
    return _balance;
  }
  // EXAMPLE: setter for owner, with a rule (done for you)
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }
  // EXAMPLE: a method (done for you)
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }
  // TODO 2: write a method topUp(int amount)
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance +amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

// TODO 3: write a method pay(int fare)
void pay(int fare) {
  if (fare > _balance) {
    print('Card declined');
  } else {
    _balance = _balance - fare;
    print('Paid $fare RWF');
  }
}
}

class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor (done for you)
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  // EXAMPLE: override showInfo (done for you)
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: override pay(int fare)
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

void main() {
  // My numbers: D = 44, L = 4
  // Starting balance = 1440 RWF
  // Bus fare = 244 RWF
  // Student discount = 14%

  // Create a card and test the setter
  BusCard card = BusCard('Ama', 1440);
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: change the owner to your full name
  card.owner = 'Muhira Mohammed Abdulrhman Ibrahim';
  card.showInfo();

 // TODO 6: top up 100 RWF, then 2000 RWF
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: pay your bus fare 2 times, then show the card info
  card.pay(244);
  card.pay(244);
  card.showInfo();

  // TODO 8: create a student card 
  StudentCard studentCard = StudentCard(
    'Muhira Mohammed Abdulrhman Ibrahim', 1440, 14);
 

  // TODO 9: pay the bus fare ,then show the student card info
  studentCard.pay(244);
  studentCard.showInfo();
}