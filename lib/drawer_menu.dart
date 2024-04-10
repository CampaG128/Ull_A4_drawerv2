import 'package:flutter/material.dart';
import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.circle_rounded,
              text: 'Row centrado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.fork_left,
              text: 'Row izquierda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.fork_right,
              text: 'Row derecha',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          _buildDrawerItem(
              icon: Icons.space_bar_outlined,
              text: 'Row repartido',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.center_focus_strong,
              text: 'Columna centrada',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.cent)}),
          _buildDrawerItem(
              icon: Icons.space_dashboard_sharp,
              text: 'Columna repartida',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.rep)}),
          _buildDrawerItem(
              icon: Icons.rectangle_outlined,
              text: 'Columna estirada',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.esti)}),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/rb.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
