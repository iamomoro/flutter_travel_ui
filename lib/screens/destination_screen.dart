import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({super.key, required this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [BoxShadow(
                color: Colors.black26, 
                offset: Offset(0.0, 2.0), 
                blurRadius: 6.0,
               ),
               ],
              ),
              child: Hero(
                tag: widget.destination.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                    image: AssetImage(widget.destination.imageUrl),
                    fit: BoxFit.cover,
                    ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: Colors.black,
                  ),
                  Row(children: <Widget>[
                    IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.search),
                    iconSize: 30.0,
                    color: Colors.black,
                    ),
                    IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(FontAwesomeIcons.sortAmountDown),
                    iconSize: 25.0,
                    color: Colors.black,
                    ),
                  ],)
                ],
              ),
            )
        ],
        )
      ],
      ),
    );
  }
}
