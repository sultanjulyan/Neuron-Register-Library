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
    showTextLogin: true,
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
    orText: 'Atau',
    labelAlreadyAccount: 'Sudah Punya Akun?',
    colorLogin: Colors.red,
  ),
```

| Function | Description | Return |
| ------ | ------ | ------ |
| buttonColor | Set color for button submit |
| splashButtonColor | Set splash button submit color |
| buttonText | Set text for button submit |
| buttonTextColor | Set text color for button submit |
| labelInputUsername | Label and hint text for input username |
| labelInputPassword | Label and hint text for input password |
| labelInputName | Label and hint text for input name |
| labelInputPhone | Label and hint text for input phone |
| showLabelInputUsername | Show or hide label and text input username |
| showLabelInputPassword | Show or hide label and text input password |
| showLabelInputName | Show or hide label and text input name |
| showLabelInputPhone | Show or hide label and text input phone |
| showTextLogin | Show or hide text login label |
| buttonFacebookShow | Show or hide button sign up wih facebook |
| buttonGoogleShow | Show or hide button sign up wih google |
| assetFacebookButton | Set logo facebook |
| assetGoogleButton | Set logo google |
| onButtonTap | Return if button login tapped | String username<br>String password<br>String name<br>String phone |
| onTextLoginTap | Return if button login tapped |
| onButtonGoogleTap | Return if button google tapped |
| onButtonFacebookTap | Return if button facebook tapped |
| orText | Set or text |
| labelAlreadyAccount | Set text label login |
| colorLogin | Set color label login |


## UI

![image](/uploads/aa918dd8560c9359043c16a098dfe1fd/image.png)

## Getting Started

See the example directory for a complete sample app using Neuron Register.
