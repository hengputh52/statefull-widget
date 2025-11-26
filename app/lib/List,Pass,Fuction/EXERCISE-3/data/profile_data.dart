import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData ronanProfile = ProfileData(
  name: "Ronan",
  position: "Flutter Developer",
  avatarUrl: 'assets/w4-s2/whistle.jpg',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.hiking, title: "Hobby", value: "Hiking"),
    TileData(icon: Icons.sports_soccer, title: "Sport", value: "Soccer"),
    TileData(icon: Icons.mood, title: "Mood", value: "Crash Out"),
    TileData(icon: Icons.movie, title: "Favourite Movie", value: "365 days"),
    //TileData(icon: Icons.email, title: "Mail", value: "ronan.ogogr@cadt.edu"),
  ],
);
