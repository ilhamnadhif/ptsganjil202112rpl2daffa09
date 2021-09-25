import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailMoviePage extends StatelessWidget {
  final String title,
      desc,
      releaseDate,
      imagePath,
      imageBackground,
      popularity,
      language;
  const DetailMoviePage(
      {required this.title,
      required this.desc,
      required this.language,
      required this.popularity,
      required this.imagePath,
      required this.imageBackground,
      required this.releaseDate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imageBackground),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Release Date: ",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Text(
                        releaseDate,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "lenguage: ",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Text(
                        language,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "popularity: ",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      Text(
                        popularity,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
