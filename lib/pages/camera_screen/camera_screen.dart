import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'dart:async';
import 'dart:math';

class CameraScreen extends StatefulWidget {
  final String? title;
  final double? lat;
  final double? lng;
  final bool modoLibre;

  const CameraScreen({
    Key? key,
    this.title,
    this.lat,
    this.lng,
    this.modoLibre = false,
  }) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? controller;
  Position? userPosition;
  String infoText = '';
  StreamSubscription<Position>? positionStream;
  StreamSubscription<CompassEvent>? compassStream;

  double? heading;
  double calcularDistancia(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    return Geolocator.distanceBetween(lat1, lon1, lat2, lon2);
  }

  double calcularDireccion(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    double dLon = (lon2 - lon1) * pi / 180;
    lat1 = lat1 * pi / 180;
    lat2 = lat2 * pi / 180;

    double y = sin(dLon) * cos(lat2);
    double x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon);

    double brng = atan2(y, x);
    brng = brng * 180 / pi;
    return (brng + 360) % 360;
  }

  void verificarUbicacion() {
  if (userPosition == null || heading == null) return;
  if (!mounted) return;

  double lat = userPosition!.latitude;
  double lng = userPosition!.longitude;

  // 🔥 LISTA DE ESTATUAS
  final estatuas = [
    {
      'title': 'Tigre FIME',
      'lat': 25.7245,
      'lng': -100.3130,
      'info': '🐯 Estatua FIME\nFundada en 1947...'
    },
    {
      'title': 'Pegaso FARQ',
      'lat': 25.7264,
      'lng': -100.3122,
      'info': '🐎 Pegaso FARQ\nCreatividad en arquitectura...'
    },
    {
      'title': 'Cocomixtle FCB',
      'lat': 25.7315,
      'lng': -100.3045,
      'info': '🐱 Cocomixtle FCB\nFauna y biodiversidad...'
    },
    {
      'title': 'Serpiente FAMED',
      'lat': 25.7232,
      'lng': -100.3088,
      'info': '🐍 Serpiente FAMED\nSímbolo de la medicina...'
    },
  ];

  // 🔵 MODO ESPECÍFICO (LocationDetails)
  if (!widget.modoLibre) {
    double distancia = calcularDistancia(
      lat,
      lng,
      widget.lat!,
      widget.lng!,
    );

    double direccion = calcularDireccion(
      lat,
      lng,
      widget.lat!,
      widget.lng!,
    );

    double diferencia = (heading! - direccion).abs();
    diferencia = diferencia > 180 ? 360 - diferencia : diferencia;

    bool estaApuntando = diferencia < 20;

    if (distancia < 50 && estaApuntando) {
      infoText = "📍 ${widget.title}\nDato curioso...";
    } else {
      infoText = "";
    }
  }

  // 🟢 MODO LIBRE (Home)
  else {
    String texto = "";

    for (var estatua in estatuas) {
      double distancia = calcularDistancia(
        lat,
        lng,
        estatua['lat'] as double,
        estatua['lng'] as double,
      );

      double direccion = calcularDireccion(
        lat,
        lng,
        estatua['lat'] as double,
        estatua['lng'] as double,
      );

      double diferencia = (heading! - direccion).abs();
      diferencia = diferencia > 180 ? 360 - diferencia : diferencia;

      bool estaApuntando = diferencia < 20;

      if (distancia < 60 && estaApuntando) {
        texto = estatua['info'] as String;
        break;
      }
    }

    infoText = texto;
  }

  setState(() {});
}

  @override
  void initState() {
    super.initState();
    initCamera();

    positionStream = Geolocator.getPositionStream().listen((position) {
      userPosition = position;
      verificarUbicacion();
    });

    compassStream = FlutterCompass.events?.listen((event) {
      heading = event.heading;
      verificarUbicacion();
    });
  }

  @override
  void dispose() {
    positionStream?.cancel();
    compassStream?.cancel();
    controller?.dispose();
    super.dispose();
  }

  Future<void> initCamera() async {
    final cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller!.initialize();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: controller!.value.previewSize!.height,
                height: controller!.value.previewSize!.width,
                child: CameraPreview(controller!),
              ),
            ),
          ),
          
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ),

          // 🌐 NUBE (cuando hay estatua)
          if (infoText.isNotEmpty)
            Positioned(
              top: 100,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  infoText,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

          // 📍 MENSAJE CUANDO NO HAY NADA
          if (infoText.isEmpty)
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: Text(
                "Acércate a una estatua",
                style: TextStyle(color: Colors.white, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
