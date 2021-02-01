import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0XFFF6ECDF),
          borderRadius: BorderRadius.circular(60),
        ),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(30),
                child: Icon(
                  Icons.favorite,
                  color: Color(0XFFF07611),
                  size: 50,
                ),
                decoration: BoxDecoration(
                    color: Color(0XFFFFFFFF),
                    borderRadius: BorderRadius.circular(25))),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: 310,
                  height: MediaQuery.of(context).size.height * 0.81,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (ctx, index) {
                      return (Container(
                        child: Column(
                          children: [
                            Container(
                              child: Divider(
                                indent: 2,
                                endIndent: 2,
                                thickness: 5,
                                color: Color(0XFF100E0D4D),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Container(
                                        child: Text(
                                          'Mansora ',
                                        ),
                                      ),
                                      Container(
                                        child: Icon(Icons.arrow_forward),
                                      ),
                                      Container(
                                        child: Text(
                                          'Tanta',
                                        ),
                                      ),
                                    ],
                                  )),
                                  Container(
                                    child: Text(
                                      'Train 808-Upgraded',
                                      style:
                                          TextStyle(color: Color(0XFFF07611)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      '03:40 : 04:50',
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      '2.00 EPG',
                                      style:
                                          TextStyle(color: Color(0XFFF07611)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
