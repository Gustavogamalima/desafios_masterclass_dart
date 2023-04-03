import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const DeasfioResponsividade());
}

class DeasfioResponsividade extends StatelessWidget {
  const DeasfioResponsividade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: MaterialApp(
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color(0xFF595FD9),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100),
                          ),
                          color: Color(0xFF595FD9),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 50,
                  height: 105,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                    ),
                    color: Color(0xFF595FD9),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: const Text(
                'Get your Money \nUnder Control',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontFamily:
                      'Roboto', // aqui você pode definir a fonte desejada
                  fontWeight:
                      FontWeight.bold, // aqui você pode definir o peso da fonte
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: const Text(
                'Manage your expenses.\nSeamlessly.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  fontFamily:
                      'Roboto', // aqui você pode definir a fonte desejada
                  fontWeight:
                      FontWeight.bold, // aqui você pode definir o peso da fonte
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Flexible(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF595FD9),
                  ),
                  child: const Text(
                    'Sign Up with Email ID',
                    style: TextStyle(
                      fontSize: 20,

                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontFamily:
                          'Roboto', // aqui você pode definir a fonte desejada
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Flexible(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.network(
                              'https://img.freepik.com/icones-gratis/procurar_318-265146.jpg'),
                        ),
                      ),
                      const Text(
                        'Sign Up with Email ID',
                        style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontFamily:
                              'Roboto', // aqui você pode definir a fonte desejada
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 24.0,
                left: 24.0,
                top: 24.0,
              ),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Roboto',
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Alredy have an account? '),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
