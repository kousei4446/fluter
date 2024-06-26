import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "実践演習アプリ",
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});
  @override
  //_を先頭に着けてここ限定のステイト
  // ignore: library_private_types_in_public_api
  _MyHomeState createState() {
    return _MyHomeState();
  }
}


// _MyHomeStateクラスがMyHomeというStatefulWidgetに
// 対応する状態オブジェクトであることを示します。

class _MyHomeState extends State<MyHome> {
  int count = 1000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("実践演習アプリ"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
            child: Icon(Icons.accessible_forward_outlined)),
        body: Column(
          children: [
            Text("$count", style: TextStyle(fontSize: 100)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ([10,9,8,7,6,5,4,3,2,1,0].map((i) {
                return BinDigit(value: count, digit: i);
              })).toList()
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Icon(Icons.plus_one)),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Icon(Icons.exposure_minus_1)),
            ])
          ],
        ));
  }
}

class BinDigit extends StatelessWidget {
  final int value;
  final int digit;
  const BinDigit({super.key,required  this.value,required this.digit});

  @override
  Widget build(BuildContext context){
      return Text('${(value & ( 1 <<digit )!=0) ? "1" : "0"}',


      
      style: TextStyle(fontSize: 30));
  }
}


















// class MyHomeTmp extends StatelessWidget {
//   MyHomeTmp({super.key});
//   int count = 42 ;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("実践演習アプリ"),
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () => {
//                   // ボタンが押されたときの処理をここに書きます
//                 },
//             child: Icon(Icons.accessible_forward_outlined)),
//         body: Column(children: [
//           Text("$count",style: TextStyle(fontSize: 100)),
//           Row(
//             mainAxisAlignment:MainAxisAlignment.center,
//             children:[
//             ElevatedButton(onPressed: () {count++;}, child: Icon(Icons.plus_one)),
//             ElevatedButton(onPressed: ()  {}, child: Icon(Icons.exposure_minus_1)),
//           ]
//           )
//         ],)

//         );
//   }
// }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
