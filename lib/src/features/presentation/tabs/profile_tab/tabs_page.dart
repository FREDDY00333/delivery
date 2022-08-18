import 'package:delivery/src/features/presentation/commons_widgets/alert_dialog.dart';
import 'package:flutter/material.dart';
//tabs
import 'package:delivery/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:delivery/src/features/presentation/tabs/favourite_tab/View/favourite_tab.dart';
import 'package:delivery/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:delivery/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  //LISTA DE PAGINAS
  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab()
  ];
//Selector y Funcion de Pagina de inicio
  int _selectedItemIndex = 0;
  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        //Barra abajo
        iconSize: 30.0,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showSelectedLabels: true, //muestra el texto debajo de cada icono
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.assessment), label: "My Order"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin), label: "Profile"),
        ]);
  }

  Future _pedirLocation(BuildContext context) async {
   //await showAlertDialog(
        //context,
        //AssetImage("assets/location.png"),
        //"Enable Your Location",
        //"Plaase allow to use your location to show nearby restaurant on the map",
        //_doneButton(context, "Enable Location")
     //   );
  }

  Widget _doneButton(BuildContext context, String labelButton) {
    return Container(
        width: 370.0,
        height: 45.0,
        margin: EdgeInsets.only(top: 40.0),
        child: RaisedButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, "login");
          },
          color: Theme.of(context).accentColor,
          child: Text(
            labelButton,
            style: TextStyle(color: Colors.white, fontSize: 17.0),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ));
  }
}
