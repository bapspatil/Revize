import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.iconLocation})
      : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: InkWell(
          splashColor: color,
          highlightColor: color,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          onTap: () => print('I am tapped!'),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: Icon(
                iconLocation,
                size: 60.0,
              ),
              title: Text(
                name,
                style: Theme.of(context).textTheme.headline,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
