import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURLApp() async {
var url = Uri.parse("https://goo.gl/maps/Y2hDHEAGtDJEjNqo9");
if (await canLaunchUrl(url)) {
	await launchUrl(url);
} else {
	throw 'Could not launch $url';
}
}

class Screen1 extends StatelessWidget {
const Screen1({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
		appBar: AppBar(
		title: const Text('Kncet -- Trichy'),
		backgroundColor: Colors.green,
		),
		body: SafeArea(
		child: Center(
			child: Column(
			children: [
				Container(
				height: 250.0,
				),
				const Text(
				'Routes will be available soon...',
				style: TextStyle(
					fontSize: 20.0,
					color: Colors.green,
					fontWeight: FontWeight.bold,
				),
				),
				Container(
				height: 20.0,
				),
				ElevatedButton(
				onPressed: _launchURLApp,
				style: ButtonStyle(
					padding:
						MaterialStateProperty.all(const EdgeInsets.all(5)),
					textStyle: MaterialStateProperty.all(
						const TextStyle(color: Colors.black))),
				// textColor: Colors.black,
				// padding: const EdgeInsets.all(5.0),
				child: const Text('Visit on the map  '),
				),
			],
			),
		),
		),

	);
}
}

