// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import '/widgets/bottom_navigation_bar.dart';
import '../classes/project.dart';

class projectPage extends StatelessWidget {
  final Project project;

  projectPage({required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: <Widget>[
                //Pinned and thumb pin
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Project Overview',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),

                //Project name and description
                CircleAvatar(
                  // ignore: unnecessary_string_interpolations
                  backgroundImage: NetworkImage("${project.projectImage}"),
                  radius: 70,
                ),

                Container(
                  child: ListTile(
                    title: Text(
                      project.projectName,
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      project.projectDescription,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  child:  Text(
                      'Client: ${project.projectClient}',
                      textAlign: TextAlign.center,
                    ),
                ),

                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: const <Widget>[
                      Text('Labels'),
                    ],
                  ),
                ),

                Row(
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        //Change the next item to show the number of pinned items
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 120,
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight: Radius.circular(50.0),
                                bottomLeft: Radius.circular(50.0),
                                bottomRight: Radius.circular(50.0),
                              ),
                              color: const Color(0xFF72C3E6),
                              border: Border.all(
                                color: const Color(0xFF003B57),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    project.projectDescription
                                    // projects[index].projectName,
                                    // style: const TextStyle(
                                    //   fontSize: 13,
                                    //   fontWeight: FontWeight.w500,
                                    //   color: Colors.white,
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),

                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Tasks',
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    //Change the next item to show the number of pinned items
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 120,
                        margin: const EdgeInsets.all(10.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                          ),
                          color: const Color(0xFF72C3E6),
                          border: Border.all(
                            color: const Color(0xFF003B57),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'hello2'
                                // projects[index].projectName,
                                // style: const TextStyle(
                                //   fontSize: 13,
                                //   fontWeight: FontWeight.w500,
                                //   color: Colors.white,
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const <Widget>[
                          Text('Comments'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const <Widget>[
                          Text('see all'),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(project.projectComments),
                ),
              ],
            )),
      ),
      // bottomNavigationBar: BottomNavBar(
      //   currentIndex: 1,
      //   onTap: projectPage(project: project),
      // ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: const Color(0xFF003B57),
    title: Row(
      children: const [
        Icon(
          Icons.notifications,
          color: Colors.white,
        ),
        SizedBox(width: 20),
        Spacer(),
        Icon(
          Icons.search,
          color: Colors.white,
        ),
      ],
    ),
  );
}
