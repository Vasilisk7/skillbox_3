// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
//   //---------- 1 задание --------------
//   DelimetersCalculator delimetersCalculator = DelimetersCalculator();
//
//   int nod = delimetersCalculator.nod(12123, -123123);
//   print('nod: $nod');
//   int dodOriginal = 12123.gcd(-123123);
//   print('dodOriginal: $dodOriginal');
//
//   int nok = delimetersCalculator.nok(4565463, 1212366);
//   print('nok: $nok');
//
//   List<int> primeFactors = delimetersCalculator.numberIntoPrimeFactors(-56);
//   print('primeFactors: $primeFactors');
//
//   //---------- 2 задание --------------
//   Decimal decimal = Decimal();
//   print('decimalToBinary: ${decimal.decimalToBinary(35412313123)}');
//   print('binaryToDecimal: ${decimal.binaryToDecimal('010101')}');
//
//   //---------- 3 задание --------------
//   StringNumConverter stringNumConverter = StringNumConverter();
//   print('stringNumConverter: ${stringNumConverter.toNum('sf we 1 5 0.2  infinity  ')}');
//
//   //---------- 4 задание --------------
//   print('wordCount: ${stringNumConverter.wordCount([
//         'wow',
//         'q',
//         'q',
//         'k',
//         'q',
//         'qweqwe',
//         '1',
//         '090t'
//       ])}');
//
//   //---------- 5 задание --------------
//   print('wordToNum: ${stringNumConverter.wordToNum([
//         'wow',
//         'q',
//         'q',
//         'one',
//         'k',
//         'one',
//         ' one ',
//         'two',
//         'sdffsd',
//         '2',
//         '25',
//         'zero'
//       ])}');
//
//   //---------- 6 задание --------------
//   Point point = Point.single();
//   print('distanceTo: ${point.distanceTo(Point(2, 4, 1))}');
//
//   //---------- 7 задание --------------
//   num superNum = 9;
//   double degree = 3.56;
//   try {
//     print('nthDegreeRoot: ${superNum.nthDegreeRoot(degree)}');
//   } catch (e) {
//     print('Ошибка вычисления корня со степенью $degree');
//   }
//
// //---------- 8 задание --------------
//   final AdminUser adminUser = AdminUser('adminUser@mail.ru');
//   print('getMailSystem: ${adminUser.getMailSystem()}');
//
//   final User userVasy = User('vasy@gmail.com');
//   final User userDima = User('dima@yandex.ru');
//
//   final UserManager<User> userManager = UserManager();
//   userManager.store(userVasy);
//   userManager.store(userDima);
//   userManager.store(adminUser);
//   userManager.delete(userDima);
//
//   print('getAllMails: ${userManager.getAllMails()}');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: CarouselSlider(
        options: CarouselOptions(height: 400.0),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              if (i == 2) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('страница $i'),
                    SvgPicture.network(
                      'https://icon-icons.com/downloadimage.php?id=233209&root=3807/SVG/&file=malware_bug_insect_icon_233209.svg',
                      height: 100,
                      semanticsLabel: 'A bug?!',
                      placeholderBuilder: (BuildContext context) => Container(
                        padding: const EdgeInsets.all(30.0),
                        child: const CircularProgressIndicator(),
                      ),
                    ),
                  ],
                );
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('страница $i'),
                  SvgPicture.asset('assets/svg/cat.svg', semanticsLabel: 'Caaaat', height: 100),
                ],
              );
            },
          );
        }).toList(),
      )),
    );
  }
}
