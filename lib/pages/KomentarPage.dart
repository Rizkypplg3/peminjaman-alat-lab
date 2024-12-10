import 'package:flutter/material.dart';

class KomentarPage extends StatefulWidget {
  @override
  _KomentarPageState createState() => _KomentarPageState();
}

class _KomentarPageState extends State<KomentarPage> {
  final List<Map<String, String>> comments = [
    {"name": "John Doe", "comment": "Barang ini sangat berguna!"},
    {"name": "Jane Smith", "comment": "Barang bekerja dengan baik."},
    {"name": "Alice Brown", "comment": "Barang yang terjag."},
  ]; // Data komentar contoh

  final TextEditingController _controller = TextEditingController();

  void _addComment(String comment) {
    setState(() {
      comments.add({"name": "New User", "comment": comment});
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Komentar"),
        backgroundColor: Color(0xFF4C53A5),
      ),
      body: Container(
        color: Color(0xFFEDECF2),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFF4C53A5),
                        child: Icon(
                          Icons.person, // Ikon komentar
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        comments[index]["name"]!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(comments[index]["comment"]!),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        labelText: "Tulis komentar...",
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Color(0xFF4C53A5)),
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        _addComment(_controller.text);
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
