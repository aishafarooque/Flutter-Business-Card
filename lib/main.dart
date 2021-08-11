import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}

Widget getProjectCard(String projectName, String projectDescription,
    String imagePath, String programmingLanguage, Color color) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      children: [
        ListTile(
          title: Text(
            projectName,
            style: TextStyle(
                fontSize: 20,
                color: Colors.teal.shade900,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(projectDescription),
        ),
        Image.asset(imagePath),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(5),
          child: Chip(
            labelPadding: EdgeInsets.all(2.0),
            label: Text(
              programmingLanguage,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: color,
            elevation: 6.0,
            shadowColor: Colors.grey[60],
            padding: EdgeInsets.all(8.0),
          ),
        ),
      ],
    ),
  );
}

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text("Projects"),
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            getProjectCard("MoviesDB", "iOS client app to consume the OMDb API",
                "images/movies.jpg", "Swift", Colors.orange),
            getProjectCard(
                "Language Recognizer",
                "iOS app that recognizes over 490 languages and gets parts of speech",
                "images/languages.png",
                "Swift",
                Colors.orange),
            getProjectCard(
                "Automating Customer Service",
                "Program written in Python that uses neural networks to automate customer service",
                "images/customerService.jpg",
                "Python",
                Colors.green)
          ]),
        ));
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage("images/aisha_headshot.jpg"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Aisha Farooque",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Source Sans Pro",
                            color: Colors.white),
                      )
                    ],
                  ),
                ]),
              ),
              ListTile(
                leading: Icon(
                  Icons.personal_video,
                  color: Colors.teal.shade900,
                ),
                title: Text("Projects"),
                onTap: () => Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Projects())),
              ),
              // ListTile(
              //   leading: Icon(
              //     Icons.phone_android,
              //     color: Colors.teal.shade900,
              //   ),
              //   title: Text("Resume"),
              //   onTap: () {
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          ),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage("images/aisha_headshot.jpg"),
            ),
            Text(
              "Aisha Farooque",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              "Software Engineer",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro'),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.teal.shade100,
                thickness: 5,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal.shade900,
                        size: 30,
                      ),
                      title: Text(
                        "+1 123 456 7890",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal.shade900,
                            fontFamily: "Source Sans Pro",
                            fontWeight: FontWeight.bold),
                      ))),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal.shade900,
                          size: 30,
                        ),
                        title: Text(
                          "ashfarooque@gmail.com",
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: "Source Sans Pro",
                              fontWeight: FontWeight.bold),
                        )))),
          ],
        )),
      ),
    ));
  }
}
