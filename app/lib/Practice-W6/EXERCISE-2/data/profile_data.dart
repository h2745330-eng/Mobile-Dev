import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData sandBagProfile = ProfileData(
  name: "SandBag",
  position: "Flutter Developer",
  avatarUrl: 'assets/avatars/Alex.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "sandBag@cadt.edu"),
    TileData(icon: Icons.sports_soccer, title: "Hobby", value: "Football")
  ],
);
