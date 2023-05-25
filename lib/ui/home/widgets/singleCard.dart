import 'package:flutter/material.dart';

class SingleCard extends StatelessWidget {
  final IconData icon;

  final String text;

  const SingleCard({Key? key, required this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width * 0.4,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4,
            offset: Offset(1, 3), // Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            this.icon,
            size: 90,
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(5),
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                disabledColor: Colors.white,
                elevation: 0,
                color: Colors.blue,
                child: Container(
                  child: Text(this.text, style: TextStyle(color: Colors.white)),
                ),
                onPressed: (() {})),
          ),
        ],
      ),
    );
  }
}
