import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyApp(),
    );
  }
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  String appTitle = 'Flutter layout demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appTitle,
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1),
              ),
              width: 350,
              height: 700,
              child: SingleChildScrollView(
                child: Column(children: [
                  ImageSection(image: 'images/lake.jpg'),
                  TitleSection(
                      name: 'Oeschinen Lake Campground',
                      location: 'Kandersteg, Switzerland'),
                  ButtonSection(),
                  TextSection(
                    description:
                        'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                        'Bernese Alps. Situated 1,578 meters above sea level, it '
                        'is one of the larger Alpine Lakes. A gondola ride from '
                        'Kandersteg, followed by a half-hour walk through pastures '
                        'and pine forest, leads you to the lake, which warms to 20 '
                        'degrees Celsius in the summer. Activities enjoyed here '
                        'include rowing, and riding the summer toboggan run.',
                  )
                ]),
              )),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  final String name;
  final String location;

  const TitleSection({super.key, required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                location,
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        FavoriteWidget()
      ]),
    );
  }
}

// this is a custom class to make icon and text
class ButtonWithText extends StatelessWidget {
  final Color color;
  final String lable;
  final IconData icon;

  ButtonWithText(
      {super.key,
      required this.color,
      required this.icon,
      required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            lable,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        )
      ],
    );
  }
}

// a class Creating a row of icon text

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, lable: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, lable: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, lable: 'SHARE')
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final String description;
  const TextSection({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toogleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoriteCount -= 1;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0.0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toogleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }
  // #docregion favorite-state-fields
}
