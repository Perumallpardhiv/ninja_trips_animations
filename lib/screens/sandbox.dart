import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Sandbox extends StatefulWidget {
  const Sandbox({Key key}) : super(key: key);

  @override
  State<Sandbox> createState() => _SandboxState();
}

class _SandboxState extends State<Sandbox> {

  double _opacity = 1; // means fully visible
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color, 
        duration: Duration(seconds: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Animate Margin'),
              onPressed: () => setState(() => _margin = 50),
            ),
            ElevatedButton(
              child: Text('Animate Color'),
              onPressed: () => setState(() => _color = Colors.purple),
            ),
            ElevatedButton(
              child: Text('Animate Width'),
              onPressed: () => setState(() => _width = 350),
            ),
            ElevatedButton(
              child: Text('Animate Opacity'),
              onPressed: () => setState(() => _opacity = 0 ), // means invisible
            ),
            AnimatedOpacity(
              opacity: _opacity, 
              duration: Duration(seconds: 2),
              child: Text(
                'Hide Me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
