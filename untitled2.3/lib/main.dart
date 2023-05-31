import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(), // Define o tema escuro
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
              'https://i.pinimg.com/564x/f0/f4/56/f0f456ba07a8c50ded241e6cd73c8383.jpg', // Insira o link do wallpaper aqui
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
                  color: Colors.white, // Altera a cor do texto do campo de email para branco
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
                  color: Colors.white, // Altera a cor do texto do campo de senha para branco
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepPurple, // Altera a cor de fundo do botão para roxo
                ),
                child: const Text('Entrar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignupPage()),
                  );
                },
                child: const Text('Create an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




class SignupPage extends StatefulWidget {
  const SignupPage({Key? key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  bool isSignupButtonEnabled = false;
  bool isEmailNotificationEnabled = true;
  bool isPhoneNotificationEnabled = true;

  @override
  void initState() {
    super.initState();
    nameController.addListener(validateFields);
    dobController.addListener(validateFields);
    phoneController.addListener(validateFields);
    emailController.addListener(validateFields);
    passwordController.addListener(validateFields);
  }

  @override
  void dispose() {
    nameController.dispose();
    dobController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validateFields() {
    setState(() {
      isSignupButtonEnabled = nameController.text.isNotEmpty &&
          dobController.text.isNotEmpty &&
          phoneController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/564x/f0/f4/56/f0f456ba07a8c50ded241e6cd73c8383.jpg', // Insira o link do wallpaper aqui
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    labelStyle: TextStyle(
                      color: Colors.white, // Altera a cor da palavra "Nome" para branco
                    ),
                  ),
                  maxLength: 50, // Limita a quantidade de caracteres do campo nome
                  keyboardType: TextInputType.text, // Abre um teclado apropriado para texto
                  style: TextStyle(
                    color: Colors.white, // Altera a cor do texto do campo nome para branco
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: dobController,
                  decoration: InputDecoration(
                    labelText: 'Data de Nascimento',
                    labelStyle: TextStyle(
                      color: Colors.white, // Altera a cor da palavra "Data de Nascimento" para branco
                    ),
                  ),
                  keyboardType: TextInputType.datetime, // Abre um teclado apropriado para data
                  style: TextStyle(
                    color: Colors.white, // Altera a cor do texto do campo data de nascimento para branco
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: TextStyle(
                      color: Colors.white, // Altera a cor da palavra "Telefone" para branco
                    ),
                  ),
                  maxLength: 11, // Limita a quantidade de caracteres do campo telefone
                  keyboardType: TextInputType.phone, // Abre um teclado apropriado para telefone
                  style: TextStyle(
                    color: Colors.white, // Altera a cor do texto do campo telefone para branco
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    labelStyle: TextStyle(
                      color: Colors.white, // Altera a cor da palavra "E-mail" para branco
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress, // Abre um teclado apropriado para e-mail
                  style: TextStyle(
                    color: Colors.white, // Altera a cor do texto do campo e-mail para branco
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                      color: Colors.white, // Altera a cor da palavra "Senha" para branco
                    ),
                  ),
                  obscureText: true,
                  maxLength: 20, // Limita a quantidade de caracteres do campo senha
                  style: TextStyle(
                    color: Colors.white, // Altera a cor do texto do campo senha para branco
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    Text(
                      'Gênero:',
                      style: TextStyle(
                        color: Colors.white, // Altera a cor do texto "Gênero" para branco
                      ),
                    ),
                    const SizedBox(width: 16),
                    Checkbox(
                      value: isMaleSelected,
                      onChanged: (value) {
                        setState(() {
                          isMaleSelected = value!;
                          isFemaleSelected = false;
                        });
                      },
                    ),
                    const Text(
                      'Masculino',
                      style: TextStyle(
                        color: Colors.white, // Altera a cor do texto "Masculino" para branco
                      ),
                    ),
                    const SizedBox(width: 16),
                    Checkbox(
                      value: isFemaleSelected,
                      onChanged: (value) {
                        setState(() {
                          isFemaleSelected = value!;
                          isMaleSelected = false;
                        });
                      },
                    ),
                    const Text(
                      'Feminino',
                      style: TextStyle(
                        color: Colors.white, // Altera a cor do texto "Feminino" para branco
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    CupertinoSwitch(
                      value: isEmailNotificationEnabled,
                      onChanged: (value) {
                        setState(() {
                          isEmailNotificationEnabled = value;
                        });
                      },
                    ),
                    const Text(
                      'Ativar notificações via e-mail',
                      style: TextStyle(
                        color: Colors.white, // Altera a cor do texto das notificações via e-mail para branco
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: <Widget>[
                    CupertinoSwitch(
                      value: isPhoneNotificationEnabled,
                      onChanged: (value) {
                        setState(() {
                          isPhoneNotificationEnabled = value;
                        });
                      },
                    ),
                    const Text(
                      'Ativar notificações via telefone',
                      style: TextStyle(
                        color: Colors.white, // Altera a cor do texto das notificações via telefone para branco
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: isSignupButtonEnabled ? () {} : null,
                  style: ElevatedButton.styleFrom(
                    primary: isSignupButtonEnabled
                        ? Colors.deepPurple
                        : Colors.grey, // Altera a cor de fundo do botão para roxo se estiver habilitado, senão cinza
                  ),
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      color: Colors.white, // Altera a cor do texto do botão cadastrar para branco
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
