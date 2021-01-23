import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
      home: IdCard(),
    ));

class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int rateMe = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text("My Id Card"),
        centerTitle: true,
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            rateMe += 1;
          });
        },
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/pawan.jpg'),
                radius: 40.0,
              ),
            ),

            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),

            Text(
                "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0,),

            Text(
              "Pawan Kumar",
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),

            Text(
              "Usn",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0,),

            Text(
              "1nt17is121",
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),

            Text(
              "Rate My Skills",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),

            SizedBox(height: 10.0,),

            Text(
              "$rateMe",
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30.0,),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),

                SizedBox(width: 10.0,),

                Text(
                  "prempawan98@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),

          ],
        ),
      ),

    );
  }
}