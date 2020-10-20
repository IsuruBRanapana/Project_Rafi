import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:project_rafi/core/utils/app_colors.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class MarkerData{
  final String name;
  final String latitude;
  final String longitude;

  MarkerData({this.name, this.latitude, this.longitude});
}

class LocationView extends StatefulWidget {
  final List<MarkerData> data;

  const LocationView({this.data});

  @override
  _LocationViewState createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  LatLng _center = const LatLng(7.8102243, 80.7116461);
  GoogleMapController mapController;
  final _controller = TextEditingController();
  LocationData currentLocation;
  List<Marker> markers = [];
  List<Marker> selectedMarkers = [];
  BitmapDescriptor customIcon;
  bool isCardShowing = false;
  bool isLoading = true;
  bool viewList = false;
  final Completer<GoogleMapController> _mapController = Completer();
  String title;
  String address;
  String date;
  String telNo;
  String selectedBranch;
  double latitude;
  double longitude;
  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};
  MarkerId selectedMarker;

  int _markerIdCounter = 1;

  final String appBarTitle = '';
  LatLngBounds boundsForCamera;

  createMarkers() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 0.5), AppImages.marker);
    print('iconCreated');
  }

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
    _mapController.complete(controller);
    await _currentLocation();
    setState(() {
      LatLngBounds bounds = boundsForCamera;
      for (int i = 0; i < widget.data.length; i++) {
        markers.add(Marker(
            draggable: false,
            markerId: MarkerId(widget.data[i].name),
            position: LatLng(double.parse(widget.data[i].latitude),
                double.parse(widget.data[i].longitude)),
            icon: customIcon,
            onTap: () {
              print('marker tapped');
              setState(() {
                viewList = false;
                title = widget.data[i].name;
                latitude = double.parse(widget.data[i].latitude);
                longitude = double.parse(widget.data[i].longitude);
                isCardShowing = true;
              });
            }));
        if (i == widget.data.length - 1) {
          setState(() {
            isLoading = false;
          });
        }
      }
      CameraUpdate u2 = CameraUpdate.newLatLngBounds(bounds, 30);
      this.mapController.animateCamera(u2).then((void v) {
        check(u2, this.mapController);
      });
    });
  }

  void check(CameraUpdate u, GoogleMapController c) async {
    c.animateCamera(u);
    mapController.animateCamera(u);
    LatLngBounds l1 = await c.getVisibleRegion();
    LatLngBounds l2 = await c.getVisibleRegion();
    if (l1.southwest.latitude == -90 || l2.southwest.latitude == -90)
      check(u, c);
  }

  Future<void> _currentLocation() async {
    final GoogleMapController controller = await _mapController.future;
    var location = new Location();
    try {
      currentLocation = await location.getLocation();
      print('lat' + currentLocation.latitude.toString());
      print('long' + currentLocation.longitude.toString());
      setState(() {
        _center = LatLng(currentLocation.latitude, currentLocation.longitude);
        controller.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
            bearing: 0,
            target: LatLng(currentLocation.latitude, currentLocation.longitude),
            zoom: 10,
          ),
        ));
      });
    } on Exception {
      currentLocation = null;
    }
  }

  @override
  void initState() {
    print("initState");
    print(widget.data);
    _currentLocation();
    createMarkers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    _goToTheEpic();

    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Location'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    AppColors.primaryBackgroundColor,
                    AppColors.orangeColor
                  ])),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Opacity(
            opacity: isLoading ? 0.5 : 1,
            child: GoogleMap(
              cameraTargetBounds: CameraTargetBounds(boundsForCamera),
              mapToolbarEnabled: false,
              zoomControlsEnabled: false,
              markers: selectedMarkers.isEmpty
                  ? Set.from(markers)
                  : Set.from(selectedMarkers),
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 12.5,
              ),
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                new Factory<OneSequenceGestureRecognizer>(
                      () => new EagerGestureRecognizer(),
                ),
              ].toSet(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(color: Color(0x1A000000), blurRadius: 10)
                  ]),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    viewList == false ? viewList = true : viewList = false;
                  });
                },
                // child: Column(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     Row(
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: <Widget>[
                //         Expanded(child: _buildSureTextField()),
                //         Padding(
                //           padding: const EdgeInsets.all(10.0),
                //           child: SvgPicture.asset(AppImages.searchIcon),
                //         )
                //       ],
                //     ),
                //     viewList
                //         ? SizedBox(
                //       height: AppConstants.adaptiveScreen.setHeight(300),
                //       child: ListView.builder(
                //         itemCount: searchedList.isEmpty
                //             ? widget.data.length
                //             : searchedList.length,
                //         itemBuilder: (context, index) {
                //           final item = searchedList.isEmpty
                //               ? widget.data[index]
                //               : searchedList[index];
                //           return Padding(
                //             padding: const EdgeInsets.only(left: 20),
                //             child: Center(
                //               child: ListTile(
                //                 title: Text(item.name),
                //                 subtitle: Text(item.address),
                //                 onTap: () async {
                //                   final GoogleMapController controller =
                //                   await _mapController.future;
                //                   setState(() {
                //                     isCardShowing = false;
                //                     selectedMarkers.add(Marker(
                //                         draggable: false,
                //                         markerId: MarkerId(item.name),
                //                         position: LatLng(
                //                             double.parse(item.latitude),
                //                             double.parse(item.longitude)),
                //                         icon: customIcon,
                //                         infoWindow: InfoWindow(
                //                             snippet: item.name,
                //                             title: item.name,
                //                             onTap: () {}),
                //                         onTap: () {
                //                           print('marker tapped');
                //                           setState(() {
                //                             title = item.name;
                //                             address = item.address;
                //                             date = dateContent(
                //                                 item.openingHoursMonFri);
                //                             telNo = item.contactNo;
                //                             latitude = double.parse(
                //                                 item.latitude);
                //                             longitude = double.parse(
                //                                 item.longitude);
                //                             isCardShowing = true;
                //                           });
                //                         }));
                //                     controller.animateCamera(
                //                         CameraUpdate.newCameraPosition(
                //                           CameraPosition(
                //                             bearing: 0,
                //                             target: LatLng(
                //                                 double.parse(item.latitude),
                //                                 double.parse(item.longitude)),
                //                             zoom: 10,
                //                           ),
                //                         ));
                //                     selectedBranch = item.name;
                //                     _controller.text = selectedBranch;
                //                     viewList = false;
                //                   });
                //                 },
                //               ),
                //             ),
                //           );
                //         },
                //       ),
                //     )
                //         : SizedBox(
                //       height: 0,
                //     ),
                //   ],
                // ),
              ),
            ),
          ),
          isLoading ? Center(child: CircularProgressIndicator()) : Container(),
          // isCardShowing
          //     ? showCard(
          //     title: title,
          //     address: address,
          //     date: date,
          //     latitude: latitude,
          //     longitude: longitude)
          //     : Container(),
        ],
      ),
    );
  }

  // Widget _buildSureTextField() {
  //   String message = '';
  //   return LayoutBuilder(builder: (context, size) {
  //     TextSpan text = new TextSpan(
  //       text: _controller.text,
  //     );
  //     TextPainter tp = new TextPainter(
  //       text: text,
  //       textDirection: TextDirection.ltr,
  //       textAlign: TextAlign.left,
  //     );
  //     tp.layout(maxWidth: size.maxWidth);
  //
  //     int lines = (tp.size.height / tp.preferredLineHeight).ceil();
  //     int maxLines = 1;
  //
  //     return Scrollbar(
  //       // child: TextField(
  //       //   scrollPhysics: BouncingScrollPhysics(),
  //       //   controller: _controller,
  //       //   maxLines: lines < maxLines ? null : maxLines,
  //       //   decoration: kSearchTextFieldDecoration,
  //       //   onChanged: (value) {
  //       //     message = value;
  //       //     print(message);
  //       //     setState(() {
  //       //       isCardShowing = false;
  //       //       viewList = true;
  //       //       selectedMarkers.clear();
  //       //       if (message.length >= 2) {
  //       //         searchFromList(message);
  //       //       } else {
  //       //         searchedList.clear();
  //       //       }
  //       //       selectedBranch = null;
  //       //     });
  //       //   },
  //       //   style: TextStyle(
  //       //       color: Color(0xffB2454545), fontWeight: FontWeight.w300),
  //       // ),
  //     );
  //   });
  // }

//  Future<void> _goToTheEpic() async {
//    final GoogleMapController controller = await _mapController.future;
//    controller.animateCamera(CameraUpdate.newCameraPosition(
//        CameraPosition(target: LatLng(6.904988, 79.928124), zoom: 15.0)));
//
////    var image = await _getAssetIcon(context);
//    final markerIcon = await getBytesFromCanvas(1.5, AppImages.defaultMarker);
//    var image = BitmapDescriptor.fromBytes(markerIcon);
//
//    Marker _marker1 = new Marker(
//      icon: image,
//      markerId: MarkerId('1'),
//      position: LatLng(6.904988, 79.928130),
//      infoWindow: InfoWindow(title: "Epic Sure", snippet: 'Loc 1'),
//    );
//
//    Marker _marker2 = new Marker(
//      icon: image,
//      markerId: MarkerId('2'),
//      position: LatLng(6.901972, 79.922007),
//      infoWindow: InfoWindow(title: "Epic Sure", snippet: 'Loc 2'),
//    );
//
//    Marker _marker3 = new Marker(
//      icon: image,
//      markerId: MarkerId('3'),
//      position: LatLng(6.913392, 79.931953),
//      infoWindow: InfoWindow(title: "Epic Sure", snippet: 'Loc 3'),
//    );
//
//    markers.add(_marker1);
//    markers.add(_marker2);
//    markers.add(_marker3);
//  }

//  Future<BitmapDescriptor> _getAssetIcon(BuildContext context) async {
//    final Completer<BitmapDescriptor> bitmapIcon =
//        Completer<BitmapDescriptor>();
//    final ImageConfiguration config = createLocalImageConfiguration(context);
//
//    AssetImage(AppImages.defaultMarker)
//        .resolve(config)
//        .addListener(ImageStreamListener((ImageInfo image, bool sync) async {
//      final ByteData bytes =
//          await image.image.toByteData(format: ImageByteFormat.png);
//      final BitmapDescriptor bitmap =
//          BitmapDescriptor.fromBytes(bytes.buffer.asUint8List());
//      bitmapIcon.complete(bitmap);
//    }));
//
//    return await bitmapIcon.future;
//  }

//  Future<Uint8List> getBytesFromCanvas(double escala, urlAsset) async {
//    final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
//    final Canvas canvas = Canvas(pictureRecorder);
//
//    final ByteData dataI = await rootBundle.load(urlAsset);
//    var imaged = await loadImage(new Uint8List.view(dataI.buffer));
//
//    double width = ((imaged.width.toDouble() * escala).toInt()).toDouble();
//    double height = ((imaged.height.toDouble() * escala).toInt()).toDouble();
//
//    final Paint paint = Paint()..color = Colors.blue;
//    final Radius radius = Radius.circular(20.0);
//    canvas.drawRRect(
//        RRect.fromRectAndCorners(
//          Rect.fromLTWH(0.0, 0.0, 200, 100),
//          topLeft: radius,
//          topRight: radius,
//          bottomLeft: radius,
//          bottomRight: radius,
//        ),
//        paint);
//
//    TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
//    painter.text = TextSpan(
//      text: 'Hello world',
//      style: TextStyle(fontSize: 25.0, color: Colors.white),
//    );
//    painter.layout();
//    painter.paint(
//        canvas,
//        Offset((width * 0.5) - painter.width * 0.5,
//            (height * 0.5) - painter.height * 0.5));
//
//    canvas.drawImageRect(
//      imaged,
//      Rect.fromLTRB(
//          0.0, 0.0, imaged.width.toDouble(), imaged.height.toDouble()),
//      Rect.fromLTRB(0.0, 0.0, width, height),
//      new Paint(),
//    );
//
////    TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
////    painter.text = TextSpan(
////      text: 'Hello world',
////      style: TextStyle(fontSize: 25.0, color: Colors.amber),
////    );
////    painter.layout();
////    painter.paint(canvas, Offset((width * 0.5) - painter.width * 0.5, (height * 0.5) - painter.height * 0.5));
//
//    final img = await pictureRecorder
//        .endRecording()
//        .toImage(width.toInt(), height.toInt());
//    final data = await img.toByteData(format: ui.ImageByteFormat.png);
//    return data.buffer.asUint8List();
//  }

//  Future<ui.Image> loadImage(List<int> img) async {
//    final Completer<ui.Image> completer = new Completer();
//    ui.decodeImageFromList(img, (ui.Image img) {
//      return completer.complete(img);
//    });
//    return completer.future;
//  }

//  void _onMarkerTapped(MarkerId markerId) {
//    final Marker tappedMarker = _markers[markerId];
//    if (tappedMarker != null) {
//      setState(() {
//        if (_markers.containsKey(selectedMarker)) {
//          final Marker resetOld = _markers[selectedMarker]
//              .copyWith(iconParam: BitmapDescriptor.defaultMarker);
//          _markers[selectedMarker] = resetOld;
//        }
//        selectedMarker = markerId;
//        final Marker newMarker = tappedMarker.copyWith(
//          iconParam: BitmapDescriptor.defaultMarkerWithHue(
//            BitmapDescriptor.hueGreen,
//          ),
//        );
//        _markers[markerId] = newMarker;
//      });
//    }
//  }

  // Widget showCard(
  //     {String title,
  //       String address,
  //       String date,
  //       double latitude,
  //       double longitude}) {
  //   return Align(
  //     alignment: Alignment.bottomCenter,
  //     child: LocationMarkerCard(
  //       title: title,
  //       address: address,
  //       dateTime: date,
  //       telNo: telNo,
  //       latitude: latitude,
  //       longitude: longitude,
  //       adaptiveScreen: AppConstants.adaptiveScreen,
  //       closeFunction: () {
  //         setState(() {
  //           isCardShowing = false;
  //         });
  //       }, //adaptiveScreen
  //     ),
  //   );
  // }

  String dateContent(String openingHoursMonFri) {
    if (openingHoursMonFri == null) {
      return "Not added";
    } else {
      return openingHoursMonFri;
    }
  }

  // void searchFromList(String message) {
  //   searchedList.clear();
  //   widget.data.forEach((data) {
  //     if (data.name.contains(message)) searchedList.add(data);
  //     setState(() {});
  //   });
  //   print(message);
  // }
}
