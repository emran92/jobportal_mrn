import 'package:flutter/material.dart';

FloatingActionButton floatingActionButtonNext(BuildContext context, MaterialPageRoute pageRoute) {
  return FloatingActionButton(
    backgroundColor: Color(0xFFDE1E37),
    onPressed: () {
      Navigator.push(context, pageRoute);
    },
    child: Icon(
      Icons.arrow_forward,
      size: 30.0,
    ),
  );
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Image.asset('assets/images/bottombackground.png',
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,color: Color.fromRGBO(255, 255, 255, 0.7),
          colorBlendMode: BlendMode.modulate
          ),
    );
  }
}

class BackButtonPop extends StatelessWidget {
  const BackButtonPop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  PageTitle({this.titleText,this.fontSize});

  final String titleText;
  final fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,top: 20.0,bottom: 10.0),
      child: Container(
        child: Row(
          children: <Widget>[
            Flexible(
              child: Text(
                titleText,
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonInputForm extends StatelessWidget {

  CommonInputForm({this.labelText});

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      height: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(10.0)),
              ),
              labelText: labelText,
              labelStyle: TextStyle(fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}