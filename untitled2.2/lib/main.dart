import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/564x/80/e5/8e/80e58ee2b10f2825e5b3ab357f220de0.jpg', // Insira o link do wallpaper aqui
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.white, // Altera a cor da palavra "Email" para branco
                  ),
                ),
                style: TextStyle(
                  color: Colors.purpleAccent, // Altera a cor do texto do campo de email para roxo claro
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.white, // Altera a cor da palavra "Password" para branco
                  ),
                ),
                obscureText: true,
                style: TextStyle(
                  color: Colors.purpleAccent, // Altera a cor do texto do campo de senha para roxo claro
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Sign In'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Create an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
