import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Container(
        child: Expanded(
          child: FittedBox(
            fit: BoxFit.contain,
            alignment: Alignment.center,
            child: Image(
              width: 300.0,
              height: 300.0,
              image: NetworkImage(
                'https://i.picsum.photos/id/37/250/250.jpg?hmac=ZMIo0U9qQ6H3-jXK1khrSHzz-JeUuFQw5Hu0VO8Sdjg',
              ),
            ),
          ),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.yellow[700],
        ),
        padding: EdgeInsets.all(80),
        margin: const EdgeInsets.all(25),
      ),
    ),
  );
}
