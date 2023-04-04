import 'package:flutter/material.dart';
import '/widgets/bottom_navigation_bar.dart';

class AddClients extends StatelessWidget {
  final Function(int) onItemTapped;

    AddClients({required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(),
        bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: onItemTapped,
      ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(),
            child: Center(
              child: Text(
                "New Client",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),


          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff008BCC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                        child: Row(
                      children: [
                        // profile pic
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 1,
                            child: Container(
                              child: CircleAvatar(
                                radius: 60,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 58,
                                  backgroundColor: Colors.white,
                                  //backgroundImage: NetworkImage(
                                  //'INSERT_YOUR_URL_HERE',
                                  // ),
                                  //),
                                ),
                              ),
                            ),
                          ),
                        ),
                  
                        // name and company
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 7.0, right: 5.0),
                                    child: TextFormField(
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Enter name',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 7.0, right: 5.0),
                                    child: TextFormField(
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        labelText: 'Enter company',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  
                  // ADDRESS
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: Column(children: [
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'ADDRESS',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Flexible(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: 'enter here',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  
                  // PHONE
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: Column(children: [
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'PHONE',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Flexible(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: 'enter here',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  
                  // NOTES
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      child: Column(children: [
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text('NOTES',
                              textAlign: TextAlign.start,
                              style: TextStyle(color: Colors.white)),
                        ),
                        Flexible(
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            minLines: 4,
                            maxLines: 4,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: 'enter here',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                gapPadding: 10.0,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  
                  // PROJECTS
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text('  PROJECTS',
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.white)),
                  ),
                  
                  Expanded(
                    flex: 2,
                    child: Row(children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(13.0)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(13.0)),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(13.0)),
                        ),
                      ),
                    ]),
                  ),
                  
                  // SEE ALL BUTTON
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      onPressed: () {}, //go to all projects
                      child: Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
         ],),
      ),
    );
  }
}

//top bar navigation
AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFF003B57),
    actions: [
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {},
              //onSaved(){},
              child: Text('Save'),
            ),
          ],
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
