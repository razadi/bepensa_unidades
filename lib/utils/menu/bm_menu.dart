import 'package:flutter/material.dart';

class BmMenu {
  final String title;
  final String link;
  final IconData icon;

  const BmMenu({
    required this.title,
    required this.link,
    required this.icon
  });
}

const bmMenuItems = <BmMenu>[
  BmMenu(
    title: 'Primer opción', 
    link: '/', 
    icon: Icons.edit_document
  ),
  BmMenu(
    title: 'segunda opción', 
    link: '/login', 
    icon: Icons.find_in_page
  ),
  BmMenu(
    title: 'tercera opción', 
    link: '/sucursales', 
    icon: Icons.find_in_page
  )
];