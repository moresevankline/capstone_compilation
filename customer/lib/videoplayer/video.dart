import 'package:pod_player/pod_player.dart';
import 'package:flutter/material.dart';

class CoffeeBeerCafeVideo extends StatefulWidget {
  const CoffeeBeerCafeVideo({super.key});

  @override
  State<CoffeeBeerCafeVideo> createState() => _CoffeeBeerCafeVideoState();
}

class _CoffeeBeerCafeVideoState extends State<CoffeeBeerCafeVideo> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      podPlayerConfig: const PodPlayerConfig(
        autoPlay: false,
      ),
      playVideoFrom: PlayVideoFrom.asset(
        'assets/videos/coffee_beer_cafe_preview.mp4',
      ),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onKeyEvent: (node, event) => KeyEventResult.handled,
      child: PodVideoPlayer(
        controller: controller,
      ),
    );
  }
}
