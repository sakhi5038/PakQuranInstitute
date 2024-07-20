import '../Export/export_file.dart';

class OrientationModeWidget extends StatelessWidget {
  final Orientation orientation;

  OrientationModeWidget({required this.orientation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: orientation == Orientation.portrait
            ? Text('Portrait Mode')
            : Text('Landscape Mode'),
      ),
    );
  }
}
