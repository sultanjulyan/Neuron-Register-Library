import 'package:flutter/material.dart';

import 'model/form_user.dart';

class RegisterPage extends StatefulWidget {
  final ValueChanged<FormUser> onButtonTap;
  final ValueChanged<bool> onTextLoginTap;
  final Color buttonColor;
  final Color splashButtonColor;
  final String buttonText;
  final Color buttonTextColor;
  final String labelInputUsername;
  final String labelInputPassword;
  final String labelInputName;
  final String labelInputPhone;
  final String base64Image;
  final bool textLogin;
  final bool buttonFacebookShow;
  final bool buttonGoogleShow;

  const RegisterPage(
      {Key key,
      this.onButtonTap,
      this.onTextLoginTap,
      this.buttonColor,
      this.splashButtonColor,
      this.buttonText,
      this.buttonTextColor,
      this.labelInputUsername,
      this.labelInputPassword,
      this.labelInputName,
      this.labelInputPhone,
      this.base64Image,
      this.textLogin,
      this.buttonFacebookShow,
      this.buttonGoogleShow})
      : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  bool isLoggedIn = false;
  bool isHidden = true;

  void _toogleVisible() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  void onLoginStatusChanged(bool isLoggedIn) {
    setState(() {
      this.isLoggedIn = isLoggedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool _isTextLoginShow;
    bool _isTextOrShow = false;
    bool _isButtonFacebookShow;
    bool _isButtonGoogleShow;

    if (widget.textLogin != null) {
      _isTextLoginShow = widget.textLogin;
    } else {
      _isTextLoginShow = false;
    }

    if (widget.buttonGoogleShow != null) {
      _isButtonGoogleShow = widget.buttonGoogleShow;
      _isTextOrShow = widget.buttonGoogleShow;
    } else {
      _isButtonGoogleShow = false;
    }

    if (widget.buttonFacebookShow != null) {
      _isButtonFacebookShow = widget.buttonFacebookShow;
      _isTextOrShow = widget.buttonFacebookShow;
    } else {
      _isButtonFacebookShow = false;
    }

    final imageLayout = new Container(
      margin: const EdgeInsets.only(top: 50.0),
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              height: 130.0,
              child: widget.base64Image != null ? Image.asset(widget.base64Image) : new Container(),
            ),
          ],
        ),
      ),
    );

    final labelForm = new Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: new Text(
        'Register',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20.0),
      ),
    );

    final labelInputUsername = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: new Text(
            widget.labelInputUsername != null ? widget.labelInputUsername : 'Email',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: new TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            decoration: InputDecoration(
              prefixIcon: new Icon(
                Icons.mail_outline,
                color: Color(0XFF8A8A8A),
              ),
              hintText: widget.labelInputUsername != null ? widget.labelInputUsername : 'Email',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
      ],
    );

    final labelInputName = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: new Text(
            widget.labelInputName != null ? widget.labelInputName : 'Nama',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: new TextFormField(
            controller: nameController,
            autofocus: false,
            decoration: InputDecoration(
              prefixIcon: new Icon(
                Icons.person,
                color: Color(0XFF8A8A8A),
              ),
              hintText: widget.labelInputName != null ? widget.labelInputName : 'Nama',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
      ],
    );

    final labelInputPassword = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: new Text(
            widget.labelInputPassword != null ? widget.labelInputPassword : 'Password',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: new TextFormField(
            controller: passwordController,
            autofocus: false,
            obscureText: isHidden,
            decoration: InputDecoration(
              prefixIcon: new Icon(
                Icons.lock_outline,
                color: Color(0XFF8A8A8A),
              ),
              suffixIcon: new IconButton(
                icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility, size: 18),
                onPressed: _toogleVisible,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                color: Color(0XFF8A8A8A),
              ),
              hintText: widget.labelInputPassword != null ? widget.labelInputPassword : 'Password',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
      ],
    );

    final labelInputPhone = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        new Container(
          margin: const EdgeInsets.only(top: 15.0),
          child: new Text(
            widget.labelInputPhone != null ? widget.labelInputPhone : 'No. HP',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          ),
        ),
        new Container(
          margin: const EdgeInsets.only(top: 5.0),
          child: new TextFormField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            autofocus: false,
            decoration: InputDecoration(
              prefixIcon: new Icon(
                Icons.phone,
                color: Color(0XFF8A8A8A),
              ),
              hintText: widget.labelInputPhone != null ? widget.labelInputPhone : 'No. HP',
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            ),
          ),
        ),
      ],
    );

    final buttonRegister = new Container(
      margin: const EdgeInsets.only(top: 25.0),
      width: double.infinity,
      height: 45.0,
      child: new FlatButton(
        splashColor: widget.splashButtonColor,
        onPressed: () {
          widget.onButtonTap(
            new FormUser(
                username: emailController.text,
                password: passwordController.text,
                name: nameController.text,
                phone: phoneController.text),
          );
        },
        child: Text(widget.buttonText != null ? widget.buttonText : 'SELANJUTNYA'),
        textColor: widget.buttonTextColor != null ? widget.buttonTextColor : Colors.white,
        color: widget.buttonColor != null ? widget.buttonColor : Color(0XFF0A5B75),
        shape: StadiumBorder(),
      ),
    );

    final labelAlreadyAccount = GestureDetector(
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            'Sudah Punya Akun? ',
            style: TextStyle(color: Colors.grey),
          ),
          GestureDetector(
            child: new Text(
              'Login',
              style: TextStyle(color: Color(0XFF24A5F3)),
            ),
            onTap: () {
              widget.onTextLoginTap(true);
            },
          ),
        ],
      ),
    );

    final labelSeparator = new Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: Colors.grey,
              height: 36,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0, left: 10.0),
            child: new Text(
              'Atau',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
          ),
          Expanded(
            child: Divider(
              color: Colors.grey,
              height: 36,
            ),
          ),
        ],
      ),
    );

    final buttonLoginFacebook = new Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: new Container(
          width: double.infinity,
          color: Color(0XFF3B5998),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                height: 25.0,
                width: 25.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('assets/images/facebook.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              new FlatButton(
                onPressed: () {},
                child: Text('Lanjutkan dengan Facebook'),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );

    final buttonLoginGoogle = new Container(
      margin: EdgeInsets.only(top: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40.0),
        child: new Container(
          width: double.infinity,
          color: Colors.red,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                height: 40.0,
                width: 40.0,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('assets/images/google.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              new FlatButton(
                onPressed: () {},
                child: Text('Lanjutkan dengan Google'),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );

    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(35.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  labelForm,
                  labelInputUsername,
                  labelInputPassword,
                  labelInputName,
                  labelInputPhone,
                  buttonRegister,
                  new Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        _isTextOrShow ? labelSeparator : Container(),
                        new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            _isButtonFacebookShow ? buttonLoginFacebook : Container(),
                            _isButtonGoogleShow ? buttonLoginGoogle : Container()
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _isTextLoginShow
                ? Container(
                    height: MediaQuery.of(context).size.height - 25,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: labelAlreadyAccount,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
