import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void decrement() {
    setState(() {
      count--; // Atualiza o valor de `count` e reconstrói a interface
    });
    print(count);
  }

  void increment() {
    setState(() {
      count++; // Atualiza o valor de `count` e reconstrói a interface
    });
    print(count);
  }

  bool get isEmpty => count == 0;
  bool get isFull => count == 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/Background.png'),
            fit: BoxFit.cover,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text(
                isFull ? 'Lotado' : "Pode entrar!",
                style: const TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 32),
              Text('$count',
                  style: TextStyle(
                    fontSize: 100,
                    color:isFull ? Colors.red : Colors.white,
                  )),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpty ? null : decrement,
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: isEmpty ? Colors.white.withOpacity(0.3) : Colors.white,
                      fixedSize: const Size(100, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text(
                      "Saiu",
                      style: TextStyle(
                        color:Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 32),
                  TextButton(
                      onPressed: isFull ? null : increment,
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: isFull ? Colors.white.withOpacity(0.3) : Colors.white,
                        fixedSize: const Size(100, 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: const Text(
                        "Entrou",
                        style: TextStyle(
                          color:Colors.black,
                          fontSize: 16,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ));
  }
}
