import 'package:flutter/material.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Frequently Asked Questions', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text('Q: How does this site work?\nA: It checks if a website is reachable from your browser.'),
        SizedBox(height: 10),
        Text('Q: Why does it say a site is down when it’s not?\nA: It may be a temporary DNS or network issue.'),
        SizedBox(height: 10),
        Text('Q: Is this service free?\nA: Yes, it’s completely free to use.'),
      ],
    );
  }
}
