void main() {
  print('1');

  getStringFromNetwork().then((value) {
    getLengthFromNetwork(value).then((length) {
      print('Length = $length');
    }).catchError((error) {
      print('une erreur est survenue : $error');
    });
  }).catchError((error) {
    print('une erreur est survenue : $error');
  });

  print('3');
}

Future<String> getStringFromNetwork() {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Coucou';
  });
}

Future<int> getLengthFromNetwork(String value) {
  return Future.delayed(const Duration(seconds: 1), () {
    return value.length;
  });
}
