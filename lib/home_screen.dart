import 'dart:convert';

import 'package:firebase_notifications/notification_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.foregroundMessage();
    notificationServices.firebaseInit(context);
    notificationServices.setupInteractMessage(context);
    notificationServices.isTokenRefresh();
    notificationServices.getDeviceToken().then((value) {
      print("Device token: ");
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade400,
        centerTitle: true,
        title: const Text(
          "Firebase Notifications",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              notificationServices.getDeviceToken().then((value) async {
                var data = {
                  'to': value.toString(),
                  'priority': 'high',
                  'notification': {
                    'title': 'Usman',
                    'body': 'Message Testing',
                  },
                  'data': {
                    'type': 'msj',
                  }
                };
                await http
                    .post(Uri.parse('po'), body: jsonEncode(data), headers: {
                  'Content-Type': 'application/json; charset=UTF-8',
                  'Authorization':
                      'key=AAAAJRu9XPA:APA91bHJLL7bkSzFNWDjd8tkjFLvams4ZgpXUaWlPiyGinJPyalB-jtF6rLRg8X9nl439iL2Cai4qPktj3LH_mLEek9APo-OTo0B84zir1b-bSJo7ApIJaApB8px6jyt2bDpwg10PbPc'
                });
              });
            },
            child: const Text(
              "Send Notifications",
              style: TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
