import 'package:ecommerce/consts/colors.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartFull extends StatefulWidget {
  
  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    final themeChangeProvider = Provider.of<DarkThemeProvider>(context);
    return Container(
      height: 135,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0),
        ),
        color: Colors.grey,
      ),
      child: Row(
        children: [
          Container(
            width: 135,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cdn.super-groupies.com/images/products/6978/782e9af0-86de-4bd6-8b49-e282885cb70f.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Title',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                          maxLines: 2,
                          // overflow: 文字が親ウィジェットのサイズをオーバーした時の取扱い
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          // splashColor: ,
                          borderRadius: BorderRadius.circular(32.0),
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            child: Icon(
                              Icons.delete_forever,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Price:'),
                      SizedBox(width: 10),
                      Text('450\$', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Subtotal:'),
                      SizedBox(width: 10),
                      Text('450\$',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: themeChangeProvider.darkTheme ? Colors.brown.shade900 : Theme.of(context).accentColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Ships Free',
                        style: TextStyle(
                          color: themeChangeProvider.darkTheme ? Colors.brown.shade900 : Theme.of(context).accentColor,
                        ),
                      ),
                      Spacer(),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          // splashColor: ,
                          borderRadius: BorderRadius.circular(4.0),
                          onTap: () {},
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.remove,
                                color: Colors.red,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Card(
                          elevation: 12,
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.12,
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  ColorsContents.gradiendFStart,
                                  ColorsContents.gradiendLEnd,
                                ],
                                stops: [0.0, 0.7],
                              ),
                            ),
                            child: Text('154', textAlign: TextAlign.center,),
                          ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          // splashColor: ,
                          borderRadius: BorderRadius.circular(4.0),
                          onTap: () {},
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.green,
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
