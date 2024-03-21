// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_vlc_player/flutter_vlc_player.dart';

class CustomM3u8Player extends StatefulWidget {
  const CustomM3u8Player({
    super.key,
    this.width,
    this.height,
    required this.streamUrl, // Add a parameter for the stream URL
  });

  final double? width;
  final double? height;
  final String streamUrl; // This will hold the M3U8 URL

  @override
  State<CustomM3u8Player> createState() => _CustomM3u8PlayerState();
}

class _CustomM3u8PlayerState extends State<CustomM3u8Player> {
  late VlcPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VlcPlayerController.network(
      widget.streamUrl,
      autoPlay: true,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width,
      height: widget.height ?? MediaQuery.of(context).size.height * 0.3,
      child: VlcPlayer(
        controller: _controller,
        aspectRatio: 16 / 9,
        placeholder: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
