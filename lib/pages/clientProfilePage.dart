// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../classes/client.dart';

class ClientsProfile extends StatelessWidget {
  // const ClientsProfile({super.key});

  final Client client;

  ClientsProfile({required this.client});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   title: const Text(
        //     "CLIENT PROFILE",
        //     style: TextStyle(color: Colors.black),
        //   ),
        //   // go back to main page
        //   leading: GestureDetector(
        //       onTap: () => Navigator.pop(context),
        //       child: const Icon(
        //         Icons.arrow_back_ios_new_rounded,
        //         color: Colors.black,
        //       )),
        // ),

        appBar: AppBar(
          backgroundColor: const Color(0xFF003B57),
          title: Row(
            children:  [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Client Overview',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
            ],
          ),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            )),
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
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
                  child:  Container(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 58,
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                          "${client.clientImage}",
                        ),
                      ),
                    ),
                  )
                ),

                //name and company
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 7.0, right: 5.0),
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              "${client.clientName}",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0, right: 5.0),
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              "${client.clientCompany}",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ADDRESS
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    child: Column(children:  [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'ADDRESS',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            '${client.clientAddress}',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),

                // PHONE
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    child: Column(children: [
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'PHONE',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0, left: 5.0),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            '${client.clientPhone}',
                            style: TextStyle(color: Colors.white),
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
                    margin: const EdgeInsets.all(5.0),
                    child: Column(children: [
                      const Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text('NOTES',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.8),
                              borderRadius: BorderRadius.circular(13.0)),
                          child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "${client.clientNotes}",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ]),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
