class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String address;

  const User({
    required this.firstName,
    required this.lastName,
    this.age,
    this.address = '242 Rue du Feaubourg Saint-Antoine',
  });

  const User.small({
    this.firstName = 'Dummy FirstName',
    this.lastName = 'Dummy LastName',
    this.address = 'Dummy Address',
    this.age = 42,
  });

  const User.big({
    this.firstName = 'Dummy FirstName',
    this.lastName = 'Dummy LastName',
    this.address = 'Dummy Address',
    this.age = 42,
  });
}

void main() {
  const toto = User(firstName: 'Toto', lastName: 'Tata');
  const dummy = User.big();

  const user1 = User(firstName: 'Toto', lastName: 'Toto');
  const user2 = User(firstName: 'Toto', lastName: 'Toto');

  print(user1 == user2);

  print('FirstName length ${toto.firstName.length}');
  print('Age ${toto.age?.isOdd}');
}
