import 'package:flutter/material.dart';

AppBar HomeAppBar = AppBar(
        title: Center(child: Text("Discover", style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 2),)),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.account_circle,
                size: 36,
              ),
              onPressed: () {

              })
        ],
      );