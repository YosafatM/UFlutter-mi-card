import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Header(
                  name: "Yosafat Coronel",
                  job: "Ingeniero en Sistemas",
                  imagePath: "images/Perfil.jpg"
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  DataCard(
                    icon: Icons.call,
                    text: '+52 55 2800 9775',
                  ),
                  DataCard(
                    icon: Icons.mail_rounded,
                    text: 'yosafatmartinez21@gmail.com',
                  ),
                  DataCard(
                    icon: Icons.access_time,
                    text: '9 AM a 7 PM',
                  ),
                  DataCard(
                    icon: Icons.add_location,
                    text: 'México, México',
                  ),
                  DataCard(
                    icon: Icons.alternate_email,
                    text: 'Github: Yosafat Martinez',
                  ),
                  DataCard(
                    icon: Icons.apartment,
                    text: 'Doveeto & DSC ESCOM',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final String name, job, imagePath;

  const Header({
    @required this.name,
    @required this.job,
    @required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage(this.imagePath),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              this.name,
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Text(
              this.job,
              style: TextStyle(
                fontFamily: 'Sans',
                fontSize: 20,
              ),
            ),
          ],
        )
      ],
    );
  }
}


class DataCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const DataCard({
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          leading: Icon(
            this.icon,
            color: Colors.teal,
            size: 20.0,
          ),
          title: Text(
            this.text,
            style: TextStyle(
              fontFamily: 'Sans',
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
