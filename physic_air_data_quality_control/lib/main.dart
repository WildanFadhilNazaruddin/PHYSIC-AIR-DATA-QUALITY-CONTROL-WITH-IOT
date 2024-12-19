import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget ini adalah root dari aplikasi Anda.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Ini adalah tema aplikasi Anda.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Widget ini adalah halaman utama aplikasi Anda. Ini bersifat stateful,
  // artinya memiliki objek State yang berisi field yang mempengaruhi tampilannya.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Panggilan setState ini memberi tahu framework Flutter bahwa sesuatu
      // telah berubah dalam State ini, yang menyebabkan build method di bawah
      // dipanggil ulang sehingga tampilan dapat mencerminkan nilai yang diperbarui.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Metode ini dipanggil ulang setiap kali setState dipanggil, misalnya
    // seperti yang dilakukan oleh metode _incrementCounter di atas.
    return Scaffold(
      appBar: AppBar(
        // Di sini kita mengambil nilai dari objek MyHomePage yang dibuat oleh
        // metode App.build, dan menggunakannya untuk mengatur judul appbar kita.
        title: Text(widget.title),
      ),
      body: Center(
        // Center adalah widget tata letak. Ini mengambil satu anak dan
        // memposisikannya di tengah induknya.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // Koma trailing ini membuat pemformatan otomatis lebih baik untuk metode build.
    );
  }
}
