import 'package:flutter/material.dart';
import 'package:neuron_register/neuron_register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neuron Register Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: RegisterPage(
          onButtonTap: (onValue) {
            print(onValue.username);
            print(onValue.password);
            print(onValue.name);
            print(onValue.phone);
          },
          buttonColor: Colors.red,
          splashButtonColor: Colors.grey,
          buttonText: 'SELANJUTNYA',
          buttonTextColor: Colors.white,
          onTextLoginTap: (onValue) {
            print('onTextLoginTap $onValue');
          },
          textLogin: true,
          buttonGoogleShow: true,
          buttonFacebookShow: true,
          labelInputUsername: 'E-Mail',
          labelInputPassword: 'Password',
          labelInputName: 'Nama',
          labelInputPhone: 'No. HP',
          onButtonGoogleTap: (onValue) {
            print('onButtonGoogleTap $onValue');
          },
          onButtonFacebookTap: (onValue) {
            print('onButtonFacebookTap $onValue');
          },
          assetFacebookButton: 'assets/images/facebook.png',
          assetGoogleButton: 'assets/images/google.png',
          showLabelInputUsername: true,
          showLabelInputPassword: true,
          showLabelInputName: true,
          showLabelInputPhone: true,
        ),
      ),
    );
  }
}
