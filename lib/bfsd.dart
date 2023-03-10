// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:modal_side_sheet/modal_side_sheet.dart';

class bfsd extends StatefulWidget {
  List sixth;
  bfsd(this.sixth);

  @override
  State<bfsd> createState() => _bfsdState();
}

class _bfsdState extends State<bfsd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar:AppBar(
        backgroundColor:Color(0xff000033),centerTitle:true,
        title:Text("Best Of Foreign Shows"),
        actions: [
          IconButton(
              onPressed: () {
                showModalSideSheet(
                    barrierDismissible: true,
                    width: double.infinity,
                    withCloseControll: false,
                    context: context,
                    body: ListView(
                      children: [
                        Padding( padding: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(hintText: 'Search " Best Of foreign "',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                contentPadding: EdgeInsets.all(0.6),
                                prefixIcon: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_outlined,
                                      color: Colors.black,
                                    ))),
                          ),
                        )
                      ],
                    ));
              },icon: Icon(Icons.search))
        ],
      ),
      body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3,
          crossAxisSpacing:7,
          childAspectRatio:0.75,
          mainAxisSpacing:8 ), itemCount:widget.sixth.length,
        itemBuilder:(context, index) {
          return Container(
              decoration:BoxDecoration(borderRadius:BorderRadius.circular(4),image:DecorationImage(
                  image:AssetImage(widget.sixth[index]),fit:BoxFit.fill))
          );
        },),
    );
  }
}
