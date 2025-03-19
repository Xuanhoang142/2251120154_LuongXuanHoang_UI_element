import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Components List'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildCategory(context, 'Display', [
            _buildListItem(context, 'Text', 'Displays text', const TextScreen()),
            _buildListItem(context, 'Image', 'Displays an image', const ImageScreen()),
          ]),
          _buildCategory(context, 'Input', [
            _buildListItem(context, 'TextField', 'Input field for text', const TextFieldScreen()),
            _buildListItem(context, 'PasswordField', 'Input field for passwords', const PasswordFieldScreen()),
          ]),
          _buildCategory(context, 'Layout', [
            _buildListItem(context, 'Column', 'Arranges elements vertically', const ColumnLayoutScreen()),
            _buildListItem(context, 'Row', 'Arranges elements horizontally', const RowLayoutScreen()),
          ]),
        ],
      ),
    );
  }

  Widget _buildCategory(BuildContext context, String category, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.0),
        ...items,
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget _buildListItem(BuildContext context, String title, String subtitle, Widget page) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          );
        },
      ),
    );
  }
}

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Detail")),
      body: const Center(
        child: Text(

          "The quick Brown fox jumps over the lazy dog.",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Detail")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/flutter_logo.png',
              width: 200,
              height: 200,
            ),
          ],)
      ),
    );
  }
}

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextField")),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(labelText: "Enter text", border: OutlineInputBorder()),
        ),
      ),
    );
  }
}

class PasswordFieldScreen extends StatelessWidget {
  const PasswordFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("PasswordField")),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          obscureText: true,
          decoration: InputDecoration(labelText: "Enter password", border: OutlineInputBorder()),
        ),
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  const PlaceholderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Placeholder")),
      body: const Center(
        child: Text("This is a placeholder screen."),
      ),
    );
  }
}

class ColumnLayoutScreen extends StatelessWidget {
  const ColumnLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Column Layout")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.redAccent,
            height: 50,
            width: 100,
            child: const Center(child: Text("Item 1")),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.lightGreenAccent,
            height: 50,
            width: 100,
            child: const Center(child: Text("Item 2")),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.lightBlueAccent,
            height: 50,
            width: 100,
            child: const Center(child: Text("Item 3")),
          ),
        ],
      ),
    );
  }
}

class RowLayoutScreen extends StatelessWidget {
  const RowLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row Layout")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.redAccent,
            height: 50,
            width: 50,
            child: const Center(child: Text("1")),
          ),
          SizedBox(width: 10),
          Container(
            color: Colors.lightGreenAccent,
            height: 50,
            width: 50,
            child: const Center(child: Text("2")),
          ),
          SizedBox(width: 10),
          Container(
            color: Colors.lightBlueAccent,
            height: 50,
            width: 50,
            child: const Center(child: Text("3")),
          ),
        ],
      ),
    );
  }
}