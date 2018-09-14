import 'package:flutter/material.dart';
import 'category.dart';

final _backgroundColor = Colors.green[100];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return ListView.builder(
          itemBuilder: (context, index) => categories[index],
          itemCount: categories.length,
        );
      } else {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4.0,
          ),
          itemBuilder: (context, index) => categories[index],
          itemCount: categories.length,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var categoriesList = <Widget>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categoriesList.add(
        Center(
          child: Category(
            name: _categoryNames[i],
            color: _baseColors[i],
            iconLocation: Icons.cake,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Revize',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: _backgroundColor,
      ),
      body: Container(
        color: _backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: _buildCategoryWidgets(categoriesList),
      ),
    );
  }
}
