import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:project_rafi/core/utils/app_images.dart';

class ImageSlider extends StatelessWidget {
  List images = [
    AppImages.swipper1,
    AppImages.swipper2,
    AppImages.swipper3,
    AppImages.swipper4,
  ];
  @override
  Widget build(BuildContext context) {
    return new Column(
          children: <Widget>[
            // new Expanded(
            //   child: Swiper(
            //     itemBuilder: (BuildContext context, int index) {
            //       return new Image.asset(
            //         images[index],
            //         fit: BoxFit.fill,
            //       );
            //     },
            //     autoplay: true,
            //     itemCount: images.length,
            //     pagination: new SwiperPagination(
            //         margin: new EdgeInsets.all(0.0),
            //         builder: new SwiperCustomPagination(builder:
            //             (BuildContext context, SwiperPluginConfig config) {
            //           return new ConstrainedBox(
            //             // child: new Container(
            //             //     color: Colors.white,
            //             //     child: new Text(
            //             //       "hello",
            //             //       // "${titles[config.activeIndex]} ${config.activeIndex + 1}/${config.itemCount}",
            //             //       style: new TextStyle(fontSize: 20.0),
            //             //     )),
            //             constraints: new BoxConstraints.expand(height: 50.0),
            //           );
            //         })),
            //     control: new SwiperControl(),
            //   ),
            // ),
            new Expanded(
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                autoplay: true,
                itemCount: images.length,
                pagination: new SwiperPagination(
                    margin: new EdgeInsets.all(0.0),
                    builder: new SwiperCustomPagination(builder:
                        (BuildContext context, SwiperPluginConfig config) {
                      return new ConstrainedBox(
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                              child: new Align(
                                alignment: Alignment.centerRight,
                                child: new DotSwiperPaginationBuilder(
                                    color: Colors.black12,
                                    activeColor: Colors.black,
                                    size: 10.0,
                                    activeSize: 20.0)
                                    .build(context, config),
                              ),
                            )
                          ],
                        ),
                        constraints: new BoxConstraints.expand(height: 50.0),
                      );
                    })),
                control: new SwiperControl(color: Colors.redAccent),
              ),
            )
          ],
        );
  }
}
