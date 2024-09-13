import 'package:al2_2024/futures/app_exception.dart';

void main() async {
  print('1');

  try {
    final value = await getStringFromNetwork();
    final length = await getLengthFromNetwork(value);
    print('Length = $length');
  } on StringValueException catch (error) {
    print('Erreur dans la récupération de la string: $error');
  } on LengthValueException catch (error) {
    print('Erreur dans la récupération de la length: $error');
  } catch (error) {
    print('une erreur est survenue : $error');
  } finally {
    print('3');
  }

  // getStringFromNetwork().then((value) {
  //   getLengthFromNetwork(value).then((length) {
  //     print('Length = $length');
  //     print('3');
  //   }).catchError((error) {
  //     print('une erreur est survenue : $error');
  //   });
  // }).catchError((error) {
  //   print('une erreur est survenue : $error');
  // });
}

Future<String> getStringFromNetwork() async {
  await Future.delayed(const Duration(seconds: 1));

  return 'Coucou';
}

Future<int> getLengthFromNetwork(String value) async {
  await Future.delayed(const Duration(seconds: 1));
  throw LengthValueException();
  return value.length;
}
