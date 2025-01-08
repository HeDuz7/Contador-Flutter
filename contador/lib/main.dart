import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement(){
    print("Decrement");
  }

    void increment(){
    print("Increment");
  }

  @override
  Widget build(BuildContext context) {
    TextButton.styleFrom(backgroundColor: Colors.white,
                    );
    return Scaffold(
        backgroundColor: Colors.red,
        body: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //alinha os itens do Children
          children: [
            const Text(
              "Pode entrar!",
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 32), // Espaço no meio
            const Text("0",
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                )),
                const SizedBox(height: 32), // Espaço no meio
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text(
                  "Saiu",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
                const SizedBox(width: 32), // Espaço no meio
                 TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                  foregroundColor: Colors.black, backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                    child: const Text(
                      "Entrou",
                      style: TextStyle(color: Colors.black, fontSize: 16,),
                    ))
              ],
            ),
          ],
        ));
  }
}
