import 'package:flutter/material.dart';
import '../../Colors.dart';

Widget drawerMenu({BuildContext context, Function onPressed}) {
  return Positioned(
      top: 15,
      left: 10,
      child: IconButton(
          icon: Icon(
            Icons.menu_rounded,
            size: 40,
          ),
          onPressed: onPressed));
}

Widget textFormField(BuildContext context, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        text,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 2.2,
        height: 30,
        child: TextFormField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              hintText: '',
              contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
              filled: true,
              fillColor: Color(getColorHexFromStr('#F8D5A799')),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none)),
        ),
      )
    ],
  );
}

int group = 1;
Widget ticketType(
    {BuildContext context, int val, Function onChanged, String text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: 30,
        height: 15,
        margin: EdgeInsets.symmetric(horizontal: 3),
        child: Radio(
          value: val,
          groupValue: group,
          onChanged: onChanged,
          activeColor: Theme.of(context).primaryColor,
        ),
      ),
      Text(text)
    ],
  );
}

String newValue;
Widget trainLines(
    {BuildContext context, Function onChanged, Function dropButtonOnChanged}) {
  return Column(
    children: [
      SizedBox(height: 80),
      Container(
        width: MediaQuery.of(context).size.width - 80,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Color(getColorHexFromStr('#F6ECDF')),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 8,
                blurRadius: 8,
                offset: Offset(12, 12),
              )
            ]),
        child: Column(
          children: [
            Text(
              'All Train Lines',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.65),
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            textFormField(context, 'From'),
            SizedBox(height: 10),
            textFormField(context, 'To     '),
            SizedBox(height: 10),
            Container(
              width: 120,
              height: 30,
              decoration: BoxDecoration(
                  color: Color(getColorHexFromStr('#F8D5A799')),
                  borderRadius: BorderRadius.circular(8)),
              child: DropdownButton(
                value: newValue,
                onChanged: dropButtonOnChanged,
                items: [
                  DropdownMenuItem(child: Text('Flexable')),
                  DropdownMenuItem(child: Text('Fixed'))
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 12),
                Text(
                  'Ticket Type',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width - 110,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ticketType(
                      context: context,
                      onChanged: onChanged,
                      val: 1,
                      text: 'VIP'),
                  ticketType(
                      context: context,
                      onChanged: onChanged,
                      val: 2,
                      text: '1st Class'),
                  ticketType(
                      context: context,
                      onChanged: onChanged,
                      val: 3,
                      text: '2nd Class'),
                ],
              ),
            ),
            InkWell(
              onTap: null,
              child: Text(
                'Search',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 12),
      preferences(
          image: 'assets/images/Live Train View.png',
          title: 'Train Between',
          onTap: null),
      preferences(
          image: 'assets/images/Live Train View.png',
          title: 'Live Train View',
          onTap: null),
      preferences(
          image: 'assets/images/Destination Alarm.png',
          title: 'Destination Alarm',
          onTap: null),
    ],
  );
}

Widget preferences({String image, String title, Function onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Image(
            width: 120,
            height: 120,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
          )
        ],
      ),
    ),
  );
}