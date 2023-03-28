import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'SeniorEase',
    home: SeniorEaseApp(),
  ));
}

class AdditionalPage extends StatefulWidget {
  const AdditionalPage({Key? key}) : super(key: key);
  @override
  _AdditionalPageState createState() => _AdditionalPageState();
}

class _AdditionalPageState extends State<AdditionalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow, // Change the background color
      appBar: AppBar(
        title: const Text('Additional Page'),
      ),
      body: const Center(
        child: Text('This is an additional page!'),
      ),
    );
  }
}

// void cardmain() {
//   runApp(const SeniorEaseApp());
// }

class SeniorEaseApp extends StatelessWidget {
  const SeniorEaseApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SeniorEase',
      theme: ThemeData(
          colorSchemeSeed: const Color.fromARGB(255, 193, 71, 23),
          useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Seniorease')),
        body: Column(
          children: const <Widget>[
            Spacer(),
            ElevatedCardExample(),
            FilledCardExample(),
            OutlinedCardExample(),
            Spacer(),
            IconRowExample()
          ],
        ),
      ),
    );
  }
}

/// An example of the elevated card type.
///
/// The default settings for [Card] will provide an elevated
/// card matching the spec:
///
/// https://m3.material.io/components/cards/specs#a012d40d-7a5c-4b07-8740-491dec79d58b
class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        elevation: 4.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Elevated Card')),
        ),
      ),
    );
  }
}

/// An example of the filled card type.
///
/// To make a [Card] match the filled type, the default elevation and color
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

/// An example of the outlined card type.
///
/// To make a [Card] match the outlined type, the default elevation and shape
/// need to be changed to the values from the spec:
///
/// https://m3.material.io/components/cards/specs#0f55bf62-edf2-4619-b00d-b9ed462f2c5a
class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}

class IconRowExample extends StatelessWidget {
  const IconRowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.backpack),
        Icon(Icons.leaderboard),
      ],
    );
  }
}