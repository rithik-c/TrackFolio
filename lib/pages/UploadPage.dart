// ignore_for_file: file_names, must_be_immutable
import 'package:flutter/material.dart';
import '/widgets/bottom_navigation_bar.dart';
import 'homePage.dart';

class UploadPage extends StatelessWidget {
  final Function(int) onItemTapped;

  UploadPage({super.key, required this.onItemTapped});


  BuildContext get context => this.context;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
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
              decoration: const BoxDecoration(),
              child: const Center(
                child: Text(
                  "Upload File",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
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
                        child: Container(
                          margin: const EdgeInsets.all(20.0),
                          height: 100,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Center(
                            child: Icon(Icons.cloud_upload),
                          ),
                        ),
                    ),

                    // NOTES
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10.0),
                        child: Column(children: [
                          const Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text('NOTES',
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.white)),
                          ),
                          Flexible(
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              minLines: 4,
                              maxLines: 4,
                              keyboardType: TextInputType.multiline,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  gapPadding: 10.0,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 1.0),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () => {
                        redirectToNewPage(context),
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff008BCC)),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      child: const Text('Upload'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> redirectToNewPage(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        // builder: (context) => ClientsProfile(data: documentID),
          builder: (context) => const HomePage()),
    );
  }
}

//top bar navigation
AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFF003B57),
    actions: [],
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
