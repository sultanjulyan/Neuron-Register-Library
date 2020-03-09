# Neuron Register

[![Build Status](https://api.cirrus-ci.com/github/flutter/plugins.svg)](https://cirrus-ci.com/github/flutter/plugins/master)

Flutter register package from Neuron with 🥰 . Supports for iOS and Android.

## Usage

Add this line to `pubspec.yaml`


```
   dependencies:
     neuron_register:

```

## Import

```
import 'package:neuron_register/neuron_register.dart';

```

## Example

```
  RegisterPage(
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
```

| Function | Description | Return |
| ------ | ------ | ------ |
| buttonColor | Set color for button submit |
| splashButtonColor | Set splash button submit color |
| buttonText | Set text for button submit |
| buttonTextColor | Set text color for button submit |
| base64Image | Image asset link |
| forgotPassword | Show or hide forgot password |
| forgotPasswordText | Set text for forgot password text |
| forgotPasswordTextColor | Set text color for forgot password |
| buttonRegisterColor | Set color for button register |
| splashButtonRegisterColor | Set splash button register color |
| buttonRegisterText | Set text for button register |
| buttonRegisterTextColor | Set text color for button register |
| buttonRegister | Show or hide button register |
| labelInputUsername | Label and hint text for input username |
| labelInputPassword | Label and hint text for input password |
| onButtonTap | Return if button login tapped | String username<br>String password<br>boolean rememberMe |
| onForgotPasswordTap | Return if text forgot password tapped | boolean |
| onButtonRegisterTap | Return if button register tapped | boolean |

## UI

![image](/uploads/aa918dd8560c9359043c16a098dfe1fd/image.png)

## Getting Started

See the example directory for a complete sample app using Neuron Register.
