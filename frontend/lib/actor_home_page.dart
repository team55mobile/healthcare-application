import 'package:flutter/material.dart';
import 'package:frontend/main.dart';

class ActorHomePage extends StatefulWidget {
  ActorHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ActorHomePageState createState() => _ActorHomePageState();
}

class _ActorHomePageState extends State<ActorHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // systemOverlayStyle: ,
        // elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          AppointmentInfoRow(counter: _counter),
          AppointmentInfoRow(counter: _counter),
          // SampleDecoratedImage()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class SampleDecoratedImage extends StatelessWidget {
  const SampleDecoratedImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: const DecorationImage(
          image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: colorShadow,
          width: 8,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class AppointmentInfoRow extends StatelessWidget {
  const AppointmentInfoRow({
    Key key,
    @required int counter,
  })  : _counter = counter,
        super(key: key);

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width * 0.8,
      // padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(8),
      // decoration: ShapeDecoration(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: colorShadow, width: 0.2, style: BorderStyle.solid),
          //backgroundBlendMode: BlendMode.difference,
          color: colorWhite,
          boxShadow: [
            BoxShadow(color: colorShadow, offset: Offset(0, 0), blurRadius: 8)
          ]),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(color: colorGreen),
            width: 6,
            height: 100,
          ),
          //first colum
          Column(
            children: [
              Text(
                'Appointment type',
                style: TextStyle(
                    color: Color(0x77000000),
                    fontSize: 16,
                    height: 1.5,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Appointment status',
                style: TextStyle(
                    color: colorOrange,
                    fontSize: 12,
                    height: 1.5,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          //second column
          Column(),

          //third column
          Flexible(
            child: Column(
              //verticalDirection: VerticalDirection.up,
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'You have pushed the button this many times:',
                  textAlign: TextAlign.center,
                  //overflow: TextOverflow.fade,
                  maxLines: 3,
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
