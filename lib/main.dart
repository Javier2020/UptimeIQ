import 'package:flutter/material.dart';
import 'widgets/adsense_widget.dart';
import 'sections/faq_section.dart';

void main() {
  runApp(const IsItDownApp());
}

class IsItDownApp extends StatelessWidget {
  const IsItDownApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Is It Down?',
      theme: ThemeData.dark(),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = TextEditingController();
  String _status = '';

  Future<void> checkSite() async {
    final url = _controller.text.trim();
    try {
      final response = await Uri.parse('https://$url').resolveUri(Uri());
      setState(() => _status = '✅ $url appears to be up.');
    } catch (_) {
      setState(() => _status = '❌ $url might be down.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Is It Down?')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter website (e.g. example.com)',
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: checkSite,
              child: const Text('Check Status'),
            ),
            const SizedBox(height: 20),
            Text(_status, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            const AdsenseWidget(),
            const SizedBox(height: 30),
            const FAQSection(),
          ],
        ),
      ),
    );
  }
}
