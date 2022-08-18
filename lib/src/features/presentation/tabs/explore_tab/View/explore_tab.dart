import 'package:flutter/material.dart';
//colores
import 'package:delivery/src/colors/colors.dart';

//Swiper
//import 'package:flutter_swiper/flutter_swiper.dart';  no funciona
import 'package:card_swiper/card_swiper.dart';
//Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/header_text.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          right: true,
          left: false,
          child: CustomScrollView(slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      _topBar(context),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          alignment: Alignment.centerLeft,
                          child: headerText("Discover New Places", Colors.black,
                              FontWeight.bold, 30.0)),
                      _sliderCards(),
                      //_sliderCards(),
                      //_sliderCards(),
                      _headers(context, "Polular this Week", "Show all"),
                      _populares(context,
                          "https://images.unsplash.com/photo-1561758033-7e924f619b47?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                      _populares(context,
                          "https://images.unsplash.com/photo-1587578104013-fc8fcaf8b513?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                      _populares(context,
                          "https://images.unsplash.com/photo-1579887829494-5b736888265a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                      _populares(context,
                          "https://images.unsplash.com/photo-1614436162549-106a495513a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fGNvbWlkYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                      _populares(context,
                          "https://images.unsplash.com/photo-1569529465841-dfecdab7503b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YWxjb2hvbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                      SizedBox(
                        height: 10.0,
                      ), //genera un espacio en blanco hacia abajo
                      _headers(context, "Collections", "Show all"),
                      _sliderCollections()
                    ],
                  ))
            ]))
          ])),
    );
  }
}

//Boton Circular y Search
Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 290,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.0,
              color: gris,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child:
                  Text("Search", style: TextStyle(color: gris, fontSize: 17.0)),
            )
          ],
        ),
      ),
      Container(
        width: 40.0,
        height: 40.0,
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30)),
        child: IconButton(
            icon: Icon(
              Icons.filter_list,
              size: 28,
              color: Colors.white,
            ),
            onPressed: () {}),
      )
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 300.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT, //Cuadros de Opciones
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjeta(context);
            });
      },
    ),
  );
}

//tarjeta de contenido
Widget _tarjeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(1.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
              width: 190.0,
              height: 230.0,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=481&q=80")),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: Text("Pizza y Algo mas",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("Otro producto",
                  style: TextStyle(
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0)),
            ),
            Row(
              children: [
                Icon(Icons.star, color: amarillo, size: 16),
                Text("4.8",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Text("(233 Ratings)",
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 80.0,
                  height: 18.0,
                  child: RaisedButton(
                    elevation: 0.5, //elevacion
                    shape: StadiumBorder(), //redondeado
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    onPressed: () {},

                    child: Text("Delivery", style: TextStyle(fontSize: 11.0)),
                  ),
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 20.0),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(textAction,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0)),
            Icon(Icons.play_arrow)
          ],
        ),
      )
    ],
  );
}

//Carta de Imag lateral
Widget _populares(BuildContext context, String foto) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 5),
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: NetworkImage(foto),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText("Andy & Cindy Diner", Colors.black,
                          FontWeight.bold, 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "87 Botsford Circle Apt",
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: amarillo, size: 16.0),
                      Text(
                        "4.5  *",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "230 Ratings",
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Container(
                        //Boton Vertical
                        margin: EdgeInsets.only(left: 25.0),
                        width: 110.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: Theme.of(context).accentColor,
                          onPressed: () {},
                          child: Text(
                            "Delivery",
                            style:
                                TextStyle(fontSize: 11.0, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180.0,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjetaCollection(context);
            });
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
          ),
        ),
      ],
    ),
  );
}
