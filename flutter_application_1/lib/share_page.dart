import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tedarik Paylaşma'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Geri dönme işlemi
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // Fotoğraf ekleme işlemi
              },
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink[100],
                    child: Center(
                      child: Icon(Icons.add),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('FOTOĞRAF EKLE'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'DETAYLARI GİR',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'ÜRÜNÜN ADI'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'KULLANIM ALANI'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'DETAYLI AÇIKLAMA'),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Dosya ekleme işlemi
              },
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[200],
                    child: Center(
                      child: Icon(Icons.attach_file),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('DOSYA EKLE'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
