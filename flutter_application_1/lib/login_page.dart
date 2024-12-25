import 'package:flutter/material.dart';
import 'home_page.dart'; // Ana Akış sayfasını buradan import ediyoruz.
import 'signup_page.dart'; // SignupPage sayfasını projenize eklediğinizi varsayıyorum

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Başlık
              Text(
                'TEDARİK UYGULAMASI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0), // Renk Figma'ya göre ayarlanabilir
                ),
              ),
              SizedBox(height: 50),

              // E-Posta TextField
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: const Color.fromARGB(255, 148, 114, 154)),
                  hintText: 'E-POSTA',
                  filled: true,
                  fillColor: Colors.purple.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Şifre TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: const Color.fromARGB(255, 148, 114, 154)),
                  hintText: 'ŞİFRE',
                  filled: true,
                  fillColor: Colors.purple.shade50,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 40),

              // Giriş Yap Butonu
              Center( // Butonu ortalamak için
                child: SizedBox(
                  width: 200, // Genişlik belirlendi
                  child: ElevatedButton(
                    onPressed: () {
                      // Giriş yapıldığında Ana Akış sayfasına yönlendirme
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 212, 202, 214), // Buton rengi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'GİRİŞ YAP',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Alt Metin
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()),
                  );
                },
                child: Text(
                  'Hesabın mı yok? Kayıt Ol',
                  style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

