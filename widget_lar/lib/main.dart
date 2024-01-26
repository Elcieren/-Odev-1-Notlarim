import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key, required this.title});

  final String title;
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      print('incermentcounter');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Yazi('şuan ki değer $_counter '),
            Sayac('Sayaccc',
            ilkdeger:3,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
class Yazi extends StatelessWidget {
  final String icerik;
  const Yazi(this.icerik, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(icerik);
  }
}


class Sayac extends StatefulWidget {
  final String baslik;
  final int ilkdeger;
  const Sayac(this.baslik, {super.key, required this.ilkdeger});

  @override
  State<Sayac> createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sayi=0;
  @override
  void initState() {
    // initstate bir kere çağrılıyor
    print('sayacstate initstate');
    super.initState();
    sayi=widget.ilkdeger;
  }
  @override
  Widget build(BuildContext context) {
    print('sayacstate build');
    return ElevatedButton(
      onPressed: (){
        print('gelecekte butona basıldii');
          setState(() {
      sayi++;
    });
      },
      child: Text(
        '${widget.baslik}  içerideki: $sayi'
        ),
    );
  }
}
