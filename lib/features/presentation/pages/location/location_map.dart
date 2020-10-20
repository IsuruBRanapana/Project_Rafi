//import 'dart:async';
//import 'dart:ui';
//
//import 'package:flutter/foundation.dart';
//import 'package:flutter/gestures.dart';
//import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:location/location.dart';
//import 'package:project_rafi/core/utils/app_colors.dart';
//import 'package:project_rafi/core/utils/app_costants.dart';
//import 'package:project_rafi/core/utils/app_images.dart';
//
//class MarkerData{
//  final String name;
//  final String latitude;
//  final String longitude;
//
//  MarkerData({this.name, this.latitude, this.longitude});
//}
//
//
//class LocationView extends StatefulWidget {
//  final List data=[
//    MarkerData(name: "a",latitude: "7.8102243",longitude: "80.7116461")
//  ];
//  //final String appbarTitle;
//
//  //const LocationView({this.data, this.appbarTitle});
//
//  @override
//  _LocationViewState createState() => _LocationViewState();
//}
//
//class _LocationViewState extends State<LocationView> {
//  LatLng _center = const LatLng(7.8102243, 80.7116461);
//  GoogleMapController mapController;
//  final _controller = TextEditingController();
//  LocationData currentLocation;
//  List<Marker> markers = [];
//  List<Marker> selectedMarkers = [];
//  BitmapDescriptor customIcon;
//  bool isCardShowing = false;
//  bool isLoading = true;
//  bool viewList = false;
//  final Completer<GoogleMapController> _mapController = Completer();
//  String title;
//  String address;
//  String date;
//  String telNo;
//  String selectedBranch;
//  double latitude;
//  double longitude;
//  Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};
//  MarkerId selectedMarker;
//  List<MarkerData> searchedList = [];
//
//  int _markerIdCounter = 1;
//
//  final String appBarTitle = '';
//  LatLngBounds boundsForCamera;
//
//  createMarkers() async {
//    customIcon = await BitmapDescriptor.fromAssetImage(
//        ImageConfiguration(devicePixelRatio: 0.5), AppImages.marker);
//    print('iconCreated');
//  }
//
//  void _onMapCreated(GoogleMapController controller) async {
//    mapController = controller;
//    _mapController.complete(controller);
//    await _currentLocation();
//    setState(() {
//      LatLngBounds bounds = boundsForCamera;
//      for (int i = 0; i < widget.data.length; i++) {
//        markers.add(Marker(
//            draggable: false,
//            markerId: MarkerId(widget.data[i].name),
//            position: LatLng(double.parse(widget.data[i].latitude),
//                double.parse(widget.data[i].longitude)),
//            icon: customIcon,
//            infoWindow: InfoWindow(
//                snippet: widget.data[i].name,
//                title: widget.data[i].name,
//                onTap: () {}),
//            onTap: () {
//              print('marker tapped');
//              setState(() {
//                viewList = false;
//                title = widget.data[i].name;
//                address = widget.data[i].address;
//                date = dateContent(widget.data[i].openingHoursMonFri);
//                telNo = widget.data[i].contactNo;
//                latitude = double.parse(widget.data[i].latitude);
//                longitude = double.parse(widget.data[i].longitude);
//                isCardShowing = true;
//              });
//            }));
//        if (i == widget.data.length - 1) {
//          setState(() {
//            isLoading = false;
//          });
//        }
//      }
//      CameraUpdate u2 = CameraUpdate.newLatLngBounds(bounds, 30);
//      this.mapController.animateCamera(u2).then((void v) {
//        check(u2, this.mapController);
//      });
//    });
//  }
//
//  void check(CameraUpdate u, GoogleMapController c) async {
//    c.animateCamera(u);
//    mapController.animateCamera(u);
//    LatLngBounds l1 = await c.getVisibleRegion();
//    LatLngBounds l2 = await c.getVisibleRegion();
//    if (l1.southwest.latitude == -90 || l2.southwest.latitude == -90)
//      check(u, c);
//  }
//
//  Future<void> _currentLocation() async {
//    final GoogleMapController controller = await _mapController.future;
//    var location = new Location();
//    try {
//      currentLocation = await location.getLocation();
//      print('lat' + currentLocation.latitude.toString());
//      print('long' + currentLocation.longitude.toString());
//      setState(() {
//        _center = LatLng(currentLocation.latitude, currentLocation.longitude);
//        controller.animateCamera(CameraUpdate.newCameraPosition(
//          CameraPosition(
//            bearing: 0,
//            target: LatLng(currentLocation.latitude, currentLocation.longitude),
//            zoom: 10,
//          ),
//        ));
//      });
//    } on Exception {
//      currentLocation = null;
//    }
//  }
//
//  @override
//  void initState() {
//    print("initState");
//    print(widget.data);
//    _currentLocation();
//    createMarkers();
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
////    _goToTheEpic();
//
//    return Scaffold(
////      appBar: EpicSureAppbar(
////        title: Text(widget.appbarTitle),
////        centerTitle: true,
////        gradient: kAppBarGradient,
////        leading: new IconButton(
////          icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
////          onPressed: () => Navigator.of(context).pop(),
////        ),
////      ),
//      body: Stack(
//        children: <Widget>[
//          Opacity(
//            opacity: isLoading ? 0.5 : 1,
//            child: GoogleMap(
//              cameraTargetBounds: CameraTargetBounds(boundsForCamera),
//              mapToolbarEnabled: false,
//              zoomControlsEnabled: false,
//              markers: selectedMarkers.isEmpty
//                  ? Set.from(markers)
//                  : Set.from(selectedMarkers),
//              onMapCreated: _onMapCreated,
//              myLocationEnabled: true,
//              myLocationButtonEnabled: false,
//              initialCameraPosition: CameraPosition(
//                target: _center,
//                zoom: 12.5,
//              ),
//              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
//                new Factory<OneSequenceGestureRecognizer>(
//                      () => new EagerGestureRecognizer(),
//                ),
//              ].toSet(),
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(15),
//            child: Container(
//              decoration: BoxDecoration(
//                  color: Colors.white,
//                  borderRadius: BorderRadius.circular(30),
//                  boxShadow: [
//                    BoxShadow(color: Color(0x1A000000), blurRadius: 10)
//                  ]),
//              child: GestureDetector(
//                onTap: () {
//                  setState(() {
//                    viewList == false ? viewList = true : viewList = false;
//                  });
//                },
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: [
//                    Row(
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: <Widget>[
//                        //Expanded(child: _buildSureTextField()),
//                        Padding(
//                          padding: const EdgeInsets.all(10.0),
//                          //child: SvgPicture.asset(AppImages.searchIcon),
//                        )
//                      ],
//                    ),
//                    viewList
//                        ? SizedBox(
//                      height: AppConstants.adaptiveScreen.setHeight(300),
//                      child: ListView.builder(
//                        itemCount: searchedList.isEmpty
//                            ? widget.data.length
//                            : searchedList.length,
//                        itemBuilder: (context, index) {
//                          final item = searchedList.isEmpty
//                              ? widget.data[index]
//                              : searchedList[index];
//                          return Padding(
//                            padding: const EdgeInsets.only(left: 20),
//                            child: Center(
//                              child: ListTile(
//                                title: Text(item.name),
//                                subtitle: Text(item.address),
//                                onTap: () async {
//                                  final GoogleMapController controller =
//                                  await _mapController.future;
//                                  setState(() {
//                                    isCardShowing = false;
//                                    selectedMarkers.add(Marker(
//                                        draggable: false,
//                                        markerId: MarkerId(item.name),
//                                        position: LatLng(
//                                            double.parse(item.latitude),
//                                            double.parse(item.longitude)),
//                                        icon: customIcon,
//                                        infoWindow: InfoWindow(
//                                            snippet: item.name,
//                                            title: item.name,
//                                            onTap: () {}),
//                                        onTap: () {
//                                          print('marker tapped');
//                                          setState(() {
//                                            title = item.name;
//                                            address = item.address;
//                                            date = dateContent(
//                                                item.openingHoursMonFri);
//                                            telNo = item.contactNo;
//                                            latitude = double.parse(
//                                                item.latitude);
//                                            longitude = double.parse(
//                                                item.longitude);
//                                            isCardShowing = true;
//                                          });
//                                        }));
//                                    controller.animateCamera(
//                                        CameraUpdate.newCameraPosition(
//                                          CameraPosition(
//                                            bearing: 0,
//                                            target: LatLng(
//                                                double.parse(item.latitude),
//                                                double.parse(item.longitude)),
//                                            zoom: 10,
//                                          ),
//                                        ));
//                                    selectedBranch = item.name;
//                                    _controller.text = selectedBranch;
//                                    viewList = false;
//                                  });
//                                },
//                              ),
//                            ),
//                          );
//                        },
//                      ),
//                    )
//                        : SizedBox(
//                      height: 0,
//                    ),
//                  ],
//                ),
//              ),
//            ),
//          ),
//          isLoading ? Center(child: CircularProgressIndicator()) : Container(),
////          isCardShowing
////              ? showCard(
////              title: title,
////              address: address,
////              date: date,
////              latitude: latitude,
////              longitude: longitude)
////              : Container(),
//        ],
//      ),
//    );
//  }
//
////  Widget _buildSureTextField() {
////    String message = '';
////    return LayoutBuilder(builder: (context, size) {
////      TextSpan text = new TextSpan(
////        text: _controller.text,
////      );
////      TextPainter tp = new TextPainter(
////        text: text,
////        textDirection: TextDirection.ltr,
////        textAlign: TextAlign.left,
////      );
////      tp.layout(maxWidth: size.maxWidth);
////
////      int lines = (tp.size.height / tp.preferredLineHeight).ceil();
////      int maxLines = 1;
////
////      return Scrollbar(
////        child: TextField(
////          scrollPhysics: BouncingScrollPhysics(),
////          controller: _controller,
////          maxLines: lines < maxLines ? null : maxLines,
////          decoration: kSearchTextFieldDecoration,
////          onChanged: (value) {
////            message = value;
////            print(message);
////            setState(() {
////              isCardShowing = false;
////              viewList = true;
////              selectedMarkers.clear();
////              if (message.length >= 2) {
////                searchFromList(message);
////              } else {
////                searchedList.clear();
////              }
////              selectedBranch = null;
////            });
////          },
////          style: TextStyle(
////              color: Color(0xffB2454545), fontWeight: FontWeight.w300),
////        ),
////      );
////    });
////  }
////  Widget showCard(
////      {String title,
////        String address,
////        String date,
////        double latitude,
////        double longitude}) {
////    return Align(
////      alignment: Alignment.bottomCenter,
////      child: LocationMarkerCard(
////        title: title,
////        address: address,
////        dateTime: date,
////        telNo: telNo,
////        latitude: latitude,
////        longitude: longitude,
////        adaptiveScreen: AppConstants.adaptiveScreen,
////        closeFunction: () {
////          setState(() {
////            isCardShowing = false;
////          });
////        }, //adaptiveScreen
////      ),
////    );
////  }
//
//  String dateContent(String openingHoursMonFri) {
//    if (openingHoursMonFri == null) {
//      return "Not added";
//    } else {
//      return openingHoursMonFri;
//    }
//  }
//
//  void searchFromList(String message) {
//    searchedList.clear();
//    widget.data.forEach((data) {
//      if (data.name.contains(message)) searchedList.add(data);
//      setState(() {});
//    });
//    print(message);
//  }
//}
//
