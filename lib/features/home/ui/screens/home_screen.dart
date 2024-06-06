import 'package:flutter/material.dart';
import 'package:lucadev_porforlio/features/home/ui/page/aboutme_page.dart';
import 'package:lucadev_porforlio/features/home/ui/page/contact_page.dart';
import 'package:lucadev_porforlio/features/home/ui/page/hello_page.dart';
import 'package:lucadev_porforlio/features/home/ui/page/other_projects_page.dart';
import 'package:lucadev_porforlio/features/home/ui/page/work_project_page.dart';
import 'package:lucadev_porforlio/features/home/ui/widgets/appbar_widget.dart';

class HomeScreen extends StatefulWidget {
  static const name = "/home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  double _widthFactor = 0.4;
  final double targetOffset =
      550.0; // Position where the container should start to scale
  final double scaleFactor = 1; // Maximum scale factor

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    setState(() {
      if (_scrollController.offset > targetOffset) {
        double offsetRatio =
            (_scrollController.offset - targetOffset) / targetOffset;
        _widthFactor = 0.7 * offsetRatio;

        if (_widthFactor > 1.0) {
          _widthFactor = 1.0;
        }
      } else {
        _widthFactor = 0.4;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  const HelloPage(),
                  const AboutmePage(),
                  WorkProjectsPage(widthFactor: _widthFactor),
                  const OthersProyectjsPage(),
                  const ContactPage(),
                ],
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, -1),
              child: AppbarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
